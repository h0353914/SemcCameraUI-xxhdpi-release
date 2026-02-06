package org.apache.commons.imaging.formats.png;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.DeflaterOutputStream;
import org.apache.commons.imaging.ImageWriteException;
import org.apache.commons.imaging.PixelDensity;
import org.apache.commons.imaging.palette.Palette;
import org.apache.commons.imaging.palette.PaletteFactory;
import org.apache.commons.imaging.palette.SimplePalette;
import org.apache.commons.imaging.util.Debug;
import org.apache.commons.imaging.util.IoUtils;

class PngWriter {
    private final boolean verbose;

    public PngWriter(boolean z) {
        this.verbose = z;
    }

    public PngWriter(Map<String, Object> map) {
        this.verbose = map != null && Boolean.TRUE.equals(map.get("VERBOSE"));
    }

    private void writeInt(OutputStream outputStream, int i) throws IOException {
        outputStream.write((i >> 24) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 0) & 255);
    }

    private void writeChunk(OutputStream outputStream, ChunkType chunkType, byte[] bArr) throws IOException {
        writeInt(outputStream, bArr == null ? 0 : bArr.length);
        outputStream.write(chunkType.array);
        if (bArr != null) {
            outputStream.write(bArr);
        }
        PngCrc pngCrc = new PngCrc();
        long jStart_partial_crc = pngCrc.start_partial_crc(chunkType.array, chunkType.array.length);
        if (bArr != null) {
            jStart_partial_crc = pngCrc.continue_partial_crc(jStart_partial_crc, bArr, bArr.length);
        }
        writeInt(outputStream, (int) pngCrc.finish_partial_crc(jStart_partial_crc));
    }

    private void writeChunkIHDR(OutputStream outputStream, PngWriter$ImageHeader pngWriter$ImageHeader) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeInt(byteArrayOutputStream, pngWriter$ImageHeader.width);
        writeInt(byteArrayOutputStream, pngWriter$ImageHeader.height);
        byteArrayOutputStream.write(pngWriter$ImageHeader.bitDepth & 255);
        byteArrayOutputStream.write(pngWriter$ImageHeader.pngColorType.getValue() & 255);
        byteArrayOutputStream.write(pngWriter$ImageHeader.compressionMethod & 255);
        byteArrayOutputStream.write(pngWriter$ImageHeader.filterMethod & 255);
        byteArrayOutputStream.write(pngWriter$ImageHeader.interlaceMethod.ordinal() & 255);
        writeChunk(outputStream, ChunkType.IHDR, byteArrayOutputStream.toByteArray());
    }

    private void writeChunkiTXt(OutputStream outputStream, PngText$Itxt pngText$Itxt) throws ImageWriteException, IOException {
        if (!isValidISO_8859_1(pngText$Itxt.keyword)) {
            throw new ImageWriteException("Png tEXt chunk keyword is not ISO-8859-1: " + pngText$Itxt.keyword);
        }
        if (!isValidISO_8859_1(pngText$Itxt.languageTag)) {
            throw new ImageWriteException("Png tEXt chunk language tag is not ISO-8859-1: " + pngText$Itxt.languageTag);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(pngText$Itxt.keyword.getBytes("ISO-8859-1"));
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write(1);
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write(pngText$Itxt.languageTag.getBytes("ISO-8859-1"));
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write(pngText$Itxt.translatedKeyword.getBytes("utf-8"));
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write(deflate(pngText$Itxt.text.getBytes("utf-8")));
        writeChunk(outputStream, ChunkType.iTXt, byteArrayOutputStream.toByteArray());
    }

    private void writeChunkzTXt(OutputStream outputStream, PngText$Ztxt pngText$Ztxt) throws ImageWriteException, IOException {
        if (!isValidISO_8859_1(pngText$Ztxt.keyword)) {
            throw new ImageWriteException("Png zTXt chunk keyword is not ISO-8859-1: " + pngText$Ztxt.keyword);
        }
        if (!isValidISO_8859_1(pngText$Ztxt.text)) {
            throw new ImageWriteException("Png zTXt chunk text is not ISO-8859-1: " + pngText$Ztxt.text);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(pngText$Ztxt.keyword.getBytes("ISO-8859-1"));
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write(deflate(pngText$Ztxt.text.getBytes("ISO-8859-1")));
        writeChunk(outputStream, ChunkType.zTXt, byteArrayOutputStream.toByteArray());
    }

    private void writeChunktEXt(OutputStream outputStream, PngText$Text pngText$Text) throws ImageWriteException, IOException {
        if (!isValidISO_8859_1(pngText$Text.keyword)) {
            throw new ImageWriteException("Png tEXt chunk keyword is not ISO-8859-1: " + pngText$Text.keyword);
        }
        if (!isValidISO_8859_1(pngText$Text.text)) {
            throw new ImageWriteException("Png tEXt chunk text is not ISO-8859-1: " + pngText$Text.text);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(pngText$Text.keyword.getBytes("ISO-8859-1"));
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write(pngText$Text.text.getBytes("ISO-8859-1"));
        writeChunk(outputStream, ChunkType.tEXt, byteArrayOutputStream.toByteArray());
    }

    private byte[] deflate(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream);
        try {
            deflaterOutputStream.write(bArr);
            IoUtils.closeQuietly(true, deflaterOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th) {
            IoUtils.closeQuietly(false, deflaterOutputStream);
            throw th;
        }
    }

    private boolean isValidISO_8859_1(String str) {
        try {
            return str.equals(new String(str.getBytes("ISO-8859-1"), "ISO-8859-1"));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Error parsing string.", e);
        }
    }

    private void writeChunkXmpiTXt(OutputStream outputStream, String str) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write("XML:com.adobe.xmp".getBytes("ISO-8859-1"));
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write(1);
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write("XML:com.adobe.xmp".getBytes("utf-8"));
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write(deflate(str.getBytes("utf-8")));
        writeChunk(outputStream, ChunkType.iTXt, byteArrayOutputStream.toByteArray());
    }

    private void writeChunkPLTE(OutputStream outputStream, Palette palette) throws IOException {
        int length = palette.length();
        byte[] bArr = new byte[length * 3];
        for (int i = 0; i < length; i++) {
            int entry = palette.getEntry(i);
            int i2 = i * 3;
            bArr[i2 + 0] = (byte) ((entry >> 16) & 255);
            bArr[i2 + 1] = (byte) ((entry >> 8) & 255);
            bArr[i2 + 2] = (byte) ((entry >> 0) & 255);
        }
        writeChunk(outputStream, ChunkType.PLTE, bArr);
    }

    private void writeChunkTRNS(OutputStream outputStream, Palette palette) throws IOException {
        byte[] bArr = new byte[palette.length()];
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) (255 & (palette.getEntry(i) >> 24));
        }
        writeChunk(outputStream, ChunkType.tRNS, bArr);
    }

    private void writeChunkIEND(OutputStream outputStream) throws IOException {
        writeChunk(outputStream, ChunkType.IEND, null);
    }

    private void writeChunkIDAT(OutputStream outputStream, byte[] bArr) throws IOException {
        writeChunk(outputStream, ChunkType.IDAT, bArr);
    }

    private void writeChunkPHYS(OutputStream outputStream, int i, int i2, byte b) throws IOException {
        writeChunk(outputStream, ChunkType.pHYs, new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 0) & 255), (byte) ((i2 >> 24) & 255), (byte) ((i2 >> 16) & 255), (byte) ((i2 >> 8) & 255), (byte) ((i2 >> 0) & 255), b});
    }

    private byte getBitDepth(PngColorType pngColorType, Map<String, Object> map) {
        Object obj = map.get("PNG_BIT_DEPTH");
        byte bByteValue = obj instanceof Number ? ((Number) obj).byteValue() : (byte) 8;
        if (pngColorType.isBitDepthAllowed(bByteValue)) {
            return bByteValue;
        }
        return (byte) 8;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01bf A[PHI: r1
      0x01bf: PHI (r1v16 org.apache.commons.imaging.palette.Palette) = (r1v15 org.apache.commons.imaging.palette.Palette), (r1v45 org.apache.commons.imaging.palette.Palette) binds: [B:62:0x0192, B:69:0x01bc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0218  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void writeImage(BufferedImage bufferedImage, OutputStream outputStream, Map<String, Object> map) throws ImageWriteException, IOException {
        PngColorType colorType;
        boolean z;
        boolean z2;
        Palette palette;
        Object obj;
        int i;
        int i2;
        byte[] byteArray;
        byte[] byteArray2;
        HashMap map2 = new HashMap(map);
        if (map2.containsKey("FORMAT")) {
            map2.remove("FORMAT");
        }
        if (map2.containsKey("VERBOSE")) {
            map2.remove("VERBOSE");
        }
        HashMap map3 = new HashMap(map2);
        if (map2.containsKey("PNG_FORCE_TRUE_COLOR")) {
            map2.remove("PNG_FORCE_TRUE_COLOR");
        }
        if (map2.containsKey("PNG_FORCE_INDEXED_COLOR")) {
            map2.remove("PNG_FORCE_INDEXED_COLOR");
        }
        if (map2.containsKey("PNG_BIT_DEPTH")) {
            map2.remove("PNG_BIT_DEPTH");
        }
        if (map2.containsKey("XMP_XML")) {
            map2.remove("XMP_XML");
        }
        if (map2.containsKey("PNG_TEXT_CHUNKS")) {
            map2.remove("PNG_TEXT_CHUNKS");
        }
        map2.remove("PIXEL_DENSITY");
        if (!map2.isEmpty()) {
            throw new ImageWriteException("Unknown parameter: " + map2.keySet().iterator().next());
        }
        int width = bufferedImage.getWidth();
        int height = bufferedImage.getHeight();
        boolean zHasTransparency = new PaletteFactory().hasTransparency(bufferedImage);
        if (this.verbose) {
            Debug.debug("hasAlpha: " + zHasTransparency);
        }
        boolean zIsGrayscale = new PaletteFactory().isGrayscale(bufferedImage);
        if (this.verbose) {
            Debug.debug("isGrayscale: " + zIsGrayscale);
        }
        boolean zEquals = Boolean.TRUE.equals(map3.get("PNG_FORCE_INDEXED_COLOR"));
        boolean zEquals2 = Boolean.TRUE.equals(map3.get("PNG_FORCE_TRUE_COLOR"));
        if (zEquals && zEquals2) {
            throw new ImageWriteException("Params: Cannot force both indexed and true color modes");
        }
        int i3 = 0;
        if (zEquals) {
            colorType = PngColorType.INDEXED_COLOR;
        } else {
            if (zEquals2) {
                colorType = zHasTransparency ? PngColorType.TRUE_COLOR_WITH_ALPHA : PngColorType.TRUE_COLOR;
                z = false;
                if (this.verbose) {
                    Debug.debug("colorType: " + colorType);
                }
                byte bitDepth = getBitDepth(colorType, map3);
                if (this.verbose) {
                    Debug.debug("bitDepth: " + ((int) bitDepth));
                }
                byte b = colorType != PngColorType.INDEXED_COLOR ? (byte) 8 : bitDepth;
                if (this.verbose) {
                    Debug.debug("sampleDepth: " + ((int) b));
                }
                PngConstants.PNG_SIGNATURE.writeTo(outputStream);
                writeChunkIHDR(outputStream, new PngWriter$ImageHeader(width, height, bitDepth, colorType, (byte) 0, (byte) 0, InterlaceMethod.NONE));
                Palette paletteMakeQuantizedRgbPalette = null;
                z2 = true;
                if (colorType != PngColorType.INDEXED_COLOR) {
                    palette = paletteMakeQuantizedRgbPalette;
                } else {
                    paletteMakeQuantizedRgbPalette = new PaletteFactory().makeQuantizedRgbPalette(bufferedImage, zHasTransparency ? 255 : 256);
                    if (zHasTransparency) {
                        PngWriter$TransparentPalette pngWriter$TransparentPalette = new PngWriter$TransparentPalette(paletteMakeQuantizedRgbPalette);
                        writeChunkPLTE(outputStream, pngWriter$TransparentPalette);
                        writeChunkTRNS(outputStream, new SimplePalette(new int[]{0}));
                        palette = pngWriter$TransparentPalette;
                    } else {
                        writeChunkPLTE(outputStream, paletteMakeQuantizedRgbPalette);
                        palette = paletteMakeQuantizedRgbPalette;
                    }
                }
                obj = map3.get("PIXEL_DENSITY");
                if (obj instanceof PixelDensity) {
                    PixelDensity pixelDensity = (PixelDensity) obj;
                    if (pixelDensity.isUnitless()) {
                        writeChunkPHYS(outputStream, (int) Math.round(pixelDensity.getRawHorizontalDensity()), (int) Math.round(pixelDensity.getRawVerticalDensity()), (byte) 0);
                    } else {
                        writeChunkPHYS(outputStream, (int) Math.round(pixelDensity.horizontalDensityMetres()), (int) Math.round(pixelDensity.verticalDensityMetres()), (byte) 1);
                    }
                }
                if (map3.containsKey("XMP_XML")) {
                    writeChunkXmpiTXt(outputStream, (String) map3.get("XMP_XML"));
                }
                if (map3.containsKey("PNG_TEXT_CHUNKS")) {
                    for (PngText pngText : (List) map3.get("PNG_TEXT_CHUNKS")) {
                        if (pngText instanceof PngText$Text) {
                            writeChunktEXt(outputStream, (PngText$Text) pngText);
                        } else if (pngText instanceof PngText$Ztxt) {
                            writeChunkzTXt(outputStream, (PngText$Ztxt) pngText);
                        } else if (pngText instanceof PngText$Itxt) {
                            writeChunkiTXt(outputStream, (PngText$Itxt) pngText);
                        } else {
                            throw new ImageWriteException("Unknown text to embed in PNG: " + pngText);
                        }
                    }
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                if (colorType != PngColorType.GREYSCALE_WITH_ALPHA && colorType != PngColorType.TRUE_COLOR_WITH_ALPHA) {
                    z2 = false;
                }
                int[] iArr = new int[width];
                i = 0;
                while (i < height) {
                    int i4 = i;
                    int i5 = i3;
                    boolean z3 = zHasTransparency;
                    int i6 = height;
                    int i7 = width;
                    bufferedImage.getRGB(0, i, width, 1, iArr, 0, width);
                    byteArrayOutputStream.write(FilterType.NONE.ordinal());
                    for (int i8 = i5; i8 < i7; i8++) {
                        int i9 = iArr[i8];
                        if (palette == null) {
                            int i10 = (i9 >> 24) & 255;
                            int i11 = (i9 >> 16) & 255;
                            int i12 = (i9 >> 8) & 255;
                            int i13 = (i9 >> 0) & 255;
                            if (z) {
                                byteArrayOutputStream.write(((i11 + i12) + i13) / 3);
                            } else {
                                byteArrayOutputStream.write(i11);
                                byteArrayOutputStream.write(i12);
                                byteArrayOutputStream.write(i13);
                            }
                            if (z2) {
                                byteArrayOutputStream.write(i10);
                            }
                        } else if (z3 && (i9 >>> 24) == 0) {
                            byteArrayOutputStream.write(i5);
                        } else {
                            byteArrayOutputStream.write(palette.getPaletteIndex(i9) & 255);
                        }
                    }
                    width = i7;
                    i = i4 + 1;
                    i3 = i5;
                    zHasTransparency = z3;
                    height = i6;
                }
                i2 = i3;
                byteArray = byteArrayOutputStream.toByteArray();
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream2);
                while (i2 < byteArray.length) {
                    int i14 = 262144 + i2;
                    deflaterOutputStream.write(byteArray, i2, Math.min(byteArray.length, i14) - i2);
                    deflaterOutputStream.flush();
                    byteArrayOutputStream2.flush();
                    byte[] byteArray3 = byteArrayOutputStream2.toByteArray();
                    byteArrayOutputStream2.reset();
                    if (byteArray3.length > 0) {
                        writeChunkIDAT(outputStream, byteArray3);
                    }
                    i2 = i14;
                }
                deflaterOutputStream.finish();
                byteArray2 = byteArrayOutputStream2.toByteArray();
                if (byteArray2.length > 0) {
                    writeChunkIDAT(outputStream, byteArray2);
                }
                writeChunkIEND(outputStream);
                outputStream.close();
            }
            colorType = PngColorType.getColorType(zHasTransparency, zIsGrayscale);
        }
        z = zIsGrayscale;
        if (this.verbose) {
        }
        byte bitDepth2 = getBitDepth(colorType, map3);
        if (this.verbose) {
        }
        if (colorType != PngColorType.INDEXED_COLOR) {
        }
        if (this.verbose) {
        }
        PngConstants.PNG_SIGNATURE.writeTo(outputStream);
        writeChunkIHDR(outputStream, new PngWriter$ImageHeader(width, height, bitDepth2, colorType, (byte) 0, (byte) 0, InterlaceMethod.NONE));
        Palette paletteMakeQuantizedRgbPalette2 = null;
        z2 = true;
        if (colorType != PngColorType.INDEXED_COLOR) {
        }
        obj = map3.get("PIXEL_DENSITY");
        if (obj instanceof PixelDensity) {
        }
        if (map3.containsKey("XMP_XML")) {
        }
        if (map3.containsKey("PNG_TEXT_CHUNKS")) {
        }
        ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
        if (colorType != PngColorType.GREYSCALE_WITH_ALPHA) {
            z2 = false;
        }
        int[] iArr2 = new int[width];
        i = 0;
        while (i < height) {
        }
        i2 = i3;
        byteArray = byteArrayOutputStream3.toByteArray();
        ByteArrayOutputStream byteArrayOutputStream22 = new ByteArrayOutputStream();
        DeflaterOutputStream deflaterOutputStream2 = new DeflaterOutputStream(byteArrayOutputStream22);
        while (i2 < byteArray.length) {
        }
        deflaterOutputStream2.finish();
        byteArray2 = byteArrayOutputStream22.toByteArray();
        if (byteArray2.length > 0) {
        }
        writeChunkIEND(outputStream);
        outputStream.close();
    }
}
