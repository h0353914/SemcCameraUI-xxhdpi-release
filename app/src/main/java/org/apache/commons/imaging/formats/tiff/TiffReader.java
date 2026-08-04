package org.apache.commons.imaging.formats.tiff;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.commons.imaging.FormatCompliance;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.ImagingConstants;
import org.apache.commons.imaging.common.BinaryFileParser;
import org.apache.commons.imaging.common.BinaryFunctions;
import org.apache.commons.imaging.common.ByteConversions;
import org.apache.commons.imaging.common.bytesource.ByteSource;
import org.apache.commons.imaging.common.bytesource.ByteSourceFile;
import org.apache.commons.imaging.formats.tiff.constants.ExifTagConstants;
import org.apache.commons.imaging.formats.tiff.constants.TiffTagConstants;
import org.apache.commons.imaging.formats.tiff.fieldtypes.FieldType;
import org.apache.commons.imaging.formats.tiff.taginfos.TagInfoLong;
import org.apache.commons.imaging.util.IoUtils;

public class TiffReader extends BinaryFileParser {
    private final boolean strict;

    public interface Listener {
        boolean addDirectory(TiffDirectory tiffDirectory);

        boolean addField(TiffField tiffField);

        boolean readImageData();

        boolean readOffsetDirectories();

        boolean setTiffHeader(TiffHeader tiffHeader);
    }

    public TiffReader(boolean z) {
        this.strict = z;
    }

    private TiffHeader readTiffHeader(ByteSource byteSource) throws IOException, ImageReadException {
        InputStream is = null;
        try {
            is = byteSource.getInputStream();
            TiffHeader result = readTiffHeader(is);
            IoUtils.closeQuietly(true, is);
            return result;
        } catch (IOException e) {
            IoUtils.closeQuietly(false, is);
            throw e;
        }
    }

