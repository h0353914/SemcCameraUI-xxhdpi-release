package org.apache.commons.imaging;

import org.apache.commons.imaging.ImageReadException;

import java.awt.Dimension;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.imaging.common.BinaryFunctions;
import org.apache.commons.imaging.common.bytesource.ByteSource;
import org.apache.commons.imaging.common.bytesource.ByteSourceArray;
import org.apache.commons.imaging.common.bytesource.ByteSourceFile;
import org.apache.commons.imaging.common.bytesource.ByteSourceInputStream;
import org.apache.commons.imaging.icc.IccProfileInfo;
import org.apache.commons.imaging.icc.IccProfileParser;
import org.apache.commons.imaging.util.IoUtils;
import org.apache.commons.imaging.common.ImageMetadata;
import java.awt.color.ICC_Profile;
import java.util.Locale;

public final class Imaging {
    private static final int[] MAGIC_NUMBERS_BMP = { 66, 77 };
    private static final int[] MAGIC_NUMBERS_DCX = { 177, 104 };
    private static final int[] MAGIC_NUMBERS_GIF = { 71, 73 };
    private static final int[] MAGIC_NUMBERS_ICNS = { 105, 99 };
    private static final int[] MAGIC_NUMBERS_JBIG2_1 = { 151, 74 };
    private static final int[] MAGIC_NUMBERS_JBIG2_2 = { 66, 50 };
    private static final int[] MAGIC_NUMBERS_JPEG = { 255, 216 };
    private static final int[] MAGIC_NUMBERS_PAM = { 80, 55 };
    private static final int[] MAGIC_NUMBERS_PBM_A = { 80, 49 };
    private static final int[] MAGIC_NUMBERS_PBM_B = { 80, 52 };
    private static final int[] MAGIC_NUMBERS_PGM_A = { 80, 50 };
    private static final int[] MAGIC_NUMBERS_PGM_B = { 80, 53 };
    private static final int[] MAGIC_NUMBERS_PNG = { 137, 80 };
    private static final int[] MAGIC_NUMBERS_PPM_A = { 80, 51 };
    private static final int[] MAGIC_NUMBERS_PPM_B = { 80, 54 };
    private static final int[] MAGIC_NUMBERS_PSD = { 56, 66 };
    private static final int[] MAGIC_NUMBERS_RGBE = { 35, 63 };
    private static final int[] MAGIC_NUMBERS_TIFF_INTEL = { 73, 73 };
    private static final int[] MAGIC_NUMBERS_TIFF_MOTOROLA = { 77, 77 };

    private Imaging() {
    }

    /* ───────── getICCProfile ───────── */

    public static ICC_Profile getICCProfile(File file) throws IOException, ImageReadException {
        return getICCProfile(file, null);
    }

    public static ICC_Profile getICCProfile(File file, Map<String, Object> map) throws IOException, ImageReadException {
        return getICCProfile(new ByteSourceFile(file), map);
    }

    public static ICC_Profile getICCProfile(InputStream inputStream, String str) throws IOException, ImageReadException {
        return getICCProfile(inputStream, str, null);
    }

    public static ICC_Profile getICCProfile(InputStream inputStream, String str, Map<String, Object> map) throws IOException, ImageReadException {
        return getICCProfile(new ByteSourceInputStream(inputStream, str), map);
    }

    public static ICC_Profile getICCProfile(byte[] bArr) throws IOException, ImageReadException {
        return getICCProfile(bArr, null);
    }

    public static ICC_Profile getICCProfile(byte[] bArr, Map<String, Object> map) throws IOException, ImageReadException {
        return getICCProfile(new ByteSourceArray(bArr), map);
    }

    protected static ICC_Profile getICCProfile(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        byte[] data = getICCProfileBytes(byteSource, map);
        if (data == null) {
            return null;
        }
        IccProfileInfo info = new IccProfileParser().getICCProfileInfo(data);
        if (info == null) {
            return null;
        }
        if (info.issRGB()) {
            return null;
        }
        return ICC_Profile.getInstance(data);
    }

    /* ───────── getICCProfileBytes ───────── */

