package org.apache.commons.imaging.formats.psd;

import java.awt.Dimension;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.commons.imaging.ImageFormat;
import org.apache.commons.imaging.ImageFormats;
import org.apache.commons.imaging.ImageInfo;
import org.apache.commons.imaging.ImageParser;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.common.BinaryFunctions;
import org.apache.commons.imaging.common.bytesource.ByteSource;
import org.apache.commons.imaging.formats.pnm.PnmConstants;

import org.apache.commons.imaging.formats.psd.dataparsers.DataParser;
import org.apache.commons.imaging.formats.psd.dataparsers.DataParserBitmap;
import org.apache.commons.imaging.formats.psd.dataparsers.DataParserCmyk;
import org.apache.commons.imaging.formats.psd.dataparsers.DataParserGrayscale;
import org.apache.commons.imaging.formats.psd.dataparsers.DataParserIndexed;
import org.apache.commons.imaging.formats.psd.dataparsers.DataParserLab;
import org.apache.commons.imaging.formats.psd.dataparsers.DataParserRgb;
import org.apache.commons.imaging.formats.psd.datareaders.CompressedDataReader;
import org.apache.commons.imaging.formats.psd.datareaders.DataReader;
import org.apache.commons.imaging.formats.psd.datareaders.UncompressedDataReader;
import org.apache.commons.imaging.util.IoUtils;

public class PsdImageParser extends ImageParser {
    private static final String DEFAULT_EXTENSION = ".psd";
    private static final String[] ACCEPTED_EXTENSIONS = {DEFAULT_EXTENSION};
    public static final String BLOCK_NAME_XMP = "XMP";

    @Override
    public String getName() {
        return "PSD-Custom";
    }

    @Override
    public String getDefaultExtension() {
        return DEFAULT_EXTENSION;
    }

    @Override
    protected String[] getAcceptedExtensions() {
        return ACCEPTED_EXTENSIONS;
    }

    @Override
    protected ImageFormat[] getAcceptedTypes() {
        return new ImageFormat[]{ImageFormats.PSD};
    }

    @Override
    public org.apache.commons.imaging.common.ImageMetadata getMetadata(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        return null;
    }

    private PsdHeaderInfo readHeader(ByteSource byteSource) throws IOException, ImageReadException {
        try (InputStream inputStream = byteSource.getInputStream()) {
            return readHeader(inputStream);
        }
    }

    private PsdHeaderInfo readHeader(InputStream inputStream) throws IOException, ImageReadException {
        BinaryFunctions.readAndVerifyBytes(inputStream, new byte[]{56, 66, PnmConstants.PNM_PREFIX_BYTE, 83}, "Not a Valid PSD File");
        return new PsdHeaderInfo(
            BinaryFunctions.read2Bytes("Version", inputStream, "Not a Valid PSD File", getByteOrder()),
            BinaryFunctions.readBytes("Reserved", inputStream, 6, "Not a Valid PSD File"),
            BinaryFunctions.read2Bytes("Channels", inputStream, "Not a Valid PSD File", getByteOrder()),
            BinaryFunctions.read4Bytes("Rows", inputStream, "Not a Valid PSD File", getByteOrder()),
            BinaryFunctions.read4Bytes("Columns", inputStream, "Not a Valid PSD File", getByteOrder()),
            BinaryFunctions.read2Bytes("Depth", inputStream, "Not a Valid PSD File", getByteOrder()),
            BinaryFunctions.read2Bytes("Mode", inputStream, "Not a Valid PSD File", getByteOrder())
        );
    }

    private ImageContents readImageContents(InputStream inputStream) throws IOException, ImageReadException {
        PsdHeaderInfo header = readHeader(inputStream);
        int colorModeDataLength = BinaryFunctions.read4Bytes("ColorModeDataLength", inputStream, "Not a Valid PSD File", getByteOrder());
        BinaryFunctions.skipBytes(inputStream, colorModeDataLength);
        int imageResourcesLength = BinaryFunctions.read4Bytes("ImageResourcesLength", inputStream, "Not a Valid PSD File", getByteOrder());
        BinaryFunctions.skipBytes(inputStream, imageResourcesLength);
        int layerAndMaskDataLength = BinaryFunctions.read4Bytes("LayerAndMaskDataLength", inputStream, "Not a Valid PSD File", getByteOrder());
        BinaryFunctions.skipBytes(inputStream, layerAndMaskDataLength);
        return new ImageContents(header, colorModeDataLength, imageResourcesLength, layerAndMaskDataLength, BinaryFunctions.read2Bytes("Compression", inputStream, "Not a Valid PSD File", getByteOrder()));
    }

