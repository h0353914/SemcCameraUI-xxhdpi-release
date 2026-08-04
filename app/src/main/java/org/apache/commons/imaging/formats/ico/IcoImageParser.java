package org.apache.commons.imaging.formats.ico;

import android.support.v4.view.ViewCompat;
import java.awt.Dimension;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.imaging.ImageFormat;
import org.apache.commons.imaging.ImageFormats;
import org.apache.commons.imaging.ImageInfo;
import org.apache.commons.imaging.ImageParser;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.ImageWriteException;
import org.apache.commons.imaging.Imaging;
import org.apache.commons.imaging.ImagingConstants;
import org.apache.commons.imaging.PixelDensity;
import org.apache.commons.imaging.common.BinaryFunctions;
import org.apache.commons.imaging.common.BinaryOutputStream;
import org.apache.commons.imaging.common.ImageMetadata;
import org.apache.commons.imaging.common.bytesource.ByteSource;
import org.apache.commons.imaging.formats.bmp.BmpImageParser;
import org.apache.commons.imaging.palette.PaletteFactory;
import org.apache.commons.imaging.palette.SimplePalette;
import org.apache.commons.imaging.util.IoUtils;

public class IcoImageParser extends ImageParser {
    private static final String DEFAULT_EXTENSION = ".ico";
    private static final String[] ACCEPTED_EXTENSIONS = { DEFAULT_EXTENSION, ".cur" };

    @Override
    public String getDefaultExtension() {
        return DEFAULT_EXTENSION;
    }

    @Override
    public byte[] getICCProfileBytes(ByteSource byteSource, Map<String, Object> map)
            throws IOException, ImageReadException {
        return null;
    }

    @Override
    public ImageInfo getImageInfo(ByteSource byteSource, Map<String, Object> map)
            throws IOException, ImageReadException {
        return null;
    }

    @Override
    public Dimension getImageSize(ByteSource byteSource, Map<String, Object> map)
            throws IOException, ImageReadException {
        return null;
    }

    @Override
    public ImageMetadata getMetadata(ByteSource byteSource, Map<String, Object> map)
            throws IOException, ImageReadException {
        return null;
    }

    @Override
    public String getName() {
        return "ico-Custom";
    }

    @Override
    public String getXmpXml(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        return null;
    }

    public IcoImageParser() {
        super.setByteOrder(ByteOrder.LITTLE_ENDIAN);
    }

    @Override
    protected String[] getAcceptedExtensions() {
        return ACCEPTED_EXTENSIONS;
    }

    @Override
    protected ImageFormat[] getAcceptedTypes() {
        return new ImageFormat[] { ImageFormats.ICO };
    }

    private static class FileHeader {
        public final int iconCount;
        public final int iconType;
        public final int reserved;

        public FileHeader(int reserved, int iconType, int iconCount) {
            this.reserved = reserved;
            this.iconType = iconType;
            this.iconCount = iconCount;
        }

        public void dump(PrintWriter printWriter) {
            printWriter.println("FileHeader");
            printWriter.println("Reserved: " + this.reserved);
            printWriter.println("IconType: " + this.iconType);
            printWriter.println("IconCount: " + this.iconCount);
            printWriter.println();
        }
    }

    private FileHeader readFileHeader(InputStream inputStream) throws IOException, ImageReadException {
        int reserved = BinaryFunctions.read2Bytes("Reserved", inputStream, "Not a Valid ICO File", getByteOrder());
        int iconType = BinaryFunctions.read2Bytes("IconType", inputStream, "Not a Valid ICO File", getByteOrder());
        int iconCount = BinaryFunctions.read2Bytes("IconCount", inputStream, "Not a Valid ICO File", getByteOrder());
        if (reserved != 0) {
            throw new ImageReadException("Not a Valid ICO File: reserved is " + reserved);
        }
        if (iconType != 1 && iconType != 2) {
            throw new ImageReadException("Not a Valid ICO File: icon type is " + iconType);
        }
        return new FileHeader(reserved, iconType, iconCount);
    }