    public static byte[] getICCProfileBytes(byte[] bArr) throws IOException, ImageReadException {
        return getICCProfileBytes(bArr, null);
    }

    public static byte[] getICCProfileBytes(byte[] bArr, Map<String, Object> map) throws IOException, ImageReadException {
        return getICCProfileBytes(new ByteSourceArray(bArr), map);
    }

    public static byte[] getICCProfileBytes(File file) throws IOException, ImageReadException {
        return getICCProfileBytes(file, null);
    }

    public static byte[] getICCProfileBytes(File file, Map<String, Object> map) throws IOException, ImageReadException {
        return getICCProfileBytes(new ByteSourceFile(file), map);
    }

    private static byte[] getICCProfileBytes(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        return getImageParser(byteSource).getICCProfileBytes(byteSource, map);
    }

    /* ───────── guessFormat ───────── */

    public static ImageFormat guessFormat(byte[] bArr) throws IOException, ImageReadException {
        return guessFormat(new ByteSourceArray(bArr));
    }

    public static ImageFormat guessFormat(File file) throws IOException, ImageReadException {
        return guessFormat(new ByteSourceFile(file));
    }

    public static ImageFormat guessFormat(ByteSource byteSource) throws IOException, ImageReadException {
        if (byteSource == null) {
            return ImageFormats.UNKNOWN;
        }
        InputStream inputStream = null;
        try {
            inputStream = byteSource.getInputStream();
            int read = inputStream.read();
            int read2 = inputStream.read();
            if (read < 0 || read2 < 0) {
                throw new ImageReadException("Couldn't read magic numbers to guess format.");
            }
            int[] iArr = { read & 255, read2 & 255 };
            if (compareBytePair(MAGIC_NUMBERS_GIF, iArr)) {
                return ImageFormats.GIF;
            }
            if (compareBytePair(MAGIC_NUMBERS_PNG, iArr)) {
                return ImageFormats.PNG;
            }
            if (compareBytePair(MAGIC_NUMBERS_JPEG, iArr)) {
                return ImageFormats.JPEG;
            }
            if (compareBytePair(MAGIC_NUMBERS_BMP, iArr)) {
                return ImageFormats.BMP;
            }
            if (compareBytePair(MAGIC_NUMBERS_TIFF_MOTOROLA, iArr)) {
                return ImageFormats.TIFF;
            }
            if (compareBytePair(MAGIC_NUMBERS_TIFF_INTEL, iArr)) {
                return ImageFormats.TIFF;
            }
            if (compareBytePair(MAGIC_NUMBERS_PSD, iArr)) {
                return ImageFormats.PSD;
            }
            if (compareBytePair(MAGIC_NUMBERS_PAM, iArr)) {
                return ImageFormats.PAM;
            }
            if (compareBytePair(MAGIC_NUMBERS_PBM_A, iArr)) {
                return ImageFormats.PBM;
            }
            if (compareBytePair(MAGIC_NUMBERS_PBM_B, iArr)) {
                return ImageFormats.PBM;
            }
            if (compareBytePair(MAGIC_NUMBERS_PGM_A, iArr)) {
                return ImageFormats.PGM;
            }
            if (compareBytePair(MAGIC_NUMBERS_PGM_B, iArr)) {
                return ImageFormats.PGM;
            }
            if (compareBytePair(MAGIC_NUMBERS_PPM_A, iArr)) {
                return ImageFormats.PPM;
            }
            if (compareBytePair(MAGIC_NUMBERS_PPM_B, iArr)) {
                return ImageFormats.PPM;
            }
            if (compareBytePair(MAGIC_NUMBERS_JBIG2_1, iArr)) {
                int read3 = inputStream.read();
                int read4 = inputStream.read();
                if (read3 < 0 || read4 < 0) {
                    throw new ImageReadException("Couldn't read magic numbers to guess format.");
                }
                if (compareBytePair(MAGIC_NUMBERS_JBIG2_2, new int[] { read3 & 255, read4 & 255 })) {
                    return ImageFormats.JBIG2;
                }
            }
            if (compareBytePair(MAGIC_NUMBERS_ICNS, iArr)) {
                return ImageFormats.ICNS;
            }
            if (compareBytePair(MAGIC_NUMBERS_DCX, iArr)) {
                return ImageFormats.DCX;
            }
            if (compareBytePair(MAGIC_NUMBERS_RGBE, iArr)) {
                return ImageFormats.RGBE;
            }
            return ImageFormats.UNKNOWN;
        } finally {
            IoUtils.closeQuietly(true, inputStream);
        }
    }