    private List<ImageResourceBlock> readImageResourceBlocks(byte[] bArr, int[] iArr, int i) throws IOException, ImageReadException {
        return readImageResourceBlocks(new ByteArrayInputStream(bArr), iArr, i, bArr.length);
    }

    private boolean keepImageResourceBlock(int i, int[] iArr) {
        if (iArr == null) {
            return true;
        }
        for (int i2 : iArr) {
            if (i == i2) {
                return true;
            }
        }
        return false;
    }

    private List<ImageResourceBlock> readImageResourceBlocks(InputStream inputStream, int[] iArr, int i, int i2) throws IOException, ImageReadException {
        ArrayList<ImageResourceBlock> arrayList = new ArrayList<>();
        while (i2 > 0) {
            BinaryFunctions.readAndVerifyBytes(inputStream, new byte[]{56, 66, 73, 77}, "Not a Valid PSD File");
            int id = BinaryFunctions.read2Bytes("ID", inputStream, "Not a Valid PSD File", getByteOrder());
            byte nameLength = BinaryFunctions.readByte("NameLength", inputStream, "Not a Valid PSD File");
            byte[] nameData = BinaryFunctions.readBytes("NameData", inputStream, nameLength, "Not a Valid PSD File");
            int remaining = (((i2 - 4) - 2) - 1) - nameLength;
            if ((nameLength + 1) % 2 != 0) {
                BinaryFunctions.readByte("NameDiscard", inputStream, "Not a Valid PSD File");
                remaining--;
            }
            int size = BinaryFunctions.read4Bytes("Size", inputStream, "Not a Valid PSD File", getByteOrder());
            byte[] data = BinaryFunctions.readBytes("Data", inputStream, size, "Not a Valid PSD File");
            i2 = (remaining - 4) - size;
            if (size % 2 != 0) {
                BinaryFunctions.readByte("DataDiscard", inputStream, "Not a Valid PSD File");
                i2--;
            }
            if (keepImageResourceBlock(id, iArr)) {
                arrayList.add(new ImageResourceBlock(id, nameData, data));
                if (i >= 0 && arrayList.size() >= i) {
                    return arrayList;
                }
            }
        }
        return arrayList;
    }

    private List<ImageResourceBlock> readImageResourceBlocks(ByteSource byteSource, int[] iArr, int i) throws IOException, ImageReadException {
         try (InputStream inputStream = byteSource.getInputStream()) {
             ImageContents imageContents = readImageContents(inputStream);
             try (InputStream is2 = getInputStream(byteSource, 2)) {
                 byte[] bytes = BinaryFunctions.readBytes("ImageResources", is2, imageContents.ImageResourcesLength, "Not a Valid PSD File");
                 return readImageResourceBlocks(bytes, iArr, i);
             }
         }
    }

    private InputStream getInputStream(ByteSource byteSource, int i) throws IOException, ImageReadException {
        InputStream inputStream = byteSource.getInputStream();
        if (i == 0) {
            return inputStream;
        }
        BinaryFunctions.skipBytes(inputStream, 26L);
        int colorModeDataLength = BinaryFunctions.read4Bytes("ColorModeDataLength", inputStream, "Not a Valid PSD File", getByteOrder());
        if (i == 1) {
            return inputStream;
        }
        BinaryFunctions.skipBytes(inputStream, colorModeDataLength);
        int imageResourcesLength = BinaryFunctions.read4Bytes("ImageResourcesLength", inputStream, "Not a Valid PSD File", getByteOrder());
        if (i == 2) {
            return inputStream;
        }
        BinaryFunctions.skipBytes(inputStream, imageResourcesLength);
        int layerAndMaskDataLength = BinaryFunctions.read4Bytes("LayerAndMaskDataLength", inputStream, "Not a Valid PSD File", getByteOrder());
        if (i == 3) {
            return inputStream;
        }
        BinaryFunctions.skipBytes(inputStream, layerAndMaskDataLength);
        BinaryFunctions.read2Bytes("Compression", inputStream, "Not a Valid PSD File", getByteOrder());
        if (i == 4) {
            return inputStream;
        }
        IoUtils.closeQuietly(true, inputStream);
        throw new ImageReadException("getInputStream: Unknown Section: " + i);
    }