    private static class IconInfo {
        public final int bitCount;
        public final byte colorCount;
        public final byte height;
        public final int imageOffset;
        public final int imageSize;
        public final int planes;
        public final byte reserved;
        public final byte width;

        public IconInfo(byte b, byte b2, byte b3, byte b4, int i, int i2, int i3, int i4) {
            this.width = b;
            this.height = b2;
            this.colorCount = b3;
            this.reserved = b4;
            this.planes = i;
            this.bitCount = i2;
            this.imageSize = i3;
            this.imageOffset = i4;
        }

        public void dump(PrintWriter printWriter) {
            printWriter.println("IconInfo");
            printWriter.println("Width: " + ((int) this.width));
            printWriter.println("Height: " + ((int) this.height));
            printWriter.println("ColorCount: " + ((int) this.colorCount));
            printWriter.println("Reserved: " + ((int) this.reserved));
            printWriter.println("Planes: " + this.planes);
            printWriter.println("BitCount: " + this.bitCount);
            printWriter.println("ImageSize: " + this.imageSize);
            printWriter.println("ImageOffset: " + this.imageOffset);
        }
    }

    private IconInfo readIconInfo(InputStream inputStream) throws IOException {
        return new IconInfo(
                BinaryFunctions.readByte("Width", inputStream, "Not a Valid ICO File"),
                BinaryFunctions.readByte("Height", inputStream, "Not a Valid ICO File"),
                BinaryFunctions.readByte("ColorCount", inputStream, "Not a Valid ICO File"),
                BinaryFunctions.readByte("Reserved", inputStream, "Not a Valid ICO File"),
                BinaryFunctions.read2Bytes("Planes", inputStream, "Not a Valid ICO File", getByteOrder()),
                BinaryFunctions.read2Bytes("BitCount", inputStream, "Not a Valid ICO File", getByteOrder()),
                BinaryFunctions.read4Bytes("ImageSize", inputStream, "Not a Valid ICO File", getByteOrder()),
                BinaryFunctions.read4Bytes("ImageOffset", inputStream, "Not a Valid ICO File", getByteOrder()));
    }

    private static class BitmapHeader {
        public final int bitCount;
        public final int colorsImportant;
        public final int colorsUsed;
        public final int compression;
        public final int height;
        public final int planes;
        public final int size;
        public final int sizeImage;
        public final int width;
        public final int xPelsPerMeter;
        public final int yPelsPerMeter;

        public BitmapHeader(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
            this.size = i;
            this.width = i2;
            this.height = i3;
            this.planes = i4;
            this.bitCount = i5;
            this.compression = i6;
            this.sizeImage = i7;
            this.xPelsPerMeter = i8;
            this.yPelsPerMeter = i9;
            this.colorsUsed = i10;
            this.colorsImportant = i11;
        }

        public void dump(PrintWriter printWriter) {
            printWriter.println("BitmapHeader");
            printWriter.println("Size: " + this.size);
            printWriter.println("Width: " + this.width);
            printWriter.println("Height: " + this.height);
            printWriter.println("Planes: " + this.planes);
            printWriter.println("BitCount: " + this.bitCount);
            printWriter.println("Compression: " + this.compression);
            printWriter.println("SizeImage: " + this.sizeImage);
            printWriter.println("XPelsPerMeter: " + this.xPelsPerMeter);
            printWriter.println("YPelsPerMeter: " + this.yPelsPerMeter);
            printWriter.println("ColorsUsed: " + this.colorsUsed);
            printWriter.println("ColorsImportant: " + this.colorsImportant);
        }
    }







































    private static abstract class IconData {
        public final IconInfo iconInfo;

        protected abstract void dumpSubclass(PrintWriter printWriter);

        public abstract BufferedImage readBufferedImage() throws ImageReadException;

        public IconData(IconInfo iconInfo) {
            this.iconInfo = iconInfo;
        }