    private static boolean compareBytePair(int[] iArr, int[] iArr2) {
        return iArr[0] == iArr2[0] && iArr[1] == iArr2[1];
    }

    /* ───────── getImageSize ───────── */

    public static Dimension getImageSize(InputStream inputStream, String str) throws IOException, ImageReadException {
        return getImageSize(inputStream, str, null);
    }

    public static Dimension getImageSize(InputStream inputStream, String str, Map<String, Object> map) throws IOException, ImageReadException {
        return getImageSize(new ByteSourceInputStream(inputStream, str), map);
    }

    public static Dimension getImageSize(byte[] bArr) throws IOException, ImageReadException {
        return getImageSize(bArr, null);
    }

    public static Dimension getImageSize(byte[] bArr, Map<String, Object> map) throws IOException, ImageReadException {
        return getImageSize(new ByteSourceArray(bArr), map);
    }

    public static Dimension getImageSize(File file) throws IOException, ImageReadException {
        return getImageSize(file, null);
    }

    public static Dimension getImageSize(File file, Map<String, Object> map) throws IOException, ImageReadException {
        return getImageSize(new ByteSourceFile(file), map);
    }

    public static Dimension getImageSize(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        return getImageParser(byteSource).getImageSize(byteSource, map);
    }

    /* ───────── getXmpXml ───────── */

    public static String getXmpXml(InputStream inputStream, String str) throws IOException, ImageReadException {
        return getXmpXml(inputStream, str, null);
    }

    public static String getXmpXml(InputStream inputStream, String str, Map<String, Object> map) throws IOException, ImageReadException {
        return getXmpXml(new ByteSourceInputStream(inputStream, str), map);
    }

    public static String getXmpXml(byte[] bArr) throws IOException, ImageReadException {
        return getXmpXml(bArr, null);
    }

    public static String getXmpXml(byte[] bArr, Map<String, Object> map) throws IOException, ImageReadException {
        return getXmpXml(new ByteSourceArray(bArr), map);
    }

    public static String getXmpXml(File file) throws IOException, ImageReadException {
        return getXmpXml(file, null);
    }

    public static String getXmpXml(File file, Map<String, Object> map) throws IOException, ImageReadException {
        return getXmpXml(new ByteSourceFile(file), map);
    }

    public static String getXmpXml(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        return getImageParser(byteSource).getXmpXml(byteSource, map);
    }

    /* ───────── getMetadata ───────── */

    public static ImageMetadata getMetadata(InputStream inputStream, String str)
            throws IOException, ImageReadException {
        return getMetadata(inputStream, str, null);
    }

    public static ImageMetadata getMetadata(InputStream inputStream, String str, Map<String, Object> map)
            throws IOException, ImageReadException {
        return getMetadata(new ByteSourceInputStream(inputStream, str), map);
    }

    public static ImageMetadata getMetadata(byte[] bArr) throws IOException, ImageReadException {
        return getMetadata(bArr, null);
    }

    public static ImageMetadata getMetadata(byte[] bArr, Map<String, Object> map) throws IOException, ImageReadException {
        return getMetadata(new ByteSourceArray(bArr), map);
    }

    public static ImageMetadata getMetadata(File file) throws IOException, ImageReadException {
        return getMetadata(file, null);
    }

    public static ImageMetadata getMetadata(File file, Map<String, Object> map) throws IOException, ImageReadException {
        return getMetadata(new ByteSourceFile(file), map);
    }

    private static ImageMetadata getMetadata(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        return getImageParser(byteSource).getMetadata(byteSource, map);
    }

    /* ───────── getImageInfo ───────── */

