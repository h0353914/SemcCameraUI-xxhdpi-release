package org.apache.commons.imaging.formats.pcx;

import java.awt.Dimension;
import java.awt.Point;
import java.awt.color.ColorSpace;
import java.awt.image.BufferedImage;
import java.awt.image.ComponentColorModel;
import java.awt.image.DataBufferByte;
import java.awt.image.IndexColorModel;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import org.apache.commons.imaging.ImageFormat;
import org.apache.commons.imaging.ImageFormats;
import org.apache.commons.imaging.ImageInfo;
import org.apache.commons.imaging.ImageInfo$ColorType;
import org.apache.commons.imaging.ImageInfo$CompressionAlgorithm;
import org.apache.commons.imaging.ImageParser;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.ImageWriteException;
import org.apache.commons.imaging.common.BinaryFunctions;
import org.apache.commons.imaging.common.ByteConversions;
import org.apache.commons.imaging.common.ImageMetadata;
import org.apache.commons.imaging.common.bytesource.ByteSource;
import org.apache.commons.imaging.util.IoUtils;

public class PcxImageParser extends ImageParser {
    private static final String[] ACCEPTED_EXTENSIONS = {".pcx", ".pcc"};
    private static final String DEFAULT_EXTENSION = ".pcx";

    @Override // org.apache.commons.imaging.ImageParser
    public String getDefaultExtension() {
        return ".pcx";
    }

    @Override // org.apache.commons.imaging.ImageParser
    public byte[] getICCProfileBytes(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        return null;
    }

    @Override // org.apache.commons.imaging.ImageParser
    public ImageMetadata getMetadata(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        return null;
    }

    @Override // org.apache.commons.imaging.ImageParser
    public String getName() {
        return "Pcx-Custom";
    }

    @Override // org.apache.commons.imaging.ImageParser
    public String getXmpXml(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        return null;
    }

    public PcxImageParser() {
        super.setByteOrder(ByteOrder.LITTLE_ENDIAN);
    }

    @Override // org.apache.commons.imaging.ImageParser
    protected String[] getAcceptedExtensions() {
        return ACCEPTED_EXTENSIONS;
    }

    @Override // org.apache.commons.imaging.ImageParser
    protected ImageFormat[] getAcceptedTypes() {
        return new ImageFormat[]{ImageFormats.PCX};
    }

    @Override // org.apache.commons.imaging.ImageParser
    public ImageInfo getImageInfo(ByteSource byteSource, Map<String, Object> map) throws Throwable {
        PcxImageParser$PcxHeader pcxHeader = readPcxHeader(byteSource);
        Dimension imageSize = getImageSize(byteSource, map);
        return new ImageInfo("PCX", pcxHeader.bitsPerPixel * pcxHeader.nPlanes, new ArrayList(), ImageFormats.PCX, "ZSoft PCX Image", imageSize.height, "image/x-pcx", 1, pcxHeader.vDpi, Math.round(imageSize.getHeight() / ((double) pcxHeader.vDpi)), pcxHeader.hDpi, Math.round(imageSize.getWidth() / ((double) pcxHeader.hDpi)), imageSize.width, false, false, (pcxHeader.nPlanes == 3 && pcxHeader.bitsPerPixel == 8) ? false : true, ImageInfo$ColorType.RGB, pcxHeader.encoding == 1 ? ImageInfo$CompressionAlgorithm.RLE : ImageInfo$CompressionAlgorithm.NONE);
    }

    @Override // org.apache.commons.imaging.ImageParser
    public Dimension getImageSize(ByteSource byteSource, Map<String, Object> map) throws Throwable {
        PcxImageParser$PcxHeader pcxHeader = readPcxHeader(byteSource);
        int i = (pcxHeader.xMax - pcxHeader.xMin) + 1;
        if (i < 0) {
            throw new ImageReadException("Image width is negative");
        }
        int i2 = (pcxHeader.yMax - pcxHeader.yMin) + 1;
        if (i2 < 0) {
            throw new ImageReadException("Image height is negative");
        }
        return new Dimension(i, i2);
    }