        public void dump(PrintWriter printWriter) {
            this.iconInfo.dump(printWriter);
            printWriter.println();
            dumpSubclass(printWriter);
        }
    }

    private static class BitmapIconData extends IconData {
        public final BufferedImage bufferedImage;
        public final BitmapHeader header;

        public BitmapIconData(IconInfo iconInfo, BitmapHeader bitmapHeader, BufferedImage bufferedImage) {
            super(iconInfo);
            this.header = bitmapHeader;
            this.bufferedImage = bufferedImage;
        }

        @Override
        public BufferedImage readBufferedImage() throws ImageReadException {
            return this.bufferedImage;
        }

        @Override
        protected void dumpSubclass(PrintWriter printWriter) {
            printWriter.println("BitmapIconData");
            this.header.dump(printWriter);
            printWriter.println();
        }
    }

    private static class PNGIconData extends IconData {
        public final BufferedImage bufferedImage;

        public PNGIconData(IconInfo iconInfo, BufferedImage bufferedImage) {
            super(iconInfo);
            this.bufferedImage = bufferedImage;
        }

        @Override
        public BufferedImage readBufferedImage() {
            return this.bufferedImage;
        }

        @Override
        protected void dumpSubclass(PrintWriter printWriter) {
            printWriter.println("PNGIconData");
            printWriter.println();
        }
    }