    public static ImageInfo getImageInfo(InputStream inputStream, String str) throws IOException, ImageReadException {
        return getImageInfo(inputStream, str, null);
    }

    public static ImageInfo getImageInfo(InputStream inputStream, String str, Map<String, Object> map) throws IOException, ImageReadException {
        return getImageInfo(new ByteSourceInputStream(inputStream, str), map);
    }

    public static ImageInfo getImageInfo(byte[] bArr) throws IOException, ImageReadException {
        return getImageInfo(bArr, null);
    }

    public static ImageInfo getImageInfo(byte[] bArr, Map<String, Object> map) throws IOException, ImageReadException {
        return getImageInfo(new ByteSourceArray(bArr), map);
    }

    public static ImageInfo getImageInfo(File file) throws IOException, ImageReadException {
        return getImageInfo(file, null);
    }

    public static ImageInfo getImageInfo(File file, Map<String, Object> map) throws IOException, ImageReadException {
        return getImageInfo(new ByteSourceFile(file), map);
    }

    public static ImageInfo getImageInfo(String str, byte[] bArr) throws IOException, ImageReadException {
        return getImageInfo(str, bArr, null);
    }

    public static ImageInfo getImageInfo(String str, byte[] bArr, Map<String, Object> map) throws IOException, ImageReadException {
        return getImageInfo(new ByteSourceArray(str, bArr), map);
    }

    private static ImageInfo getImageInfo(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        return getImageParser(byteSource).getImageInfo(byteSource, map);
    }

    /* ───────── getImageParser ───────── */

    private static ImageParser getImageParser(ByteSource byteSource) throws IOException, ImageReadException {
        ImageFormat imageFormat = guessFormat(byteSource);
        if (!imageFormat.equals(ImageFormats.UNKNOWN)) {
            ImageParser[] allImageParsers = ImageParser.getAllImageParsers();
            for (ImageParser imageParser : allImageParsers) {
                if (imageParser.canAcceptType(imageFormat)) {
                    return imageParser;
                }
            }
        }
        String fileName = byteSource.getFilename();
        if (fileName != null) {
            ImageParser[] allImageParsers2 = ImageParser.getAllImageParsers();
            for (ImageParser imageParser2 : allImageParsers2) {
                if (imageParser2.canAcceptExtension(fileName)) {
                    return imageParser2;
                }
            }
        }
        throw new ImageReadException("Can't parse this format.");
    }

    /* ───────── dumpImageFile ───────── */

    public static String dumpImageFile(byte[] bArr) throws IOException, ImageReadException {
        return dumpImageFile(new ByteSourceArray(bArr));
    }

    public static String dumpImageFile(File file) throws IOException, ImageReadException {
        return dumpImageFile(new ByteSourceFile(file));
    }

    private static String dumpImageFile(ByteSource byteSource) throws IOException, ImageReadException {
        return getImageParser(byteSource).dumpImageFile(byteSource);
    }

    /* ───────── getFormatCompliance ───────── */

    public static FormatCompliance getFormatCompliance(byte[] bArr) throws IOException, ImageReadException {
        return getFormatCompliance(new ByteSourceArray(bArr));
    }

    public static FormatCompliance getFormatCompliance(File file) throws IOException, ImageReadException {
        return getFormatCompliance(new ByteSourceFile(file));
    }

    private static FormatCompliance getFormatCompliance(ByteSource byteSource) throws IOException, ImageReadException {
        return getImageParser(byteSource).getFormatCompliance(byteSource);
    }

    /* ───────── getAllBufferedImages ───────── */

    public static List<BufferedImage> getAllBufferedImages(InputStream inputStream, String str)
            throws IOException, ImageReadException {
        return getAllBufferedImages(new ByteSourceInputStream(inputStream, str));
    }

    public static List<BufferedImage> getAllBufferedImages(byte[] bArr) throws IOException, ImageReadException {
        return getAllBufferedImages(new ByteSourceArray(bArr));
    }

    public static List<BufferedImage> getAllBufferedImages(File file) throws IOException, ImageReadException {
        return getAllBufferedImages(new ByteSourceFile(file));
    }

