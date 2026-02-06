package org.apache.commons.imaging.formats.ico;

import java.awt.Dimension;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
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
    private static final String[] ACCEPTED_EXTENSIONS = {".ico", ".cur"};
    private static final String DEFAULT_EXTENSION = ".ico";

    @Override // org.apache.commons.imaging.ImageParser
    public String getDefaultExtension() {
        return ".ico";
    }

    @Override // org.apache.commons.imaging.ImageParser
    public byte[] getICCProfileBytes(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        return null;
    }

    @Override // org.apache.commons.imaging.ImageParser
    public ImageInfo getImageInfo(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        return null;
    }

    @Override // org.apache.commons.imaging.ImageParser
    public Dimension getImageSize(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        return null;
    }

    @Override // org.apache.commons.imaging.ImageParser
    public ImageMetadata getMetadata(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        return null;
    }

    @Override // org.apache.commons.imaging.ImageParser
    public String getName() {
        return "ico-Custom";
    }

    @Override // org.apache.commons.imaging.ImageParser
    public String getXmpXml(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        return null;
    }

    public IcoImageParser() {
        super.setByteOrder(ByteOrder.LITTLE_ENDIAN);
    }

    @Override // org.apache.commons.imaging.ImageParser
    protected String[] getAcceptedExtensions() {
        return ACCEPTED_EXTENSIONS;
    }

    @Override // org.apache.commons.imaging.ImageParser
    protected ImageFormat[] getAcceptedTypes() {
        return new ImageFormat[]{ImageFormats.ICO};
    }

    private IcoImageParser$FileHeader readFileHeader(InputStream inputStream) throws IOException, ImageReadException {
        int i = BinaryFunctions.read2Bytes("Reserved", inputStream, "Not a Valid ICO File", getByteOrder());
        int i2 = BinaryFunctions.read2Bytes("IconType", inputStream, "Not a Valid ICO File", getByteOrder());
        int i3 = BinaryFunctions.read2Bytes("IconCount", inputStream, "Not a Valid ICO File", getByteOrder());
        if (i != 0) {
            throw new ImageReadException("Not a Valid ICO File: reserved is " + i);
        }
        if (i2 != 1 && i2 != 2) {
            throw new ImageReadException("Not a Valid ICO File: icon type is " + i2);
        }
        return new IcoImageParser$FileHeader(i, i2, i3);
    }

    private IcoImageParser$IconInfo readIconInfo(InputStream inputStream) throws IOException {
        return new IcoImageParser$IconInfo(BinaryFunctions.readByte("Width", inputStream, "Not a Valid ICO File"), BinaryFunctions.readByte("Height", inputStream, "Not a Valid ICO File"), BinaryFunctions.readByte("ColorCount", inputStream, "Not a Valid ICO File"), BinaryFunctions.readByte("Reserved", inputStream, "Not a Valid ICO File"), BinaryFunctions.read2Bytes("Planes", inputStream, "Not a Valid ICO File", getByteOrder()), BinaryFunctions.read2Bytes("BitCount", inputStream, "Not a Valid ICO File", getByteOrder()), BinaryFunctions.read4Bytes("ImageSize", inputStream, "Not a Valid ICO File", getByteOrder()), BinaryFunctions.read4Bytes("ImageOffset", inputStream, "Not a Valid ICO File", getByteOrder()));
    }

    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v17 */
    private IcoImageParser$IconData readBitmapIconData(byte[] bArr, IcoImageParser$IconInfo icoImageParser$IconInfo) throws Throwable {
        int i;
        int i2;
        int i3;
        byte[] bArr2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        ?? r8;
        Throwable th;
        BinaryOutputStream binaryOutputStream;
        boolean z;
        int i9;
        boolean z2;
        BufferedImage bufferedImage;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        int i10 = BinaryFunctions.read4Bytes("size", byteArrayInputStream, "Not a Valid ICO File", getByteOrder());
        int i11 = BinaryFunctions.read4Bytes("width", byteArrayInputStream, "Not a Valid ICO File", getByteOrder());
        int i12 = BinaryFunctions.read4Bytes("height", byteArrayInputStream, "Not a Valid ICO File", getByteOrder());
        int i13 = BinaryFunctions.read2Bytes("planes", byteArrayInputStream, "Not a Valid ICO File", getByteOrder());
        int i14 = BinaryFunctions.read2Bytes("bitCount", byteArrayInputStream, "Not a Valid ICO File", getByteOrder());
        int i15 = BinaryFunctions.read4Bytes("compression", byteArrayInputStream, "Not a Valid ICO File", getByteOrder());
        int i16 = BinaryFunctions.read4Bytes("sizeImage", byteArrayInputStream, "Not a Valid ICO File", getByteOrder());
        int i17 = BinaryFunctions.read4Bytes("xPelsPerMeter", byteArrayInputStream, "Not a Valid ICO File", getByteOrder());
        int i18 = BinaryFunctions.read4Bytes("yPelsPerMeter", byteArrayInputStream, "Not a Valid ICO File", getByteOrder());
        int i19 = BinaryFunctions.read4Bytes("colorsUsed", byteArrayInputStream, "Not a Valid ICO File", getByteOrder());
        int i20 = BinaryFunctions.read4Bytes("ColorsImportant", byteArrayInputStream, "Not a Valid ICO File", getByteOrder());
        if (i15 == 3) {
            i2 = BinaryFunctions.read4Bytes("redMask", byteArrayInputStream, "Not a Valid ICO File", getByteOrder());
            i3 = BinaryFunctions.read4Bytes("greenMask", byteArrayInputStream, "Not a Valid ICO File", getByteOrder());
            i = BinaryFunctions.read4Bytes("blueMask", byteArrayInputStream, "Not a Valid ICO File", getByteOrder());
        } else {
            i = 0;
            i2 = 0;
            i3 = 0;
        }
        byte[] bytes = BinaryFunctions.readBytes("RestOfFile", byteArrayInputStream, byteArrayInputStream.available());
        if (i10 != 40) {
            throw new ImageReadException("Not a Valid ICO File: Wrong bitmap header size " + i10);
        }
        if (i13 != 1) {
            throw new ImageReadException("Not a Valid ICO File: Planes can't be " + i13);
        }
        if (i15 == 0 && i14 == 32) {
            bArr2 = bytes;
            i8 = 16711680;
            i5 = 65280;
            i6 = -16777216;
            i4 = 255;
            i7 = 3;
        } else {
            bArr2 = bytes;
            i4 = i;
            i5 = i3;
            i6 = 0;
            i7 = i15;
            i8 = i2;
        }
        int i21 = i8;
        int i22 = i7;
        IcoImageParser$BitmapHeader icoImageParser$BitmapHeader = new IcoImageParser$BitmapHeader(i10, i11, i12, i13, i14, i22, i16, i17, i18, i19, i20);
        int i23 = (((i19 != 0 || i14 > 8) ? i19 : 1 << i14) * 4) + 70;
        byte[] bArr3 = bArr2;
        int length = 70 + bArr3.length;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length);
        byte[] bytes2 = null;
        try {
            binaryOutputStream = new BinaryOutputStream(byteArrayOutputStream, ByteOrder.LITTLE_ENDIAN);
            try {
                binaryOutputStream.write(66);
                binaryOutputStream.write(77);
                binaryOutputStream.write4Bytes(length);
                z = false;
            } catch (Throwable th2) {
                th = th2;
                z = false;
            }
        } catch (Throwable th3) {
            r8 = 0;
            th = th3;
            binaryOutputStream = null;
        }
        try {
            binaryOutputStream.write4Bytes(0);
            binaryOutputStream.write4Bytes(i23);
            binaryOutputStream.write4Bytes(56);
            binaryOutputStream.write4Bytes(i11);
            binaryOutputStream.write4Bytes(i12 / 2);
            binaryOutputStream.write2Bytes(i13);
            binaryOutputStream.write2Bytes(i14);
            binaryOutputStream.write4Bytes(i22);
            binaryOutputStream.write4Bytes(i16);
            binaryOutputStream.write4Bytes(i17);
            binaryOutputStream.write4Bytes(i18);
            binaryOutputStream.write4Bytes(i19);
            binaryOutputStream.write4Bytes(i20);
            binaryOutputStream.write4Bytes(i21);
            binaryOutputStream.write4Bytes(i5);
            binaryOutputStream.write4Bytes(i4);
            binaryOutputStream.write4Bytes(i6);
            binaryOutputStream.write(bArr3);
            binaryOutputStream.flush();
            IoUtils.closeQuietly(true, binaryOutputStream);
            ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
            BufferedImage bufferedImage2 = new BmpImageParser().getBufferedImage(byteArrayInputStream2, (Map<String, Object>) null);
            int i24 = (i11 + 7) / 8;
            int i25 = i24 % 4;
            if (i25 != 0) {
                i24 += 4 - i25;
            }
            try {
                bytes2 = BinaryFunctions.readBytes("transparency_map", byteArrayInputStream2, (i12 / 2) * i24, "Not a Valid ICO File");
                i9 = 32;
            } catch (IOException e) {
                i9 = 32;
                if (i14 != 32) {
                    throw e;
                }
            }
            if (i14 == i9) {
                z2 = true;
                for (int i26 = 0; z2 && i26 < bufferedImage2.getHeight(); i26++) {
                    int i27 = 0;
                    while (true) {
                        if (i27 >= bufferedImage2.getWidth()) {
                            break;
                        }
                        if ((bufferedImage2.getRGB(i27, i26) & (-16777216)) != 0) {
                            z2 = false;
                            break;
                        }
                        i27++;
                    }
                }
            } else {
                z2 = true;
            }
            if (z2) {
                bufferedImage = new BufferedImage(bufferedImage2.getWidth(), bufferedImage2.getHeight(), 2);
                for (int i28 = 0; i28 < bufferedImage.getHeight(); i28++) {
                    for (int i29 = 0; i29 < bufferedImage.getWidth(); i29++) {
                        bufferedImage.setRGB(i29, i28, (((bytes2 == null || (((255 & bytes2[(((bufferedImage2.getHeight() - i28) - 1) * i24) + (i29 / 8)]) >> (7 - (i29 % 8))) & 1) == 0) ? 255 : 0) << 24) | (16777215 & bufferedImage2.getRGB(i29, i28)));
                    }
                }
            } else {
                bufferedImage = bufferedImage2;
            }
            return new IcoImageParser$BitmapIconData(icoImageParser$IconInfo, icoImageParser$BitmapHeader, bufferedImage);
        } catch (Throwable th4) {
            th = th4;
            th = th;
            r8 = z;
            Closeable[] closeableArr = new Closeable[1];
            closeableArr[r8] = binaryOutputStream;
            IoUtils.closeQuietly(r8, closeableArr);
            throw th;
        }
    }

    private IcoImageParser$IconData readIconData(byte[] bArr, IcoImageParser$IconInfo icoImageParser$IconInfo) throws IOException, ImageReadException {
        if (Imaging.guessFormat(bArr).equals(ImageFormats.PNG)) {
            return new IcoImageParser$PNGIconData(icoImageParser$IconInfo, Imaging.getBufferedImage(bArr));
        }
        return readBitmapIconData(bArr, icoImageParser$IconInfo);
    }

    private IcoImageParser$ImageContents readImage(ByteSource byteSource) throws Throwable {
        InputStream inputStream;
        try {
            inputStream = byteSource.getInputStream();
            try {
                IcoImageParser$FileHeader fileHeader = readFileHeader(inputStream);
                IcoImageParser$IconInfo[] icoImageParser$IconInfoArr = new IcoImageParser$IconInfo[fileHeader.iconCount];
                for (int i = 0; i < fileHeader.iconCount; i++) {
                    icoImageParser$IconInfoArr[i] = readIconInfo(inputStream);
                }
                IcoImageParser$IconData[] icoImageParser$IconDataArr = new IcoImageParser$IconData[fileHeader.iconCount];
                for (int i2 = 0; i2 < fileHeader.iconCount; i2++) {
                    icoImageParser$IconDataArr[i2] = readIconData(byteSource.getBlock(icoImageParser$IconInfoArr[i2].imageOffset, icoImageParser$IconInfoArr[i2].imageSize), icoImageParser$IconInfoArr[i2]);
                }
                IcoImageParser$ImageContents icoImageParser$ImageContents = new IcoImageParser$ImageContents(fileHeader, icoImageParser$IconDataArr);
                IoUtils.closeQuietly(true, inputStream);
                return icoImageParser$ImageContents;
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

    @Override // org.apache.commons.imaging.ImageParser
    public boolean dumpImageFile(PrintWriter printWriter, ByteSource byteSource) throws Throwable {
        IcoImageParser$ImageContents image = readImage(byteSource);
        image.fileHeader.dump(printWriter);
        for (IcoImageParser$IconData icoImageParser$IconData : image.iconDatas) {
            icoImageParser$IconData.dump(printWriter);
        }
        return true;
    }

    @Override // org.apache.commons.imaging.ImageParser
    public final BufferedImage getBufferedImage(ByteSource byteSource, Map<String, Object> map) throws Throwable {
        IcoImageParser$ImageContents image = readImage(byteSource);
        if (image.fileHeader.iconCount > 0) {
            return image.iconDatas[0].readBufferedImage();
        }
        throw new ImageReadException("No icons in ICO file");
    }

    @Override // org.apache.commons.imaging.ImageParser
    public List<BufferedImage> getAllBufferedImages(ByteSource byteSource) throws Throwable {
        ArrayList arrayList = new ArrayList();
        IcoImageParser$ImageContents image = readImage(byteSource);
        IcoImageParser$FileHeader icoImageParser$FileHeader = image.fileHeader;
        for (int i = 0; i < icoImageParser$FileHeader.iconCount; i++) {
            arrayList.add(image.iconDatas[i].readBufferedImage());
        }
        return arrayList;
    }

    @Override // org.apache.commons.imaging.ImageParser
    public void writeImage(BufferedImage bufferedImage, OutputStream outputStream, Map<String, Object> map) throws ImageWriteException, IOException {
        int i;
        HashMap map2 = map == null ? new HashMap() : new HashMap(map);
        if (map2.containsKey("FORMAT")) {
            map2.remove("FORMAT");
        }
        PixelDensity pixelDensity = (PixelDensity) map2.remove("PIXEL_DENSITY");
        if (!map2.isEmpty()) {
            throw new ImageWriteException("Unknown parameter: " + map2.keySet().iterator().next());
        }
        PaletteFactory paletteFactory = new PaletteFactory();
        SimplePalette simplePaletteMakeExactRgbPaletteSimple = paletteFactory.makeExactRgbPaletteSimple(bufferedImage, 256);
        boolean zHasTransparency = paletteFactory.hasTransparency(bufferedImage);
        if (simplePaletteMakeExactRgbPaletteSimple == null) {
            i = zHasTransparency ? 32 : 24;
        } else if (simplePaletteMakeExactRgbPaletteSimple.length() <= 2) {
            i = 1;
        } else {
            i = simplePaletteMakeExactRgbPaletteSimple.length() <= 16 ? 4 : 8;
        }
        BinaryOutputStream binaryOutputStream = new BinaryOutputStream(outputStream, ByteOrder.LITTLE_ENDIAN);
        int width = ((bufferedImage.getWidth() * i) + 7) / 8;
        int i2 = width % 4;
        if (i2 != 0) {
            width += 4 - i2;
        }
        int width2 = (bufferedImage.getWidth() + 7) / 8;
        int i3 = width2 % 4;
        if (i3 != 0) {
            width2 += 4 - i3;
        }
        int height = (4 * (i <= 8 ? 1 << i : 0)) + 40 + (bufferedImage.getHeight() * width) + (bufferedImage.getHeight() * width2);
        binaryOutputStream.write2Bytes(0);
        binaryOutputStream.write2Bytes(1);
        binaryOutputStream.write2Bytes(1);
        int width3 = bufferedImage.getWidth();
        int height2 = bufferedImage.getHeight();
        if (width3 > 255 || height2 > 255) {
            width3 = 0;
            height2 = 0;
        }
        binaryOutputStream.write(width3);
        binaryOutputStream.write(height2);
        binaryOutputStream.write(i >= 8 ? 0 : 1 << i);
        binaryOutputStream.write(0);
        binaryOutputStream.write2Bytes(1);
        binaryOutputStream.write2Bytes(i);
        binaryOutputStream.write4Bytes(height);
        binaryOutputStream.write4Bytes(22);
        binaryOutputStream.write4Bytes(40);
        binaryOutputStream.write4Bytes(bufferedImage.getWidth());
        binaryOutputStream.write4Bytes(2 * bufferedImage.getHeight());
        binaryOutputStream.write2Bytes(1);
        binaryOutputStream.write2Bytes(i);
        binaryOutputStream.write4Bytes(0);
        binaryOutputStream.write4Bytes(0);
        binaryOutputStream.write4Bytes(pixelDensity == null ? 0 : (int) Math.round(pixelDensity.horizontalDensityMetres()));
        binaryOutputStream.write4Bytes(pixelDensity == null ? 0 : (int) Math.round(pixelDensity.horizontalDensityMetres()));
        binaryOutputStream.write4Bytes(0);
        binaryOutputStream.write4Bytes(0);
        if (simplePaletteMakeExactRgbPaletteSimple != null) {
            for (int i4 = 0; i4 < (1 << i); i4++) {
                if (i4 < simplePaletteMakeExactRgbPaletteSimple.length()) {
                    int entry = simplePaletteMakeExactRgbPaletteSimple.getEntry(i4);
                    binaryOutputStream.write(255 & entry);
                    binaryOutputStream.write((entry >> 8) & 255);
                    binaryOutputStream.write((entry >> 16) & 255);
                    binaryOutputStream.write(0);
                } else {
                    binaryOutputStream.write(0);
                    binaryOutputStream.write(0);
                    binaryOutputStream.write(0);
                    binaryOutputStream.write(0);
                }
            }
        }
        int width4 = width - (((bufferedImage.getWidth() * i) + 7) / 8);
        int i5 = 0;
        int i6 = 0;
        for (int height3 = bufferedImage.getHeight() - 1; height3 >= 0; height3--) {
            int paletteIndex = i5;
            for (int i7 = 0; i7 < bufferedImage.getWidth(); i7++) {
                int rgb = bufferedImage.getRGB(i7, height3);
                if (i < 8) {
                    paletteIndex = (paletteIndex << i) | simplePaletteMakeExactRgbPaletteSimple.getPaletteIndex(rgb & 16777215);
                    i6 += i;
                    if (i6 >= 8) {
                        binaryOutputStream.write(255 & paletteIndex);
                        i6 = 0;
                        paletteIndex = 0;
                    }
                } else if (i == 8) {
                    binaryOutputStream.write(simplePaletteMakeExactRgbPaletteSimple.getPaletteIndex(rgb & 16777215) & 255);
                } else if (i == 24) {
                    binaryOutputStream.write(255 & rgb);
                    binaryOutputStream.write((rgb >> 8) & 255);
                    binaryOutputStream.write((rgb >> 16) & 255);
                } else if (i == 32) {
                    binaryOutputStream.write(255 & rgb);
                    binaryOutputStream.write((rgb >> 8) & 255);
                    binaryOutputStream.write((rgb >> 16) & 255);
                    binaryOutputStream.write((rgb >> 24) & 255);
                }
            }
            if (i6 > 0) {
                binaryOutputStream.write((paletteIndex << (8 - i6)) & 255);
                i5 = 0;
                i6 = 0;
            } else {
                i5 = paletteIndex;
            }
            for (int i8 = 0; i8 < width4; i8++) {
                binaryOutputStream.write(0);
            }
        }
        int width5 = width2 - ((bufferedImage.getWidth() + 7) / 8);
        for (int height4 = bufferedImage.getHeight() - 1; height4 >= 0; height4--) {
            for (int i9 = 0; i9 < bufferedImage.getWidth(); i9++) {
                int i10 = i5 << 1;
                int i11 = ((bufferedImage.getRGB(i9, height4) >> 24) & 255) == 0 ? i10 | 1 : i10;
                int i12 = i6 + 1;
                if (i12 >= 8) {
                    binaryOutputStream.write(i11 & 255);
                    i5 = 0;
                    i6 = 0;
                } else {
                    i6 = i12;
                    i5 = i11;
                }
            }
            if (i6 > 0) {
                binaryOutputStream.write((i5 << (8 - i6)) & 255);
                i5 = 0;
                i6 = 0;
            }
            for (int i13 = 0; i13 < width5; i13++) {
                binaryOutputStream.write(0);
            }
        }
        binaryOutputStream.close();
    }
}