    private IconData readBitmapIconData(byte[] bArr, IconInfo iconInfo) throws IOException, ImageReadException {
        ByteArrayInputStream bais = new ByteArrayInputStream(bArr);
        int size = BinaryFunctions.read4Bytes("size", bais, "Not a Valid ICO File", getByteOrder());
        int width = BinaryFunctions.read4Bytes("width", bais, "Not a Valid ICO File", getByteOrder());
        int height = BinaryFunctions.read4Bytes("height", bais, "Not a Valid ICO File", getByteOrder());
        int planes = BinaryFunctions.read2Bytes("planes", bais, "Not a Valid ICO File", getByteOrder());
        int bitCount = BinaryFunctions.read2Bytes("bitCount", bais, "Not a Valid ICO File", getByteOrder());
        int compression = BinaryFunctions.read4Bytes("compression", bais, "Not a Valid ICO File", getByteOrder());
        int sizeImage = BinaryFunctions.read4Bytes("sizeImage", bais, "Not a Valid ICO File", getByteOrder());
        int xPelsPerMeter = BinaryFunctions.read4Bytes("xPelsPerMeter", bais, "Not a Valid ICO File", getByteOrder());
        int yPelsPerMeter = BinaryFunctions.read4Bytes("yPelsPerMeter", bais, "Not a Valid ICO File", getByteOrder());
        int colorsUsed = BinaryFunctions.read4Bytes("colorsUsed", bais, "Not a Valid ICO File", getByteOrder());
        int colorsImportant = BinaryFunctions.read4Bytes("ColorsImportant", bais, "Not a Valid ICO File",
                getByteOrder());
        int redMask = 0, greenMask = 0, blueMask = 0;
        if (compression == 3) {
            redMask = BinaryFunctions.read4Bytes("redMask", bais, "Not a Valid ICO File", getByteOrder());
            greenMask = BinaryFunctions.read4Bytes("greenMask", bais, "Not a Valid ICO File", getByteOrder());
            blueMask = BinaryFunctions.read4Bytes("blueMask", bais, "Not a Valid ICO File", getByteOrder());
        }
        byte[] restOfFile = BinaryFunctions.readBytes("RestOfFile", bais, bais.available());
        if (size != 40) {
            throw new ImageReadException("Not a Valid ICO File: Wrong bitmap header size " + size);
        }
        if (planes != 1) {
            throw new ImageReadException("Not a Valid ICO File: Planes can't be " + planes);
        }

        int rMask, gMask, bMask, aMask = 0, actualCompression;
        if (compression == 0 && bitCount == 32) {
            rMask = 0x00FF0000;
            gMask = 0x0000FF00;
            bMask = 0x000000FF;
            aMask = 0xFF000000;
            actualCompression = 3;
        } else {
            rMask = redMask;
            gMask = greenMask;
            bMask = blueMask;
            actualCompression = compression;
        }

        BitmapHeader bitmapHeader = new BitmapHeader(size, width, height, planes, bitCount, actualCompression,
                sizeImage, xPelsPerMeter, yPelsPerMeter, colorsUsed, colorsImportant);
        int paletteSize = (((colorsUsed != 0 || bitCount > 8) ? colorsUsed : 1 << bitCount) * 4);
        int bitmapDataOffset = 14 + 40 + paletteSize;
        int fileSize = bitmapDataOffset + restOfFile.length;

        ByteArrayOutputStream baos = new ByteArrayOutputStream(fileSize);
        try (BinaryOutputStream bos = new BinaryOutputStream(baos, ByteOrder.LITTLE_ENDIAN)) {
            bos.write('B');
            bos.write('M');
            bos.write4Bytes(fileSize);
            bos.write4Bytes(0);
            bos.write4Bytes(bitmapDataOffset);
            bos.write4Bytes(40);
            bos.write4Bytes(width);
            bos.write4Bytes(height / 2);
            bos.write2Bytes(planes);
            bos.write2Bytes(bitCount);
            bos.write4Bytes(actualCompression);
            bos.write4Bytes(sizeImage);
            bos.write4Bytes(xPelsPerMeter);
            bos.write4Bytes(yPelsPerMeter);
            bos.write4Bytes(colorsUsed);
            bos.write4Bytes(colorsImportant);
            bos.write4Bytes(rMask);
            bos.write4Bytes(gMask);
            bos.write4Bytes(bMask);
            bos.write4Bytes(aMask);
            bos.write(restOfFile);
            bos.flush();
        }

        ByteArrayInputStream bis = new ByteArrayInputStream(baos.toByteArray());
        BufferedImage bmpImage = new BmpImageParser().getBufferedImage(bis, null);

        int scanlineSize = (width + 7) / 8;
        if (scanlineSize % 4 != 0) {
            scanlineSize += 4 - (scanlineSize % 4);
        }
        byte[] transparencyMap = null;
        try {
            transparencyMap = BinaryFunctions.readBytes("transparency_map", bis, (height / 2) * scanlineSize,
                    "Not a Valid ICO File");
        } catch (IOException e) {
            if (bitCount != 32)
                throw e;
        }

        boolean useTransparencyMap = true;
        if (bitCount == 32) {
            for (int y = 0; useTransparencyMap && y < bmpImage.getHeight(); y++) {
                for (int x = 0; x < bmpImage.getWidth(); x++) {
                    if ((bmpImage.getRGB(x, y) & 0xFF000000) != 0) {
                        useTransparencyMap = false;
                        break;
                    }
                }
            }
        }

        BufferedImage result;
        if (useTransparencyMap) {
            result = new BufferedImage(bmpImage.getWidth(), bmpImage.getHeight(), BufferedImage.TYPE_INT_ARGB);
            for (int y = 0; y < result.getHeight(); y++) {
                for (int x = 0; x < result.getWidth(); x++) {
                    int alpha = 255;
                    if (transparencyMap != null) {
                        int row = (bmpImage.getHeight() - y) - 1;
                        int byteIdx = (row * scanlineSize) + (x / 8);
                        int bitIdx = 7 - (x % 8);
                        if (((transparencyMap[byteIdx] >> bitIdx) & 1) != 0) {
                            alpha = 0;
                        }
                    }
                    result.setRGB(x, y, (alpha << 24) | (0x00FFFFFF & bmpImage.getRGB(x, y)));
                }
            }
        } else {
            result = bmpImage;
        }
        return new BitmapIconData(iconInfo, bitmapHeader, result);
    }

