package org.apache.commons.imaging.formats.png;

import java.awt.Dimension;
import java.awt.color.ICC_ColorSpace;
import java.awt.color.ICC_Profile;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.InflaterInputStream;
import org.apache.commons.imaging.ColorTools;
import org.apache.commons.imaging.ImageFormat;
import org.apache.commons.imaging.ImageFormats;
import org.apache.commons.imaging.ImageInfo;
import org.apache.commons.imaging.ImageInfo$ColorType;
import org.apache.commons.imaging.ImageInfo$CompressionAlgorithm;
import org.apache.commons.imaging.ImageParser;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.ImageWriteException;
import org.apache.commons.imaging.common.BinaryFunctions;
import org.apache.commons.imaging.common.GenericImageMetadata;
import org.apache.commons.imaging.common.ImageMetadata;
import org.apache.commons.imaging.common.bytesource.ByteSource;
import org.apache.commons.imaging.formats.png.chunks.PngChunk;
import org.apache.commons.imaging.formats.png.chunks.PngChunkGama;
import org.apache.commons.imaging.formats.png.chunks.PngChunkIccp;
import org.apache.commons.imaging.formats.png.chunks.PngChunkIdat;
import org.apache.commons.imaging.formats.png.chunks.PngChunkIhdr;
import org.apache.commons.imaging.formats.png.chunks.PngChunkItxt;
import org.apache.commons.imaging.formats.png.chunks.PngChunkPhys;
import org.apache.commons.imaging.formats.png.chunks.PngChunkPlte;
import org.apache.commons.imaging.formats.png.chunks.PngChunkText;
import org.apache.commons.imaging.formats.png.chunks.PngChunkZtxt;
import org.apache.commons.imaging.formats.png.chunks.PngTextChunk;
import org.apache.commons.imaging.formats.png.transparencyfilters.TransparencyFilter;
import org.apache.commons.imaging.formats.png.transparencyfilters.TransparencyFilterGrayscale;
import org.apache.commons.imaging.formats.png.transparencyfilters.TransparencyFilterIndexedColor;
import org.apache.commons.imaging.formats.png.transparencyfilters.TransparencyFilterTrueColor;
import org.apache.commons.imaging.icc.IccProfileParser;
import org.apache.commons.imaging.util.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public class PngImageParser extends ImageParser {
    private static final String[] ACCEPTED_EXTENSIONS = {".png"};
    private static final String DEFAULT_EXTENSION = ".png";

    @Override // org.apache.commons.imaging.ImageParser
    public String getDefaultExtension() {
        return ".png";
    }

    @Override // org.apache.commons.imaging.ImageParser
    public String getName() {
        return "Png-Custom";
    }

    @Override // org.apache.commons.imaging.ImageParser
    protected String[] getAcceptedExtensions() {
        return ACCEPTED_EXTENSIONS;
    }

    @Override // org.apache.commons.imaging.ImageParser
    protected ImageFormat[] getAcceptedTypes() {
        return new ImageFormat[]{ImageFormats.PNG};
    }

    public static String getChunkTypeName(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) ((i >> 24) & 255));
        sb.append((char) ((i >> 16) & 255));
        sb.append((char) ((i >> 8) & 255));
        sb.append((char) ((i >> 0) & 255));
        return sb.toString();
    }

    public List<String> getChuckTypes(InputStream inputStream) throws IOException, ImageReadException {
        List<PngChunk> chunks = readChunks(inputStream, (ChunkType[]) null, false);
        ArrayList arrayList = new ArrayList();
        Iterator<PngChunk> it = chunks.iterator();
        while (it.hasNext()) {
            arrayList.add(getChunkTypeName(it.next().chunkType));
        }
        return arrayList;
    }

    public boolean hasChuckType(ByteSource byteSource, ChunkType chunkType) throws Throwable {
        InputStream inputStream;
        InputStream inputStream2;
        boolean z;
        try {
            inputStream = byteSource.getInputStream();
            try {
                readSignature(inputStream);
            } catch (Throwable th) {
                th = th;
                inputStream2 = inputStream;
                z = false;
                IoUtils.closeQuietly(z, inputStream2);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
        try {
            boolean z2 = !readChunks(inputStream, new ChunkType[]{chunkType}, true).isEmpty();
            IoUtils.closeQuietly(true, inputStream);
            return z2;
        } catch (Throwable th3) {
            th = th3;
            inputStream2 = inputStream;
            z = true;
            IoUtils.closeQuietly(z, inputStream2);
            throw th;
        }
    }

    private boolean keepChunk(int i, ChunkType[] chunkTypeArr) {
        if (chunkTypeArr == null) {
            return true;
        }
        for (ChunkType chunkType : chunkTypeArr) {
            if (chunkType.value == i) {
                return true;
            }
        }
        return false;
    }

    private List<PngChunk> readChunks(InputStream inputStream, ChunkType[] chunkTypeArr, boolean z) throws IOException, ImageReadException {
        int i;
        ArrayList arrayList = new ArrayList();
        do {
            if (getDebug()) {
                System.out.println("");
            }
            int i2 = BinaryFunctions.read4Bytes("Length", inputStream, "Not a Valid PNG File", getByteOrder());
            i = BinaryFunctions.read4Bytes("ChunkType", inputStream, "Not a Valid PNG File", getByteOrder());
            if (getDebug()) {
                BinaryFunctions.printCharQuad("ChunkType", i);
                debugNumber("Length", i2, 4);
            }
            boolean zKeepChunk = keepChunk(i, chunkTypeArr);
            byte[] bytes = null;
            if (zKeepChunk) {
                bytes = BinaryFunctions.readBytes("Chunk Data", inputStream, i2, "Not a Valid PNG File: Couldn't read Chunk Data.");
            } else {
                BinaryFunctions.skipBytes(inputStream, i2, "Not a Valid PNG File");
            }
            if (getDebug() && bytes != null) {
                debugNumber("bytes", bytes.length, 4);
            }
            int i3 = BinaryFunctions.read4Bytes("CRC", inputStream, "Not a Valid PNG File", getByteOrder());
            if (zKeepChunk) {
                if (i == ChunkType.iCCP.value) {
                    arrayList.add(new PngChunkIccp(i2, i, i3, bytes));
                } else if (i == ChunkType.tEXt.value) {
                    arrayList.add(new PngChunkText(i2, i, i3, bytes));
                } else if (i == ChunkType.zTXt.value) {
                    arrayList.add(new PngChunkZtxt(i2, i, i3, bytes));
                } else if (i == ChunkType.IHDR.value) {
                    arrayList.add(new PngChunkIhdr(i2, i, i3, bytes));
                } else if (i == ChunkType.PLTE.value) {
                    arrayList.add(new PngChunkPlte(i2, i, i3, bytes));
                } else if (i == ChunkType.pHYs.value) {
                    arrayList.add(new PngChunkPhys(i2, i, i3, bytes));
                } else if (i == ChunkType.IDAT.value) {
                    arrayList.add(new PngChunkIdat(i2, i, i3, bytes));
                } else if (i == ChunkType.gAMA.value) {
                    arrayList.add(new PngChunkGama(i2, i, i3, bytes));
                } else if (i == ChunkType.iTXt.value) {
                    arrayList.add(new PngChunkItxt(i2, i, i3, bytes));
                } else {
                    arrayList.add(new PngChunk(i2, i, i3, bytes));
                }
                if (z) {
                    return arrayList;
                }
            }
        } while (i != ChunkType.IEND.value);
        return arrayList;
    }

    public void readSignature(InputStream inputStream) throws IOException, ImageReadException {
        BinaryFunctions.readAndVerifyBytes(inputStream, PngConstants.PNG_SIGNATURE, "Not a Valid PNG Segment: Incorrect Signature");
    }

    private List<PngChunk> readChunks(ByteSource byteSource, ChunkType[] chunkTypeArr, boolean z) throws Throwable {
        InputStream inputStream;
        try {
            inputStream = byteSource.getInputStream();
            try {
                readSignature(inputStream);
                List<PngChunk> chunks = readChunks(inputStream, chunkTypeArr, z);
                IoUtils.closeQuietly(true, inputStream);
                return chunks;
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
    public byte[] getICCProfileBytes(ByteSource byteSource, Map<String, Object> map) throws Throwable {
        List<PngChunk> chunks = readChunks(byteSource, new ChunkType[]{ChunkType.iCCP}, true);
        if (chunks == null || chunks.isEmpty()) {
            return null;
        }
        if (chunks.size() > 1) {
            throw new ImageReadException("PNG contains more than one ICC Profile ");
        }
        return ((PngChunkIccp) chunks.get(0)).getUncompressedProfile();
    }

    @Override // org.apache.commons.imaging.ImageParser
    public Dimension getImageSize(ByteSource byteSource, Map<String, Object> map) throws Throwable {
        List<PngChunk> chunks = readChunks(byteSource, new ChunkType[]{ChunkType.IHDR}, true);
        if (chunks == null || chunks.isEmpty()) {
            throw new ImageReadException("Png: No chunks");
        }
        if (chunks.size() > 1) {
            throw new ImageReadException("PNG contains more than one Header");
        }
        PngChunkIhdr pngChunkIhdr = (PngChunkIhdr) chunks.get(0);
        return new Dimension(pngChunkIhdr.width, pngChunkIhdr.height);
    }

    @Override // org.apache.commons.imaging.ImageParser
    public ImageMetadata getMetadata(ByteSource byteSource, Map<String, Object> map) throws Throwable {
        List<PngChunk> chunks = readChunks(byteSource, new ChunkType[]{ChunkType.tEXt, ChunkType.zTXt}, true);
        if (chunks == null || chunks.isEmpty()) {
            return null;
        }
        GenericImageMetadata genericImageMetadata = new GenericImageMetadata();
        Iterator<PngChunk> it = chunks.iterator();
        while (it.hasNext()) {
            PngTextChunk pngTextChunk = (PngTextChunk) it.next();
            genericImageMetadata.add(pngTextChunk.getKeyword(), pngTextChunk.getText());
        }
        return genericImageMetadata;
    }

    private List<PngChunk> filterChunks(List<PngChunk> list, ChunkType chunkType) {
        ArrayList arrayList = new ArrayList();
        for (PngChunk pngChunk : list) {
            if (pngChunk.chunkType == chunkType.value) {
                arrayList.add(pngChunk);
            }
        }
        return arrayList;
    }

    private TransparencyFilter getTransparencyFilter(PngColorType pngColorType, PngChunk pngChunk) throws IOException, ImageReadException {
        switch (PngImageParser$1.$SwitchMap$org$apache$commons$imaging$formats$png$PngColorType[pngColorType.ordinal()]) {
            case 1:
                return new TransparencyFilterGrayscale(pngChunk.getBytes());
            case 2:
                return new TransparencyFilterTrueColor(pngChunk.getBytes());
            case 3:
                return new TransparencyFilterIndexedColor(pngChunk.getBytes());
            default:
                throw new ImageReadException("Simple Transparency not compatible with ColorType: " + pngColorType);
        }
    }

    @Override // org.apache.commons.imaging.ImageParser
    public ImageInfo getImageInfo(ByteSource byteSource, Map<String, Object> map) throws Throwable {
        float f;
        float f2;
        int i;
        int iRound;
        ImageInfo$ColorType imageInfo$ColorType;
        List<PngChunk> chunks = readChunks(byteSource, new ChunkType[]{ChunkType.IHDR, ChunkType.pHYs, ChunkType.tEXt, ChunkType.zTXt, ChunkType.tRNS, ChunkType.PLTE, ChunkType.iTXt}, false);
        if (chunks == null || chunks.isEmpty()) {
            throw new ImageReadException("PNG: no chunks");
        }
        List<PngChunk> listFilterChunks = filterChunks(chunks, ChunkType.IHDR);
        if (listFilterChunks.size() != 1) {
            throw new ImageReadException("PNG contains more than one Header");
        }
        PngChunkIhdr pngChunkIhdr = (PngChunkIhdr) listFilterChunks.get(0);
        boolean zHasAlpha = !filterChunks(chunks, ChunkType.tRNS).isEmpty() ? true : pngChunkIhdr.pngColorType.hasAlpha();
        List<PngChunk> listFilterChunks2 = filterChunks(chunks, ChunkType.pHYs);
        if (listFilterChunks2.size() > 1) {
            throw new ImageReadException("PNG contains more than one pHYs: " + listFilterChunks2.size());
        }
        PngChunkPhys pngChunkPhys = listFilterChunks2.size() == 1 ? (PngChunkPhys) listFilterChunks2.get(0) : null;
        List<PngChunk> listFilterChunks3 = filterChunks(chunks, ChunkType.tEXt);
        List<PngChunk> listFilterChunks4 = filterChunks(chunks, ChunkType.zTXt);
        List<PngChunk> listFilterChunks5 = filterChunks(chunks, ChunkType.iTXt);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<PngChunk> it = listFilterChunks3.iterator();
        while (it.hasNext()) {
            PngChunkText pngChunkText = (PngChunkText) it.next();
            arrayList.add(pngChunkText.keyword + ": " + pngChunkText.text);
            arrayList2.add(pngChunkText.getContents());
        }
        Iterator<PngChunk> it2 = listFilterChunks4.iterator();
        while (it2.hasNext()) {
            PngChunkZtxt pngChunkZtxt = (PngChunkZtxt) it2.next();
            arrayList.add(pngChunkZtxt.keyword + ": " + pngChunkZtxt.text);
            arrayList2.add(pngChunkZtxt.getContents());
        }
        Iterator<PngChunk> it3 = listFilterChunks5.iterator();
        while (it3.hasNext()) {
            PngChunkItxt pngChunkItxt = (PngChunkItxt) it3.next();
            arrayList.add(pngChunkItxt.keyword + ": " + pngChunkItxt.text);
            arrayList2.add(pngChunkItxt.getContents());
        }
        int samplesPerPixel = pngChunkIhdr.bitDepth * pngChunkIhdr.pngColorType.getSamplesPerPixel();
        ImageFormats imageFormats = ImageFormats.PNG;
        int i2 = pngChunkIhdr.height;
        int i3 = pngChunkIhdr.width;
        boolean zIsProgressive = pngChunkIhdr.interlaceMethod.isProgressive();
        if (pngChunkPhys == null || pngChunkPhys.unitSpecifier != 1) {
            f = -1.0f;
            f2 = -1.0f;
            i = -1;
            iRound = -1;
        } else {
            int iRound2 = (int) Math.round(((double) pngChunkPhys.pixelsPerUnitXAxis) * 0.0254d);
            float f3 = (float) (((double) i3) / (((double) pngChunkPhys.pixelsPerUnitXAxis) * 0.0254d));
            iRound = (int) Math.round(((double) pngChunkPhys.pixelsPerUnitYAxis) * 0.0254d);
            f = (float) (((double) i2) / (((double) pngChunkPhys.pixelsPerUnitYAxis) * 0.0254d));
            i = iRound2;
            f2 = f3;
        }
        boolean z = filterChunks(chunks, ChunkType.PLTE).size() > 1;
        switch (PngImageParser$1.$SwitchMap$org$apache$commons$imaging$formats$png$PngColorType[pngChunkIhdr.pngColorType.ordinal()]) {
            case 1:
            case 4:
                imageInfo$ColorType = ImageInfo$ColorType.GRAYSCALE;
                break;
            case 2:
            case 3:
            case 5:
                imageInfo$ColorType = ImageInfo$ColorType.RGB;
                break;
            default:
                throw new ImageReadException("Png: Unknown ColorType: " + pngChunkIhdr.pngColorType);
        }
        return new PngImageInfo("Png", samplesPerPixel, arrayList, imageFormats, "PNG Portable Network Graphics", i2, "image/png", 1, iRound, f, i, f2, i3, zIsProgressive, zHasAlpha, z, imageInfo$ColorType, ImageInfo$CompressionAlgorithm.PNG_FILTER, arrayList2);
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01b1  */
    @Override // org.apache.commons.imaging.ImageParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public BufferedImage getBufferedImage(ByteSource byteSource, Map<String, Object> map) throws Throwable {
        GammaCorrection gammaCorrection;
        BufferedImage colorBufferedImage;
        ScanExpediter scanExpediterSimple;
        HashMap map2 = map == null ? new HashMap() : new HashMap(map);
        if (map2.containsKey("VERBOSE")) {
            map2.remove("VERBOSE");
        }
        List<PngChunk> chunks = readChunks(byteSource, new ChunkType[]{ChunkType.IHDR, ChunkType.PLTE, ChunkType.IDAT, ChunkType.tRNS, ChunkType.iCCP, ChunkType.gAMA, ChunkType.sRGB}, false);
        if (chunks == null || chunks.isEmpty()) {
            throw new ImageReadException("PNG: no chunks");
        }
        List<PngChunk> listFilterChunks = filterChunks(chunks, ChunkType.IHDR);
        if (listFilterChunks.size() != 1) {
            throw new ImageReadException("PNG contains more than one Header");
        }
        PngChunkIhdr pngChunkIhdr = (PngChunkIhdr) listFilterChunks.get(0);
        List<PngChunk> listFilterChunks2 = filterChunks(chunks, ChunkType.PLTE);
        if (listFilterChunks2.size() > 1) {
            throw new ImageReadException("PNG contains more than one Palette");
        }
        ICC_Profile iCC_Profile = null;
        PngChunkPlte pngChunkPlte = listFilterChunks2.size() == 1 ? (PngChunkPlte) listFilterChunks2.get(0) : null;
        List<PngChunk> listFilterChunks3 = filterChunks(chunks, ChunkType.IDAT);
        if (listFilterChunks3.isEmpty()) {
            throw new ImageReadException("PNG missing image data");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Iterator<PngChunk> it = listFilterChunks3.iterator();
        while (it.hasNext()) {
            byteArrayOutputStream.write(((PngChunkIdat) it.next()).getBytes());
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        List<PngChunk> listFilterChunks4 = filterChunks(chunks, ChunkType.tRNS);
        TransparencyFilter transparencyFilter = !listFilterChunks4.isEmpty() ? getTransparencyFilter(pngChunkIhdr.pngColorType, listFilterChunks4.get(0)) : null;
        List<PngChunk> listFilterChunks5 = filterChunks(chunks, ChunkType.sRGB);
        List<PngChunk> listFilterChunks6 = filterChunks(chunks, ChunkType.gAMA);
        List<PngChunk> listFilterChunks7 = filterChunks(chunks, ChunkType.iCCP);
        if (listFilterChunks5.size() > 1) {
            throw new ImageReadException("PNG: unexpected sRGB chunk");
        }
        if (listFilterChunks6.size() > 1) {
            throw new ImageReadException("PNG: unexpected gAMA chunk");
        }
        if (listFilterChunks7.size() > 1) {
            throw new ImageReadException("PNG: unexpected iCCP chunk");
        }
        if (listFilterChunks5.size() == 1) {
            if (getDebug()) {
                System.out.println("sRGB, no color management neccesary.");
            }
        } else {
            if (listFilterChunks7.size() == 1) {
                if (getDebug()) {
                    System.out.println("iCCP.");
                }
                gammaCorrection = null;
                iCC_Profile = ICC_Profile.getInstance(((PngChunkIccp) listFilterChunks7.get(0)).getUncompressedProfile());
            } else if (listFilterChunks6.size() == 1) {
                double gamma = ((PngChunkGama) listFilterChunks6.get(0)).getGamma();
                GammaCorrection gammaCorrection2 = Math.abs(1.0d - gamma) >= 0.5d ? new GammaCorrection(gamma, 1.0d) : null;
                if (gammaCorrection2 != null && pngChunkPlte != null) {
                    pngChunkPlte.correct(gammaCorrection2);
                }
                gammaCorrection = gammaCorrection2;
            }
            int i = pngChunkIhdr.width;
            int i2 = pngChunkIhdr.height;
            PngColorType pngColorType = pngChunkIhdr.pngColorType;
            int i3 = pngChunkIhdr.bitDepth;
            if (pngChunkIhdr.filterMethod == 0) {
                throw new ImageReadException("PNG: unknown FilterMethod: " + pngChunkIhdr.filterMethod);
            }
            int samplesPerPixel = i3 * pngColorType.getSamplesPerPixel();
            boolean z = pngColorType.hasAlpha() || transparencyFilter != null;
            if (pngColorType.isGreyscale()) {
                colorBufferedImage = getBufferedImageFactory(map2).getGrayscaleBufferedImage(i, i2, z);
            } else {
                colorBufferedImage = getBufferedImageFactory(map2).getColorBufferedImage(i, i2, z);
            }
            InflaterInputStream inflaterInputStream = new InflaterInputStream(new ByteArrayInputStream(byteArray));
            switch (PngImageParser$1.$SwitchMap$org$apache$commons$imaging$formats$png$InterlaceMethod[pngChunkIhdr.interlaceMethod.ordinal()]) {
                case 1:
                    scanExpediterSimple = new ScanExpediterSimple(i, i2, inflaterInputStream, colorBufferedImage, pngColorType, i3, samplesPerPixel, pngChunkPlte, gammaCorrection, transparencyFilter);
                    break;
                case 2:
                    scanExpediterSimple = new ScanExpediterInterlaced(i, i2, inflaterInputStream, colorBufferedImage, pngColorType, i3, samplesPerPixel, pngChunkPlte, gammaCorrection, transparencyFilter);
                    break;
                default:
                    throw new ImageReadException("Unknown InterlaceMethod: " + pngChunkIhdr.interlaceMethod);
            }
            scanExpediterSimple.drive();
            if (iCC_Profile == null) {
                return colorBufferedImage;
            }
            Boolean boolValueOf = Boolean.valueOf(new IccProfileParser().issRGB(iCC_Profile));
            return (boolValueOf == null || !boolValueOf.booleanValue()) ? new ColorTools().convertBetweenColorSpaces(colorBufferedImage, new ICC_ColorSpace(iCC_Profile), ColorModel.getRGBdefault().getColorSpace()) : colorBufferedImage;
        }
        gammaCorrection = null;
        int i4 = pngChunkIhdr.width;
        int i22 = pngChunkIhdr.height;
        PngColorType pngColorType2 = pngChunkIhdr.pngColorType;
        int i32 = pngChunkIhdr.bitDepth;
        if (pngChunkIhdr.filterMethod == 0) {
        }
    }

    @Override // org.apache.commons.imaging.ImageParser
    public boolean dumpImageFile(PrintWriter printWriter, ByteSource byteSource) throws Throwable {
        ImageInfo imageInfo = getImageInfo(byteSource);
        if (imageInfo == null) {
            return false;
        }
        imageInfo.toString(printWriter, "");
        List<PngChunk> chunks = readChunks(byteSource, (ChunkType[]) null, false);
        List<PngChunk> listFilterChunks = filterChunks(chunks, ChunkType.IHDR);
        if (listFilterChunks.size() != 1) {
            if (getDebug()) {
                System.out.println("PNG contains more than one Header");
            }
            return false;
        }
        printWriter.println("Color: " + ((PngChunkIhdr) listFilterChunks.get(0)).pngColorType.name());
        printWriter.println("chunks: " + chunks.size());
        if (chunks.isEmpty()) {
            return false;
        }
        for (int i = 0; i < chunks.size(); i++) {
            BinaryFunctions.printCharQuad(printWriter, "\t" + i + ": ", chunks.get(i).chunkType);
        }
        printWriter.println("");
        printWriter.flush();
        return true;
    }

    @Override // org.apache.commons.imaging.ImageParser
    public void writeImage(BufferedImage bufferedImage, OutputStream outputStream, Map<String, Object> map) throws ImageWriteException, IOException {
        new PngWriter(map).writeImage(bufferedImage, outputStream, map);
    }

    @Override // org.apache.commons.imaging.ImageParser
    public String getXmpXml(ByteSource byteSource, Map<String, Object> map) throws Throwable {
        List<PngChunk> chunks = readChunks(byteSource, new ChunkType[]{ChunkType.iTXt}, false);
        if (chunks == null || chunks.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<PngChunk> it = chunks.iterator();
        while (it.hasNext()) {
            PngChunkItxt pngChunkItxt = (PngChunkItxt) it.next();
            if (pngChunkItxt.getKeyword().equals("XML:com.adobe.xmp")) {
                arrayList.add(pngChunkItxt);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        if (arrayList.size() > 1) {
            throw new ImageReadException("PNG contains more than one XMP chunk.");
        }
        return ((PngChunkItxt) arrayList.get(0)).getText();
    }
}