    private PcxImageParser$PcxHeader readPcxHeader(ByteSource byteSource) throws Throwable {
        InputStream inputStream;
        try {
            inputStream = byteSource.getInputStream();
            try {
                PcxImageParser$PcxHeader pcxHeader = readPcxHeader(inputStream, false);
                IoUtils.closeQuietly(true, inputStream);
                return pcxHeader;
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

    private PcxImageParser$PcxHeader readPcxHeader(InputStream inputStream, boolean z) throws IOException, ImageReadException {
        byte[] bytes = BinaryFunctions.readBytes("PcxHeader", inputStream, 128, "Not a Valid PCX File");
        int i = 255 & bytes[0];
        int i2 = 255 & bytes[1];
        int i3 = 255 & bytes[2];
        int i4 = bytes[3] & 255;
        int uInt16 = ByteConversions.toUInt16(bytes, 4, getByteOrder());
        int uInt162 = ByteConversions.toUInt16(bytes, 6, getByteOrder());
        int uInt163 = ByteConversions.toUInt16(bytes, 8, getByteOrder());
        int uInt164 = ByteConversions.toUInt16(bytes, 10, getByteOrder());
        int uInt165 = ByteConversions.toUInt16(bytes, 12, getByteOrder());
        int uInt166 = ByteConversions.toUInt16(bytes, 14, getByteOrder());
        int[] iArr = new int[16];
        for (int i5 = 0; i5 < 16; i5++) {
            int i6 = 16 + (3 * i5);
            iArr[i5] = (-16777216) | ((255 & bytes[i6]) << 16) | ((255 & bytes[i6 + 1]) << 8) | (255 & bytes[i6 + 2]);
        }
        int i7 = 255 & bytes[64];
        int i8 = 255 & bytes[65];
        int uInt167 = ByteConversions.toUInt16(bytes, 66, getByteOrder());
        int uInt168 = ByteConversions.toUInt16(bytes, 68, getByteOrder());
        int uInt169 = ByteConversions.toUInt16(bytes, 70, getByteOrder());
        int uInt1610 = ByteConversions.toUInt16(bytes, 72, getByteOrder());
        if (i != 10) {
            throw new ImageReadException("Not a Valid PCX File: manufacturer is " + i);
        }
        if (z && uInt167 % 2 != 0) {
            throw new ImageReadException("Not a Valid PCX File: bytesPerLine is odd");
        }
        return new PcxImageParser$PcxHeader(i, i2, i3, i4, uInt16, uInt162, uInt163, uInt164, uInt165, uInt166, iArr, i7, i8, uInt167, uInt168, uInt169, uInt1610);
    }

    @Override // org.apache.commons.imaging.ImageParser
    public boolean dumpImageFile(PrintWriter printWriter, ByteSource byteSource) throws IOException, ImageReadException {
        readPcxHeader(byteSource).dump(printWriter);
        return true;
    }

    private void readScanLine(PcxImageParser$PcxHeader pcxImageParser$PcxHeader, InputStream inputStream, byte[] bArr) throws IOException, ImageReadException {
        int i;
        int i2 = 0;
        if (pcxImageParser$PcxHeader.encoding == 0) {
            while (i2 < bArr.length) {
                int i3 = inputStream.read(bArr, i2, bArr.length - i2);
                if (i3 < 0) {
                    throw new ImageReadException("Premature end of file reading image data");
                }
                i2 += i3;
            }
            return;
        }
        if (pcxImageParser$PcxHeader.encoding == 1) {
            int i4 = 0;
            while (i4 < bArr.length) {
                byte b = BinaryFunctions.readByte("Pixel", inputStream, "Error reading image data");
                if ((b & 192) == 192) {
                    i = b & 63;
                    b = BinaryFunctions.readByte("Pixel", inputStream, "Error reading image data");
                } else {
                    i = 1;
                }
                for (int i5 = 0; i5 < i; i5++) {
                    int i6 = i4 + i5;
                    if (i6 < bArr.length) {
                        bArr[i6] = b;
                    }
                }
                i4 += i;
            }
            return;
        }
        throw new ImageReadException("Invalid PCX encoding " + pcxImageParser$PcxHeader.encoding);
    }

    private int[] read256ColorPalette(InputStream inputStream) throws IOException {
        byte[] bytes = BinaryFunctions.readBytes("Palette", inputStream, 769, "Error reading palette");
        if (bytes[0] != 12) {
            return null;
        }
        int[] iArr = new int[256];
        for (int i = 0; i < iArr.length; i++) {
            int i2 = 1 + (3 * i);
            iArr[i] = ((bytes[i2] & 255) << 16) | ((bytes[i2 + 1] & 255) << 8) | (bytes[i2 + 2] & 255);
        }
        return iArr;
    }

    private int[] read256ColorPaletteFromEndOfFile(ByteSource byteSource) throws Throwable {
        InputStream inputStream;
        try {
            inputStream = byteSource.getInputStream();
        } catch (Throwable th) {
            th = th;
            inputStream = null;
        }
        try {
            BinaryFunctions.skipBytes(inputStream, (int) (byteSource.getLength() - 769));
            int[] iArr = read256ColorPalette(inputStream);
            IoUtils.closeQuietly(true, inputStream);
            return iArr;
        } catch (Throwable th2) {
            th = th2;
            IoUtils.closeQuietly(false, inputStream);
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:87:0x01fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private BufferedImage readImage(PcxImageParser$PcxHeader pcxImageParser$PcxHeader, InputStream inputStream, ByteSource byteSource) throws IOException, ImageReadException {
        int[] iArr;
        WritableRaster writableRasterCreatePackedRaster;
        int i;
        int i2;
        int i3 = (pcxImageParser$PcxHeader.xMax - pcxImageParser$PcxHeader.xMin) + 1;
        if (i3 < 0) {
            throw new ImageReadException("Image width is negative");
        }
        int i4 = (pcxImageParser$PcxHeader.yMax - pcxImageParser$PcxHeader.yMin) + 1;
        if (i4 < 0) {
            throw new ImageReadException("Image height is negative");
        }
        byte[] bArr = new byte[pcxImageParser$PcxHeader.bytesPerLine * pcxImageParser$PcxHeader.nPlanes];
        int i5 = 8;
        byte b = 0;
        if ((pcxImageParser$PcxHeader.bitsPerPixel == 1 || pcxImageParser$PcxHeader.bitsPerPixel == 2 || pcxImageParser$PcxHeader.bitsPerPixel == 4 || pcxImageParser$PcxHeader.bitsPerPixel == 8) && pcxImageParser$PcxHeader.nPlanes == 1) {
            int i6 = ((pcxImageParser$PcxHeader.bitsPerPixel * i3) + 7) / 8;
            byte[] bArr2 = new byte[i4 * i6];
            for (int i7 = 0; i7 < i4; i7++) {
                readScanLine(pcxImageParser$PcxHeader, inputStream, bArr);
                System.arraycopy(bArr, 0, bArr2, i7 * i6, i6);
            }
            DataBufferByte dataBufferByte = new DataBufferByte(bArr2, bArr2.length);
            if (pcxImageParser$PcxHeader.bitsPerPixel == 1) {
                iArr = new int[]{0, 16777215};
            } else if (pcxImageParser$PcxHeader.bitsPerPixel == 8) {
                int[] iArr2 = read256ColorPalette(inputStream);
                iArr = iArr2 == null ? read256ColorPaletteFromEndOfFile(byteSource) : iArr2;
                if (iArr == null) {
                    throw new ImageReadException("No 256 color palette found in image that needs it");
                }
            } else {
                iArr = pcxImageParser$PcxHeader.colormap;
            }
            int[] iArr3 = iArr;
            if (pcxImageParser$PcxHeader.bitsPerPixel == 8) {
                writableRasterCreatePackedRaster = Raster.createInterleavedRaster(dataBufferByte, i3, i4, i6, 1, new int[]{0}, (Point) null);
            } else {
                writableRasterCreatePackedRaster = Raster.createPackedRaster(dataBufferByte, i3, i4, pcxImageParser$PcxHeader.bitsPerPixel, (Point) null);
            }
            IndexColorModel indexColorModel = new IndexColorModel(pcxImageParser$PcxHeader.bitsPerPixel, 1 << pcxImageParser$PcxHeader.bitsPerPixel, iArr3, 0, false, -1, 0);
            return new BufferedImage(indexColorModel, writableRasterCreatePackedRaster, indexColorModel.isAlphaPremultiplied(), new Properties());
        }
        if (pcxImageParser$PcxHeader.bitsPerPixel == 1 && 2 <= pcxImageParser$PcxHeader.nPlanes && pcxImageParser$PcxHeader.nPlanes <= 4) {
            BufferedImage bufferedImage = new BufferedImage(i3, i4, 12, new IndexColorModel(pcxImageParser$PcxHeader.nPlanes, 1 << pcxImageParser$PcxHeader.nPlanes, pcxImageParser$PcxHeader.colormap, 0, false, -1, 0));
            byte[] bArr3 = new byte[i3];
            int i8 = 0;
            while (i8 < i4) {
                readScanLine(pcxImageParser$PcxHeader, inputStream, bArr);
                Arrays.fill(bArr3, b);
                int i9 = b;
                int i10 = i9;
                while (i9 < pcxImageParser$PcxHeader.nPlanes) {
                    int i11 = i10;
                    int i12 = b;
                    while (i12 < pcxImageParser$PcxHeader.bytesPerLine) {
                        int i13 = i11 + 1;
                        int i14 = bArr[i11] & 255;
                        int i15 = b;
                        while (i15 < i5) {
                            int i16 = (i5 * i12) + i15;
                            if (i16 < bArr3.length) {
                                bArr3[i16] = (byte) (((byte) (((i14 >> (7 - i15)) & 1) << i9)) | bArr3[i16]);
                                i15++;
                                i5 = 8;
                            }
                        }
                        i12++;
                        i11 = i13;
                        i5 = 8;
                        b = 0;
                    }
                    i9++;
                    i10 = i11;
                    i5 = 8;
                    b = 0;
                }
                bufferedImage.getRaster().setDataElements(0, i8, i3, 1, bArr3);
                i8++;
                i5 = 8;
                b = 0;
            }
            return bufferedImage;
        }
        if (pcxImageParser$PcxHeader.bitsPerPixel == 8 && pcxImageParser$PcxHeader.nPlanes == 3) {
            int i17 = i3 * i4;
            int i18 = 0;
            char c = 1;
            byte[][] bArr4 = {new byte[i17], new byte[i17], new byte[i17]};
            int i19 = 0;
            while (i19 < i4) {
                readScanLine(pcxImageParser$PcxHeader, inputStream, bArr);
                int i20 = i19 * i3;
                System.arraycopy(bArr, i18, bArr4[i18], i20, i3);
                System.arraycopy(bArr, pcxImageParser$PcxHeader.bytesPerLine, bArr4[c], i20, i3);
                System.arraycopy(bArr, pcxImageParser$PcxHeader.bytesPerLine * 2, bArr4[2], i20, i3);
                i19++;
                i18 = 0;
                c = 1;
            }
            WritableRaster writableRasterCreateBandedRaster = Raster.createBandedRaster(new DataBufferByte(bArr4, bArr4[0].length), i3, i4, i3, new int[]{0, 1, 2}, new int[]{0, 0, 0}, (Point) null);
            ComponentColorModel componentColorModel = new ComponentColorModel(ColorSpace.getInstance(1000), false, false, 1, 0);
            return new BufferedImage(componentColorModel, writableRasterCreateBandedRaster, componentColorModel.isAlphaPremultiplied(), new Properties());
        }
        if (pcxImageParser$PcxHeader.bitsPerPixel == 24) {
            i = 1;
            if (pcxImageParser$PcxHeader.nPlanes != 1) {
            }
            int i21 = 3 * i3;
            byte[] bArr5 = new byte[i21 * i4];
            for (i2 = 0; i2 < i4; i2++) {
                readScanLine(pcxImageParser$PcxHeader, inputStream, bArr);
                if (pcxImageParser$PcxHeader.bitsPerPixel == 24) {
                    System.arraycopy(bArr, 0, bArr5, i2 * i21, i21);
                } else {
                    for (int i22 = 0; i22 < i3; i22++) {
                        int i23 = (i2 * i21) + (3 * i22);
                        int i24 = 4 * i22;
                        bArr5[i23] = bArr[i24];
                        bArr5[i23 + 1] = bArr[i24 + 1];
                        bArr5[i23 + 2] = bArr[i24 + 2];
                    }
                }
            }
            WritableRaster writableRasterCreateInterleavedRaster = Raster.createInterleavedRaster(new DataBufferByte(bArr5, bArr5.length), i3, i4, i21, 3, new int[]{2, 1, 0}, (Point) null);
            ComponentColorModel componentColorModel2 = new ComponentColorModel(ColorSpace.getInstance(1000), false, false, 1, 0);
            return new BufferedImage(componentColorModel2, writableRasterCreateInterleavedRaster, componentColorModel2.isAlphaPremultiplied(), new Properties());
        }
        i = 1;
        if (pcxImageParser$PcxHeader.bitsPerPixel != 32 || pcxImageParser$PcxHeader.nPlanes != i) {
            throw new ImageReadException("Invalid/unsupported image with bitsPerPixel " + pcxImageParser$PcxHeader.bitsPerPixel + " and planes " + pcxImageParser$PcxHeader.nPlanes);
        }
        int i212 = 3 * i3;
        byte[] bArr52 = new byte[i212 * i4];
        while (i2 < i4) {
        }
        WritableRaster writableRasterCreateInterleavedRaster2 = Raster.createInterleavedRaster(new DataBufferByte(bArr52, bArr52.length), i3, i4, i212, 3, new int[]{2, 1, 0}, (Point) null);
        ComponentColorModel componentColorModel22 = new ComponentColorModel(ColorSpace.getInstance(1000), false, false, 1, 0);
        return new BufferedImage(componentColorModel22, writableRasterCreateInterleavedRaster2, componentColorModel22.isAlphaPremultiplied(), new Properties());
    }

    @Override // org.apache.commons.imaging.ImageParser
    public final BufferedImage getBufferedImage(ByteSource byteSource, Map<String, Object> map) throws Throwable {
        InputStream inputStream;
        Object obj = (map == null ? new HashMap() : new HashMap(map)).get("STRICT");
        boolean zBooleanValue = obj != null ? ((Boolean) obj).booleanValue() : false;
        try {
            inputStream = byteSource.getInputStream();
            try {
                BufferedImage image = readImage(readPcxHeader(inputStream, zBooleanValue), inputStream, byteSource);
                IoUtils.closeQuietly(true, inputStream);
                return image;
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
    public void writeImage(BufferedImage bufferedImage, OutputStream outputStream, Map<String, Object> map) throws ImageWriteException, IOException {
        new PcxWriter(map).writeImage(bufferedImage, outputStream);
    }
}