    private IconData readIconData(byte[] bArr, IconInfo iconInfo) throws IOException, ImageReadException {
        if (Imaging.guessFormat(bArr).equals(ImageFormats.PNG)) {
            return new PNGIconData(iconInfo, Imaging.getBufferedImage(bArr));
        }
        return readBitmapIconData(bArr, iconInfo);
    }






























































































    private static class ImageContents {
        public final FileHeader fileHeader;
        public final IconData[] iconDatas;

        public ImageContents(FileHeader fileHeader, IconData[] iconDataArr) {
            this.fileHeader = fileHeader;
            this.iconDatas = iconDataArr;
        }
    }

    private ImageContents readImage(ByteSource byteSource) throws IOException, ImageReadException {
        try (InputStream is = byteSource.getInputStream()) {
            FileHeader fileHeader = readFileHeader(is);
            IconInfo[] iconInfos = new IconInfo[fileHeader.iconCount];
            for (int i = 0; i < fileHeader.iconCount; i++) {
                iconInfos[i] = readIconInfo(is);
            }
            IconData[] iconDatas = new IconData[fileHeader.iconCount];
            for (int i = 0; i < fileHeader.iconCount; i++) {
                byte[] block = byteSource.getBlock(iconInfos[i].imageOffset, iconInfos[i].imageSize);
                iconDatas[i] = readIconData(block, iconInfos[i]);
            }
            return new ImageContents(fileHeader, iconDatas);
        }
    }

    @Override
    public boolean dumpImageFile(PrintWriter printWriter, ByteSource byteSource)
            throws IOException, ImageReadException {
        ImageContents image = readImage(byteSource);
        image.fileHeader.dump(printWriter);
        for (IconData iconData : image.iconDatas) {
            iconData.dump(printWriter);
        }
        return true;
    }

    @Override
    public final BufferedImage getBufferedImage(ByteSource byteSource, Map<String, Object> map)
            throws IOException, ImageReadException {
        ImageContents image = readImage(byteSource);
        if (image.fileHeader.iconCount > 0) {
            return image.iconDatas[0].readBufferedImage();
        }
        throw new ImageReadException("No icons in ICO file");
    }

    @Override
    public List<BufferedImage> getAllBufferedImages(ByteSource byteSource) throws IOException, ImageReadException {
        ArrayList<BufferedImage> arrayList = new ArrayList<>();
        ImageContents image = readImage(byteSource);
        for (IconData iconData : image.iconDatas) {
            arrayList.add(iconData.readBufferedImage());
        }
        return arrayList;
    }