    private ByteOrder getTiffByteOrder(int i) throws ImageReadException {
        if (i == 73) {
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (i == 77) {
            return ByteOrder.BIG_ENDIAN;
        }
        throw new ImageReadException("Invalid TIFF byte order " + (i & 255));
    }

    private TiffHeader readTiffHeader(InputStream inputStream) throws IOException, ImageReadException {
        byte b = BinaryFunctions.readByte("BYTE_ORDER_1", inputStream, "Not a Valid TIFF File");
        byte b2 = BinaryFunctions.readByte("BYTE_ORDER_2", inputStream, "Not a Valid TIFF File");
        if (b != b2) {
            throw new ImageReadException("Byte Order bytes don't match (" + ((int) b) + ", " + ((int) b2) + ").");
        }
        ByteOrder tiffByteOrder = getTiffByteOrder(b);
        setByteOrder(tiffByteOrder);
        int i = BinaryFunctions.read2Bytes("tiffVersion", inputStream, "Not a Valid TIFF File", getByteOrder());
        if (i != 42) {
            throw new ImageReadException("Unknown Tiff Version: " + i);
        }
        long j = 4294967295L
                & BinaryFunctions.read4Bytes("offsetToFirstIFD", inputStream, "Not a Valid TIFF File", getByteOrder());
        BinaryFunctions.skipBytes(inputStream, j - 8, "Not a Valid TIFF File: couldn't find IFDs");
        return new TiffHeader(tiffByteOrder, i, j);
    }

    private void readDirectories(ByteSource byteSource, FormatCompliance formatCompliance, Listener listener)
            throws IOException, ImageReadException {
        TiffHeader tiffHeader = readTiffHeader(byteSource);
        if (listener.setTiffHeader(tiffHeader)) {
            readDirectory(byteSource, tiffHeader.offsetToFirstIFD, 0, formatCompliance, listener,
                    new ArrayList<Number>());
        }
    }

    private boolean readDirectory(ByteSource byteSource, long directoryOffset, int directoryType,
            FormatCompliance formatCompliance, Listener listener, List<Number> visitedOffsets)
            throws IOException, ImageReadException {
        return readDirectory(byteSource, directoryOffset, directoryType, formatCompliance, listener, false,
                visitedOffsets);
    }

    private boolean readDirectory(ByteSource byteSource, long directoryOffset, int directoryType,
            FormatCompliance formatCompliance, Listener listener, boolean isSubDirectory,
            List<Number> visitedOffsets) throws IOException, ImageReadException {
        if (visitedOffsets.contains(directoryOffset)) {
            return false;
        }
        visitedOffsets.add(directoryOffset);

        if (directoryOffset >= byteSource.getLength()) {
            return true;
        }

        try (InputStream is = byteSource.getInputStream()) {
            BinaryFunctions.skipBytes(is, directoryOffset);

            int entriesCount;
            try {
                entriesCount = BinaryFunctions.read2Bytes("DirectoryEntryCount", is, "Not a Valid TIFF File",
                        getByteOrder());
            } catch (IOException e) {
                if (strict)
                    throw e;
                return true;
            }

            List<TiffField> fields = new ArrayList<>();
            for (int i = 0; i < entriesCount; i++) {
                int tag = BinaryFunctions.read2Bytes("Tag", is, "Not a Valid TIFF File", getByteOrder());
                int type = BinaryFunctions.read2Bytes("Type", is, "Not a Valid TIFF File", getByteOrder());
                long count = 0xFFFFFFFFL
                        & BinaryFunctions.read4Bytes("Count", is, "Not a Valid TIFF File", getByteOrder());
                byte[] offsetBytes = BinaryFunctions.readBytes("Offset", is, 4, "Not a Valid TIFF File");
                long offset = 0xFFFFFFFFL & ByteConversions.toInt(offsetBytes, getByteOrder());

                if (tag == 0) {
                    continue;
                }

                try {
                    FieldType fieldType = FieldType.getFieldType(type);
                    long byteCount = count * fieldType.getSize();
                    byte[] value;
                    if (byteCount > 4) {
                        if (offset < 0 || offset + byteCount > byteSource.getLength()) {
                            if (strict) {
                                throw new IOException("Attempt to read byte range outside of file.");
                            }
                            continue;
                        }
                        value = byteSource.getBlock(offset, (int) byteCount);
                    } else {
                        value = offsetBytes;
                    }

                    TiffField field = new TiffField(tag, directoryType, fieldType, count, offset, value, getByteOrder(),
                            i);
                    fields.add(field);
                    if (!listener.addField(field)) {
                        return true;
                    }
                } catch (ImageReadException e) {
                    if (strict)
                        throw e;
                }
            }

            long nextDirectoryOffset = 0xFFFFFFFFL
                    & BinaryFunctions.read4Bytes("nextDirectoryOffset", is, "Not a Valid TIFF File", getByteOrder());
            TiffDirectory directory = new TiffDirectory(directoryType, fields, directoryOffset, nextDirectoryOffset);

            if (listener.readImageData()) {
                if (directory.hasTiffImageData()) {
                    directory.setTiffImageData(getTiffRawImageData(byteSource, directory));
                }
                if (directory.hasJpegImageData()) {
                    directory.setJpegImageData(getJpegRawImageData(byteSource, directory));
                }
            }

            if (!listener.addDirectory(directory)) {
                return true;
            }

            if (listener.readOffsetDirectories()) {
                TagInfoLong[] offsetTags = {
                        ExifTagConstants.EXIF_TAG_EXIF_OFFSET,
                        ExifTagConstants.EXIF_TAG_GPSINFO,
                        ExifTagConstants.EXIF_TAG_INTEROP_OFFSET
                };
                int[] subDirectoryTypes = { -2, -3, -4 };
                for (int i = 0; i < offsetTags.length; i++) {
                    TiffField field = directory.findField(offsetTags[i]);
                    if (field != null) {
                        try {
                            long subOffset = directory.getSingleFieldValue(offsetTags[i]);
                            readDirectory(byteSource, subOffset, subDirectoryTypes[i], formatCompliance, listener, true,
                                    visitedOffsets);
                        } catch (ImageReadException e) {
                            if (strict)
                                throw e;
                        }
                    }
                }
            }

            if (!isSubDirectory && nextDirectoryOffset > 0) {
                readDirectory(byteSource, nextDirectoryOffset, directoryType + 1, formatCompliance, listener,
                        visitedOffsets);
            }
        }
        return true;
    }

    private static class Collector implements Listener {
        private final List<TiffDirectory> directories;
        private final List<TiffField> fields;
        private final boolean readThumbnails;
        private TiffHeader tiffHeader;

        @Override // org.apache.commons.imaging.formats.tiff.TiffReader.Listener
        public boolean readOffsetDirectories() {
            return true;
        }

        public Collector() {
            this(null);
        }

        public Collector(Map<String, Object> map) {
            this.directories = new ArrayList();
            this.fields = new ArrayList();
            this.readThumbnails = (map == null || !map.containsKey(ImagingConstants.PARAM_KEY_READ_THUMBNAILS)) ? true
                    : Boolean.TRUE.equals(map.get(ImagingConstants.PARAM_KEY_READ_THUMBNAILS));
        }

        @Override // org.apache.commons.imaging.formats.tiff.TiffReader.Listener
        public boolean setTiffHeader(TiffHeader tiffHeader) {
            this.tiffHeader = tiffHeader;
            return true;
        }

        @Override // org.apache.commons.imaging.formats.tiff.TiffReader.Listener
        public boolean addDirectory(TiffDirectory tiffDirectory) {
            this.directories.add(tiffDirectory);
            return true;
        }

        @Override // org.apache.commons.imaging.formats.tiff.TiffReader.Listener
        public boolean addField(TiffField tiffField) {
            this.fields.add(tiffField);
            return true;
        }

        @Override // org.apache.commons.imaging.formats.tiff.TiffReader.Listener
        public boolean readImageData() {
            return this.readThumbnails;
        }

        public TiffContents getContents() {
            return new TiffContents(this.tiffHeader, this.directories);
        }
    }

    private static class FirstDirectoryCollector extends Collector {
        private final boolean readImageData;

        public FirstDirectoryCollector(boolean z) {
            this.readImageData = z;
        }

        @Override // org.apache.commons.imaging.formats.tiff.TiffReader.Collector,
                  // org.apache.commons.imaging.formats.tiff.TiffReader.Listener
        public boolean addDirectory(TiffDirectory tiffDirectory) {
            super.addDirectory(tiffDirectory);
            return false;
        }

        @Override // org.apache.commons.imaging.formats.tiff.TiffReader.Collector,
                  // org.apache.commons.imaging.formats.tiff.TiffReader.Listener
        public boolean readImageData() {
            return this.readImageData;
        }
    }

    public TiffContents readFirstDirectory(ByteSource byteSource, Map<String, Object> map, boolean z,
            FormatCompliance formatCompliance) throws IOException, ImageReadException {
        FirstDirectoryCollector firstDirectoryCollector = new FirstDirectoryCollector(z);
        read(byteSource, map, formatCompliance, firstDirectoryCollector);
        TiffContents contents = firstDirectoryCollector.getContents();
        if (contents.directories.size() < 1) {
            throw new ImageReadException("Image did not contain any directories.");
        }
        return contents;
    }

    public TiffContents readDirectories(ByteSource byteSource, boolean z, FormatCompliance formatCompliance)
            throws IOException, ImageReadException {
        Collector collector = new Collector(null);
        readDirectories(byteSource, formatCompliance, collector);
        TiffContents contents = collector.getContents();
        if (contents.directories.size() < 1) {
            throw new ImageReadException("Image did not contain any directories.");
        }
        return contents;
    }

    public TiffContents readContents(ByteSource byteSource, Map<String, Object> map, FormatCompliance formatCompliance)
            throws IOException, ImageReadException {
        Collector collector = new Collector(map);
        read(byteSource, map, formatCompliance, collector);
        return collector.getContents();
    }

    public void read(ByteSource byteSource, Map<String, Object> map, FormatCompliance formatCompliance,
            Listener listener) throws IOException, ImageReadException {
        readDirectories(byteSource, formatCompliance, listener);
    }

    private TiffImageData getTiffRawImageData(ByteSource byteSource, TiffDirectory tiffDirectory)
            throws IOException, ImageReadException {
        List<TiffDirectory.ImageDataElement> tiffRawImageDataElements = tiffDirectory.getTiffRawImageDataElements();
        TiffImageData.Data[] dataArr = new TiffImageData.Data[tiffRawImageDataElements.size()];
        int i = 0;
        if (byteSource instanceof ByteSourceFile) {
            ByteSourceFile byteSourceFile = (ByteSourceFile) byteSource;
            while (i < tiffRawImageDataElements.size()) {
                TiffDirectory.ImageDataElement imageDataElement = tiffRawImageDataElements.get(i);
                dataArr[i] = new TiffImageData.ByteSourceData(imageDataElement.offset, imageDataElement.length,
                        byteSourceFile);
                i++;
            }
        } else {
            while (i < tiffRawImageDataElements.size()) {
                TiffDirectory.ImageDataElement imageDataElement2 = tiffRawImageDataElements.get(i);
                dataArr[i] = new TiffImageData.Data(imageDataElement2.offset, imageDataElement2.length,
                        byteSource.getBlock(imageDataElement2.offset, imageDataElement2.length));
                i++;
            }
        }
        if (tiffDirectory.imageDataInStrips()) {
            TiffField tiffFieldFindField = tiffDirectory.findField(TiffTagConstants.TIFF_TAG_ROWS_PER_STRIP);
            int intValue = Integer.MAX_VALUE;
            if (tiffFieldFindField != null) {
                intValue = tiffFieldFindField.getIntValue();
            } else {
                TiffField tiffFieldFindField2 = tiffDirectory.findField(TiffTagConstants.TIFF_TAG_IMAGE_LENGTH);
                if (tiffFieldFindField2 != null) {
                    intValue = tiffFieldFindField2.getIntValue();
                }
            }
            return new TiffImageData.Strips(dataArr, intValue);
        }
        TiffField tiffFieldFindField3 = tiffDirectory.findField(TiffTagConstants.TIFF_TAG_TILE_WIDTH);
        if (tiffFieldFindField3 == null) {
            throw new ImageReadException("Can't find tile width field.");
        }
        int intValue2 = tiffFieldFindField3.getIntValue();
        TiffField tiffFieldFindField4 = tiffDirectory.findField(TiffTagConstants.TIFF_TAG_TILE_LENGTH);
        if (tiffFieldFindField4 == null) {
            throw new ImageReadException("Can't find tile length field.");
        }
        return new TiffImageData.Tiles(dataArr, intValue2, tiffFieldFindField4.getIntValue());
    }

    private JpegImageData getJpegRawImageData(ByteSource byteSource, TiffDirectory tiffDirectory)
            throws IOException, ImageReadException {
        TiffDirectory.ImageDataElement jpegRawImageDataElement = tiffDirectory.getJpegRawImageDataElement();
        long j = jpegRawImageDataElement.offset;
        int length = jpegRawImageDataElement.length;
        if (length + j > byteSource.getLength()) {
            length = (int) (byteSource.getLength() - j);
        }
        byte[] block = byteSource.getBlock(j, length);
        if (this.strict && (length < 2
                || (((block[block.length - 2] & 255) << 8) | (block[block.length - 1] & 255)) != 65497)) {
            throw new ImageReadException("JPEG EOI marker could not be found at expected location");
        }
        return new JpegImageData(j, length, block);
    }
}