    private byte[] getData(ByteSource byteSource, int i) throws IOException, ImageReadException {
        try (InputStream inputStream = byteSource.getInputStream()) {
             if (i == 0) {
                 return BinaryFunctions.readBytes("Header", inputStream, 26, "Not a Valid PSD File");
             }
             BinaryFunctions.skipBytes(inputStream, 26L);
             int colorModeDataLength = BinaryFunctions.read4Bytes("ColorModeDataLength", inputStream, "Not a Valid PSD File", getByteOrder());
             if (i == 1) {
                 return BinaryFunctions.readBytes("ColorModeData", inputStream, colorModeDataLength, "Not a Valid PSD File");
             }
             BinaryFunctions.skipBytes(inputStream, colorModeDataLength);
             int imageResourcesLength = BinaryFunctions.read4Bytes("ImageResourcesLength", inputStream, "Not a Valid PSD File", getByteOrder());
             if (i == 2) {
                 return BinaryFunctions.readBytes("ImageResources", inputStream, imageResourcesLength, "Not a Valid PSD File");
             }
             BinaryFunctions.skipBytes(inputStream, imageResourcesLength);
             int layerAndMaskDataLength = BinaryFunctions.read4Bytes("LayerAndMaskDataLength", inputStream, "Not a Valid PSD File", getByteOrder());
             if (i == 3) {
                 return BinaryFunctions.readBytes("LayerAndMaskData", inputStream, layerAndMaskDataLength, "Not a Valid PSD File");
             }
             BinaryFunctions.skipBytes(inputStream, layerAndMaskDataLength);
             BinaryFunctions.read2Bytes("Compression", inputStream, "Not a Valid PSD File", getByteOrder());
             
             throw new ImageReadException("getInputStream: Unknown Section: " + i);
        }
    }

    private ImageContents readImageContents(ByteSource byteSource) throws IOException, ImageReadException {
        try (InputStream inputStream = byteSource.getInputStream()) {
            return readImageContents(inputStream);
        }
    }

    @Override
    public byte[] getICCProfileBytes(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        List<ImageResourceBlock> imageResourceBlocks = readImageResourceBlocks(byteSource, new int[]{1039}, 1);
        if (imageResourceBlocks == null || imageResourceBlocks.size() < 1) {
            return null;
        }
        byte[] bArr = imageResourceBlocks.get(0).data;
        if (bArr == null || bArr.length < 1) {
            return null;
        }
        return bArr;
    }

    @Override
    public Dimension getImageSize(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        PsdHeaderInfo header = readHeader(byteSource);
        if (header == null) {
            throw new ImageReadException("PSD: couldn't read header");
        }
        return new Dimension(header.columns, header.rows);
    }

    @Override
    public ImageInfo getImageInfo(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        ImageInfo.CompressionAlgorithm compressionAlgorithm;
        ImageContents imageContents = readImageContents(byteSource);
        if (imageContents == null) {
            throw new ImageReadException("PSD: Couldn't read blocks");
        }
        PsdHeaderInfo psdHeaderInfo = imageContents.header;
        if (psdHeaderInfo == null) {
            throw new ImageReadException("PSD: Couldn't read Header");
        }
        int columns = psdHeaderInfo.columns;
        int rows = psdHeaderInfo.rows;
        ArrayList<String> comments = new ArrayList<>();
        int channelsPerMode = psdHeaderInfo.depth * getChannelsPerMode(psdHeaderInfo.mode);
        int bitsPerPixel = channelsPerMode < 0 ? 0 : channelsPerMode;
        ImageFormats format = ImageFormats.PSD;
        float physicalWidth = (float) (columns / 72.0d);
        float physicalHeight = (float) (rows / 72.0d);
        boolean isProgressive = psdHeaderInfo.mode == 2;
        ImageInfo.ColorType colorType = ImageInfo.ColorType.UNKNOWN;
        switch (imageContents.Compression) {
            case 0:
                compressionAlgorithm = ImageInfo.CompressionAlgorithm.NONE;
                break;
            case 1:
                compressionAlgorithm = ImageInfo.CompressionAlgorithm.PSD;
                break;
            default:
                compressionAlgorithm = ImageInfo.CompressionAlgorithm.UNKNOWN;
                break;
        }
        return new ImageInfo("Psd", bitsPerPixel, comments, format, "Photoshop", rows, "image/x-photoshop", -1, 72, physicalHeight, 72, physicalWidth, columns, false, false, isProgressive, colorType, compressionAlgorithm);
    }