    @Override
    public void writeImage(BufferedImage bufferedImage, OutputStream outputStream, Map<String, Object> map)
            throws ImageWriteException, IOException {
        PaletteFactory paletteFactory = new PaletteFactory();
        SimplePalette palette = paletteFactory.makeExactRgbPaletteSimple(bufferedImage, 256);
        boolean hasTransparency = paletteFactory.hasTransparency(bufferedImage);
        int bitCount;
        if (palette == null) {
            bitCount = hasTransparency ? 32 : 24;
        } else if (palette.length() <= 2) {
            bitCount = 1;
        } else if (palette.length() <= 16) {
            bitCount = 4;
        } else {
            bitCount = 8;
        }

        try (BinaryOutputStream bos = new BinaryOutputStream(outputStream, ByteOrder.LITTLE_ENDIAN)) {
            int scanlineSize = ((bufferedImage.getWidth() * bitCount) + 7) / 8;
            if (scanlineSize % 4 != 0)
                scanlineSize += 4 - (scanlineSize % 4);
            int transparencyScanlineSize = (bufferedImage.getWidth() + 7) / 8;
            if (transparencyScanlineSize % 4 != 0)
                transparencyScanlineSize += 4 - (transparencyScanlineSize % 4);

            int paletteSize = (bitCount <= 8 ? (1 << bitCount) * 4 : 0);
            int imageSize = 40 + paletteSize + (bufferedImage.getHeight() * scanlineSize)
                    + (bufferedImage.getHeight() * transparencyScanlineSize);

            bos.write2Bytes(0); // Reserved
            bos.write2Bytes(1); // IconType
            bos.write2Bytes(1); // IconCount

            int w = bufferedImage.getWidth() > 255 ? 0 : bufferedImage.getWidth();
            int h = bufferedImage.getHeight() > 255 ? 0 : bufferedImage.getHeight();
            bos.write(w);
            bos.write(h);
            bos.write(bitCount >= 8 ? 0 : 1 << bitCount);
            bos.write(0);
            bos.write2Bytes(1); // Planes
            bos.write2Bytes(bitCount);
            bos.write4Bytes(imageSize);
            bos.write4Bytes(22); // Offset to image data

            // BitmapHeader
            bos.write4Bytes(40);
            bos.write4Bytes(bufferedImage.getWidth());
            bos.write4Bytes(2 * bufferedImage.getHeight());
            bos.write2Bytes(1);
            bos.write2Bytes(bitCount);
            bos.write4Bytes(0);
            bos.write4Bytes(0);
            bos.write4Bytes(0);
            bos.write4Bytes(0);
            bos.write4Bytes(0);
            bos.write4Bytes(0);

            if (palette != null) {
                for (int i = 0; i < (1 << bitCount); i++) {
                    if (i < palette.length()) {
                        int entry = palette.getEntry(i);
                        bos.write(entry & 0xFF);
                        bos.write((entry >> 8) & 0xFF);
                        bos.write((entry >> 16) & 0xFF);
                        bos.write(0);
                    } else {
                        bos.write4Bytes(0);
                    }
                }
            }

            for (int y = bufferedImage.getHeight() - 1; y >= 0; y--) {
                int byteVal = 0;
                int bitsInByte = 0;
                for (int x = 0; x < bufferedImage.getWidth(); x++) {
                    int rgb = bufferedImage.getRGB(x, y);
                    if (bitCount < 8) {
                        byteVal = (byteVal << bitCount) | palette.getPaletteIndex(rgb & 0xFFFFFF);
                        bitsInByte += bitCount;
                        if (bitsInByte >= 8) {
                            bos.write(byteVal & 0xFF);
                            byteVal = 0;
                            bitsInByte = 0;
                        }
                    } else if (bitCount == 8) {
                        bos.write(palette.getPaletteIndex(rgb & 0xFFFFFF) & 0xFF);
                    } else if (bitCount == 24) {
                        bos.write(rgb & 0xFF);
                        bos.write((rgb >> 8) & 0xFF);
                        bos.write((rgb >> 16) & 0xFF);
                    } else if (bitCount == 32) {
                        bos.write(rgb & 0xFF);
                        bos.write((rgb >> 8) & 0xFF);
                        bos.write((rgb >> 16) & 0xFF);
                        bos.write((rgb >> 24) & 0xFF);
                    }
                }
                if (bitsInByte > 0)
                    bos.write((byteVal << (8 - bitsInByte)) & 0xFF);
                for (int pad = 0; pad < (scanlineSize - ((bufferedImage.getWidth() * bitCount + 7) / 8)); pad++) {
                    bos.write(0);
                }
            }

            for (int y = bufferedImage.getHeight() - 1; y >= 0; y--) {
                int byteVal = 0;
                int bitsInByte = 0;
                for (int x = 0; x < bufferedImage.getWidth(); x++) {
                    int alpha = (bufferedImage.getRGB(x, y) >> 24) & 0xFF;
                    byteVal = (byteVal << 1) | (alpha == 0 ? 1 : 0);
                    bitsInByte++;
                    if (bitsInByte >= 8) {
                        bos.write(byteVal & 0xFF);
                        byteVal = 0;
                        bitsInByte = 0;
                    }
                }
                if (bitsInByte > 0)
                    bos.write((byteVal << (8 - bitsInByte)) & 0xFF);
                for (int pad = 0; pad < (transparencyScanlineSize - ((bufferedImage.getWidth() + 7) / 8)); pad++) {
                    bos.write(0);
                }
            }
        }
    }
}