    private static List<BufferedImage> getAllBufferedImages(ByteSource byteSource)
            throws IOException, ImageReadException {
        return getImageParser(byteSource).getAllBufferedImages(byteSource);
    }

    /* ───────── getBufferedImage ───────── */

    public static BufferedImage getBufferedImage(InputStream inputStream) throws IOException, ImageReadException {
        return getBufferedImage(inputStream, (Map<String, Object>) null);
    }

    public static BufferedImage getBufferedImage(InputStream inputStream, Map<String, Object> map)
            throws IOException, ImageReadException {
        String filename = (map == null || !map.containsKey(ImagingConstants.PARAM_KEY_FILENAME)) ? null
                : (String) map.get(ImagingConstants.PARAM_KEY_FILENAME);
        return getBufferedImage(new ByteSourceInputStream(inputStream, filename), map);
    }

    public static BufferedImage getBufferedImage(byte[] bArr) throws IOException, ImageReadException {
        return getBufferedImage(new ByteSourceArray(bArr), (Map<String, Object>) null);
    }

    public static BufferedImage getBufferedImage(byte[] bArr, Map<String, Object> map)
            throws IOException, ImageReadException {
        return getBufferedImage(new ByteSourceArray(bArr), map);
    }

    public static BufferedImage getBufferedImage(File file) throws IOException, ImageReadException {
        return getBufferedImage(new ByteSourceFile(file), (Map<String, Object>) null);
    }

    public static BufferedImage getBufferedImage(File file, Map<String, Object> map)
            throws IOException, ImageReadException {
        return getBufferedImage(new ByteSourceFile(file), map);
    }

    private static BufferedImage getBufferedImage(ByteSource byteSource, Map<String, Object> map)
            throws IOException, ImageReadException {
        ImageParser imageParser = getImageParser(byteSource);
        if (map == null) {
            map = new HashMap<>();
        }
        return imageParser.getBufferedImage(byteSource, map);
    }

    /* ───────── writeImage ───────── */

    public static void writeImage(BufferedImage bufferedImage, File file, ImageFormat imageFormat,
            Map<String, Object> map) throws IOException, ImageWriteException {
        try (OutputStream os = new BufferedOutputStream(new FileOutputStream(file))) {
            writeImage(bufferedImage, os, imageFormat, map);
        }
    }

    public static byte[] writeImageToBytes(BufferedImage bufferedImage, ImageFormat imageFormat,
            Map<String, Object> map) throws ImageWriteException, IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeImage(bufferedImage, byteArrayOutputStream, imageFormat, map);
        return byteArrayOutputStream.toByteArray();
    }

    public static void writeImage(BufferedImage bufferedImage, OutputStream outputStream, ImageFormat imageFormat,
            Map<String, Object> map) throws ImageWriteException, IOException {
        ImageParser[] allImageParsers = ImageParser.getAllImageParsers();
        if (map == null) {
            map = new HashMap<>();
        }
        map.put(ImagingConstants.PARAM_KEY_FORMAT, imageFormat);
        for (ImageParser imageParser : allImageParsers) {
            if (imageParser.canAcceptType(imageFormat)) {
                imageParser.writeImage(bufferedImage, outputStream, map);
                return;
            }
        }
        throw new ImageWriteException("Unknown Format: " + imageFormat);
    }

    /* ───────── hasImageFileExtension ───────── */

    public static boolean hasImageFileExtension(File file) {
        if (file == null || !file.isFile()) {
            return false;
        }
        return hasImageFileExtension(file.getName());
    }

    public static boolean hasImageFileExtension(String fileName) {
        if (fileName == null) {
            return false;
        }
        fileName = fileName.toLowerCase(Locale.ENGLISH);
        ImageParser[] allImageParsers = ImageParser.getAllImageParsers();
        for (ImageParser imageParser : allImageParsers) {
            String[] acceptedExtensions = imageParser.getAcceptedExtensions();
            for (String extension : acceptedExtensions) {
                if (fileName.endsWith(extension.toLowerCase(Locale.ENGLISH))) {
                    return true;
                }
            }
        }
        return false;
    }
}