    @Override
    public boolean dumpImageFile(PrintWriter printWriter, ByteSource byteSource) throws IOException, ImageReadException {
        printWriter.println("gif.dumpImageFile");
        ImageInfo imageInfo = getImageInfo(byteSource);
        if (imageInfo == null) {
            return false;
        }
        imageInfo.toString(printWriter, "");
        ImageContents imageContents = readImageContents(byteSource);
        imageContents.dump(printWriter);
        imageContents.header.dump(printWriter);
        List<ImageResourceBlock> imageResourceBlocks = readImageResourceBlocks(byteSource, (int[]) null, -1);
        printWriter.println("blocks.size(): " + imageResourceBlocks.size());
        for (int i = 0; i < imageResourceBlocks.size(); i++) {
            ImageResourceBlock imageResourceBlock = imageResourceBlocks.get(i);
            printWriter.println("\t" + i + " (" + Integer.toHexString(imageResourceBlock.id) + ", '" + new String(imageResourceBlock.nameData, "ISO-8859-1") + "' (" + imageResourceBlock.nameData.length + "),  data: " + imageResourceBlock.data.length + " type: '" + ImageResourceType.getDescription(imageResourceBlock.id) + "' )");
        }
        printWriter.println("");
        return true;
    }

    @Override
    public BufferedImage getBufferedImage(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        DataParser dataParser;
        DataReader dataReader;
        ImageContents imageContents = readImageContents(byteSource);
        if (imageContents == null) {
            throw new ImageReadException("PSD: Couldn't read blocks");
        }
        PsdHeaderInfo psdHeaderInfo = imageContents.header;
        if (psdHeaderInfo == null) {
            throw new ImageReadException("PSD: Couldn't read Header");
        }
        readImageResourceBlocks(byteSource, (int[]) null, -1);
        BufferedImage colorBufferedImage = getBufferedImageFactory(map).getColorBufferedImage(psdHeaderInfo.columns, psdHeaderInfo.rows, false);
        switch (imageContents.header.mode) {
            case 0:
                dataParser = new DataParserBitmap();
                break;
            case 1:
            case 8:
                dataParser = new DataParserGrayscale();
                break;
            case 2:
                dataParser = new DataParserIndexed(getData(byteSource, 1));
                break;
            case 3:
                dataParser = new DataParserRgb();
                break;
            case 4:
                dataParser = new DataParserCmyk();
                break;
            case 9:
                dataParser = new DataParserLab();
                break;
            case 5:
            case 6:
            case 7:
            default:
                throw new ImageReadException("Unknown Mode: " + imageContents.header.mode);
        }
        switch (imageContents.Compression) {
            case 0:
                dataReader = new UncompressedDataReader(dataParser);
                break;
            case 1:
                dataReader = new CompressedDataReader(dataParser);
                break;
            default:
                throw new ImageReadException("Unknown Compression: " + imageContents.Compression);
        }
        
        try (InputStream inputStream = getInputStream(byteSource, 4)) {
            dataReader.readData(inputStream, colorBufferedImage, imageContents, this);
            return colorBufferedImage;
        }
    }

    @Override
    public String getXmpXml(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        ImageContents imageContents = readImageContents(byteSource);
        if (imageContents == null) {
            throw new ImageReadException("PSD: Couldn't read blocks");
        }
        if (imageContents.header == null) {
            throw new ImageReadException("PSD: Couldn't read Header");
        }
        List<ImageResourceBlock> imageResourceBlocks = readImageResourceBlocks(byteSource, new int[]{1060}, -1);
        if (imageResourceBlocks == null || imageResourceBlocks.size() < 1) {
            return null;
        }
        if (imageResourceBlocks.size() > 1) {
            throw new ImageReadException("PSD contains more than one XMP block.");
        }
        ImageResourceBlock imageResourceBlock = imageResourceBlocks.get(0);
        try {
            return new String(imageResourceBlock.data, 0, imageResourceBlock.data.length, "utf-8");
        } catch (UnsupportedEncodingException e) {
            throw new ImageReadException("Invalid JPEG XMP Segment.", e);
        }
    }
    
    private int getChannelsPerMode(int mode) {
        switch (mode) {
            case 0: return 1;
            case 1: return 1;
            case 2: return 1;
            case 3: return 3;
            case 4: return 4;
            case 9: return 3;
            default: return -1;
        }
    }
}
