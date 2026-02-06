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
import org.apache.commons.imaging.common.BinaryFileParser;
import org.apache.commons.imaging.common.BinaryFunctions;
import org.apache.commons.imaging.common.ByteConversions;
import org.apache.commons.imaging.common.bytesource.ByteSource;
import org.apache.commons.imaging.common.bytesource.ByteSourceFile;
import org.apache.commons.imaging.formats.tiff.constants.TiffTagConstants;
import org.apache.commons.imaging.formats.tiff.fieldtypes.FieldType;
import org.apache.commons.imaging.util.IoUtils;

public class TiffReader extends BinaryFileParser {
    private final boolean strict;

    public TiffReader(boolean z) {
        this.strict = z;
    }

    private TiffHeader readTiffHeader(ByteSource byteSource) throws Throwable {
        InputStream inputStream;
        try {
            inputStream = byteSource.getInputStream();
            try {
                TiffHeader tiffHeader = readTiffHeader(inputStream);
                IoUtils.closeQuietly(true, inputStream);
                return tiffHeader;
            } catch (Throwable th) {
                th = th;
                IoUtils.closeQuietly(false, inputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
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
        long j = 4294967295L & ((long) BinaryFunctions.read4Bytes("offsetToFirstIFD", inputStream, "Not a Valid TIFF File", getByteOrder()));
        BinaryFunctions.skipBytes(inputStream, j - 8, "Not a Valid TIFF File: couldn't find IFDs");
        if (getDebug()) {
            System.out.println("");
        }
        return new TiffHeader(tiffByteOrder, i, j);
    }

    private void readDirectories(ByteSource byteSource, FormatCompliance formatCompliance, TiffReader$Listener tiffReader$Listener) throws Throwable {
        TiffHeader tiffHeader = readTiffHeader(byteSource);
        if (tiffReader$Listener.setTiffHeader(tiffHeader)) {
            readDirectory(byteSource, tiffHeader.offsetToFirstIFD, 0, formatCompliance, tiffReader$Listener, new ArrayList());
        }
    }

    private boolean readDirectory(ByteSource byteSource, long j, int i, FormatCompliance formatCompliance, TiffReader$Listener tiffReader$Listener, List<Number> list) throws IOException, ImageReadException {
        return readDirectory(byteSource, j, i, formatCompliance, tiffReader$Listener, false, list);
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0134, code lost:
    
        r14 = new org.apache.commons.imaging.formats.tiff.TiffDirectory(r34, r8, r32, 4294967295L & ((long) org.apache.commons.imaging.common.BinaryFunctions.read4Bytes("nextDirectoryOffset", r9, "Not a Valid TIFF File", getByteOrder())));
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0157, code lost:
    
        if (r36.readImageData() == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x015d, code lost:
    
        if (r14.hasTiffImageData() == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x015f, code lost:
    
        r14.setTiffImageData(getTiffRawImageData(r31, r14));
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x016a, code lost:
    
        if (r14.hasJpegImageData() == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x016c, code lost:
    
        r14.setJpegImageData(getJpegRawImageData(r31, r14));
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0177, code lost:
    
        if (r36.addDirectory(r14) != false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0179, code lost:
    
        r1 = true;
        r2 = new java.io.Closeable[]{r9};
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0185, code lost:
    
        if (r36.readOffsetDirectories() == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0187, code lost:
    
        r15 = new org.apache.commons.imaging.formats.tiff.taginfos.TagInfoLong[3];
        r15[0] = org.apache.commons.imaging.formats.tiff.constants.ExifTagConstants.EXIF_TAG_EXIF_OFFSET;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0191, code lost:
    
        r15[1] = org.apache.commons.imaging.formats.tiff.constants.ExifTagConstants.EXIF_TAG_GPSINFO;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0194, code lost:
    
        r15[2] = org.apache.commons.imaging.formats.tiff.constants.ExifTagConstants.EXIF_TAG_INTEROP_OFFSET;
        r7 = new int[]{-2, -3, -4};
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x019f, code lost:
    
        if (r6 >= r15.length) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01a1, code lost:
    
        r5 = r14.findField(r15[r6]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01a7, code lost:
    
        if (r5 == null) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01b0, code lost:
    
        r28 = r5;
        r18 = r6;
        r20 = r7;
        r29 = r15;
        r15 = r8;
        r19 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01c7, code lost:
    
        r1 = readDirectory(r31, r14.getSingleFieldValue(r1), r7[r6], r35, r36, true, r38);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01cc, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01ce, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01cf, code lost:
    
        r28 = r5;
        r18 = r6;
        r20 = r7;
        r19 = r9;
        r29 = r15;
        r15 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01da, code lost:
    
        r1 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01dd, code lost:
    
        if (r30.strict != false) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01df, code lost:
    
        throw r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01e0, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01e1, code lost:
    
        if (r1 == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01e3, code lost:
    
        r15.remove(r28);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01e9, code lost:
    
        r18 = r6;
        r20 = r7;
        r19 = r9;
        r29 = r15;
        r15 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01f2, code lost:
    
        r6 = r18 + 1;
        r8 = r15;
        r9 = r19;
        r7 = r20;
        r15 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01fc, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01fd, code lost:
    
        r1 = r0;
        r2 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0202, code lost:
    
        r19 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0204, code lost:
    
        if (r37 != false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x020a, code lost:
    
        if (r14.nextDirectoryOffset <= 0) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x020c, code lost:
    
        readDirectory(r31, r14.nextDirectoryOffset, r34 + 1, r35, r36, r38);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x021a, code lost:
    
        r1 = true;
        r2 = new java.io.Closeable[]{r19};
     */
    /* JADX WARN: Not initialized variable reg: 19, insn: 0x023a: MOVE (r9 I:??[OBJECT, ARRAY]) = (r19 I:??[OBJECT, ARRAY]), block:B:105:0x0239 */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean readDirectory(ByteSource byteSource, long j, int i, FormatCompliance formatCompliance, TiffReader$Listener tiffReader$Listener, boolean z, List<Number> list) throws Throwable {
        InputStream inputStream;
        int i2;
        Throwable th;
        InputStream inputStream2;
        boolean z2;
        Closeable[] closeableArr;
        int i3;
        int i4;
        int i5;
        byte[] block;
        if (list.contains(Long.valueOf(j))) {
            return false;
        }
        list.add(Long.valueOf(j));
        try {
            if (j >= byteSource.getLength()) {
                IoUtils.closeQuietly(true, null);
                return true;
            }
            inputStream = byteSource.getInputStream();
            try {
                BinaryFunctions.skipBytes(inputStream, j);
                ArrayList arrayList = new ArrayList();
                try {
                    try {
                        i3 = BinaryFunctions.read2Bytes("DirectoryEntryCount", inputStream, "Not a Valid TIFF File", getByteOrder());
                        i4 = 0;
                    } catch (IOException e) {
                        if (this.strict) {
                            throw e;
                        }
                        z2 = true;
                        closeableArr = new Closeable[]{inputStream};
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = inputStream2;
                }
                while (true) {
                    if (i4 < i3) {
                        try {
                            int i6 = BinaryFunctions.read2Bytes("Tag", inputStream, "Not a Valid TIFF File", getByteOrder());
                            int i7 = BinaryFunctions.read2Bytes("Type", inputStream, "Not a Valid TIFF File", getByteOrder());
                            long j2 = 4294967295L & ((long) BinaryFunctions.read4Bytes("Count", inputStream, "Not a Valid TIFF File", getByteOrder()));
                            byte[] bytes = BinaryFunctions.readBytes("Offset", inputStream, 4, "Not a Valid TIFF File");
                            long j3 = 4294967295L & ((long) ByteConversions.toInt(bytes, getByteOrder()));
                            if (i6 == 0) {
                                i5 = i3;
                            } else {
                                try {
                                    FieldType fieldType = FieldType.getFieldType(i7);
                                    i5 = i3;
                                    long size = ((long) fieldType.getSize()) * j2;
                                    if (size > 4) {
                                        if (j3 >= 0 && j3 + size <= byteSource.getLength()) {
                                            block = byteSource.getBlock(j3, (int) size);
                                        }
                                        if (this.strict) {
                                            throw new IOException("Attempt to read byte range starting from " + j3 + " of length " + size + " which is outside the file's size of " + byteSource.getLength());
                                        }
                                    } else {
                                        block = bytes;
                                    }
                                    TiffField tiffField = new TiffField(i6, i, fieldType, j2, j3, block, getByteOrder(), i4);
                                    arrayList.add(tiffField);
                                    if (!tiffReader$Listener.addField(tiffField)) {
                                        z2 = true;
                                        closeableArr = new Closeable[]{inputStream};
                                        break;
                                    }
                                } catch (ImageReadException unused) {
                                    i5 = i3;
                                }
                            }
                            i4++;
                            i3 = i5;
                        } catch (Throwable th3) {
                            th = th3;
                            th = th;
                            i2 = 1;
                            Closeable[] closeableArr2 = new Closeable[i2];
                            closeableArr2[0] = inputStream;
                            IoUtils.closeQuietly(false, closeableArr2);
                            throw th;
                        }
                    } else {
                        try {
                            break;
                        } catch (Throwable th4) {
                            th = th4;
                            th = th;
                            i2 = 1;
                        }
                    }
                    i2 = 1;
                }
                IoUtils.closeQuietly(z2, closeableArr);
                return z2;
            } catch (Throwable th5) {
                th = th5;
                i2 = 1;
            }
        } catch (Throwable th6) {
            inputStream = null;
            i2 = 1;
            th = th6;
        }
        Closeable[] closeableArr22 = new Closeable[i2];
        closeableArr22[0] = inputStream;
        IoUtils.closeQuietly(false, closeableArr22);
        throw th;
    }

    public TiffContents readFirstDirectory(ByteSource byteSource, Map<String, Object> map, boolean z, FormatCompliance formatCompliance) throws IOException, ImageReadException {
        TiffReader$FirstDirectoryCollector tiffReader$FirstDirectoryCollector = new TiffReader$FirstDirectoryCollector(z);
        read(byteSource, map, formatCompliance, tiffReader$FirstDirectoryCollector);
        TiffContents contents = tiffReader$FirstDirectoryCollector.getContents();
        if (contents.directories.size() < 1) {
            throw new ImageReadException("Image did not contain any directories.");
        }
        return contents;
    }

    public TiffContents readDirectories(ByteSource byteSource, boolean z, FormatCompliance formatCompliance) throws IOException, ImageReadException {
        TiffReader$Collector tiffReader$Collector = new TiffReader$Collector(null);
        readDirectories(byteSource, formatCompliance, tiffReader$Collector);
        TiffContents contents = tiffReader$Collector.getContents();
        if (contents.directories.size() < 1) {
            throw new ImageReadException("Image did not contain any directories.");
        }
        return contents;
    }

    public TiffContents readContents(ByteSource byteSource, Map<String, Object> map, FormatCompliance formatCompliance) throws IOException, ImageReadException {
        TiffReader$Collector tiffReader$Collector = new TiffReader$Collector(map);
        read(byteSource, map, formatCompliance, tiffReader$Collector);
        return tiffReader$Collector.getContents();
    }

    public void read(ByteSource byteSource, Map<String, Object> map, FormatCompliance formatCompliance, TiffReader$Listener tiffReader$Listener) throws Throwable {
        readDirectories(byteSource, formatCompliance, tiffReader$Listener);
    }

    private TiffImageData getTiffRawImageData(ByteSource byteSource, TiffDirectory tiffDirectory) throws IOException, ImageReadException {
        List<TiffDirectory$ImageDataElement> tiffRawImageDataElements = tiffDirectory.getTiffRawImageDataElements();
        TiffImageData$Data[] tiffImageData$DataArr = new TiffImageData$Data[tiffRawImageDataElements.size()];
        int i = 0;
        if (byteSource instanceof ByteSourceFile) {
            ByteSourceFile byteSourceFile = (ByteSourceFile) byteSource;
            while (i < tiffRawImageDataElements.size()) {
                TiffDirectory$ImageDataElement tiffDirectory$ImageDataElement = tiffRawImageDataElements.get(i);
                tiffImageData$DataArr[i] = new TiffImageData$ByteSourceData(tiffDirectory$ImageDataElement.offset, tiffDirectory$ImageDataElement.length, byteSourceFile);
                i++;
            }
        } else {
            while (i < tiffRawImageDataElements.size()) {
                TiffDirectory$ImageDataElement tiffDirectory$ImageDataElement2 = tiffRawImageDataElements.get(i);
                tiffImageData$DataArr[i] = new TiffImageData$Data(tiffDirectory$ImageDataElement2.offset, tiffDirectory$ImageDataElement2.length, byteSource.getBlock(tiffDirectory$ImageDataElement2.offset, tiffDirectory$ImageDataElement2.length));
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
            return new TiffImageData$Strips(tiffImageData$DataArr, intValue);
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
        return new TiffImageData$Tiles(tiffImageData$DataArr, intValue2, tiffFieldFindField4.getIntValue());
    }

    private JpegImageData getJpegRawImageData(ByteSource byteSource, TiffDirectory tiffDirectory) throws IOException, ImageReadException {
        TiffDirectory$ImageDataElement jpegRawImageDataElement = tiffDirectory.getJpegRawImageDataElement();
        long j = jpegRawImageDataElement.offset;
        int length = jpegRawImageDataElement.length;
        if (((long) length) + j > byteSource.getLength()) {
            length = (int) (byteSource.getLength() - j);
        }
        byte[] block = byteSource.getBlock(j, length);
        if (this.strict && (length < 2 || (((block[block.length - 2] & 255) << 8) | (block[block.length - 1] & 255)) != 65497)) {
            throw new ImageReadException("JPEG EOI marker could not be found at expected location");
        }
        return new JpegImageData(j, length, block);
    }
}
