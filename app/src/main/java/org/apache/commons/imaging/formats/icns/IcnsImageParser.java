package org.apache.commons.imaging.formats.icns;

import java.awt.Dimension;
import java.awt.image.BufferedImage;
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
import org.apache.commons.imaging.ImageInfo$ColorType;
import org.apache.commons.imaging.ImageInfo$CompressionAlgorithm;
import org.apache.commons.imaging.ImageParser;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.ImageWriteException;
import org.apache.commons.imaging.common.BinaryFunctions;
import org.apache.commons.imaging.common.BinaryOutputStream;
import org.apache.commons.imaging.common.ImageMetadata;
import org.apache.commons.imaging.common.bytesource.ByteSource;
import org.apache.commons.imaging.util.IoUtils;

public class IcnsImageParser extends ImageParser {
    private static final String DEFAULT_EXTENSION = ".icns";
    static final int ICNS_MAGIC = IcnsType.typeAsInt("icns");
    private static final String[] ACCEPTED_EXTENSIONS = {".icns"};

    @Override // org.apache.commons.imaging.ImageParser
    public String getDefaultExtension() {
        return ".icns";
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
        return "Apple Icon Image";
    }

    @Override // org.apache.commons.imaging.ImageParser
    public String getXmpXml(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        return null;
    }

    public IcnsImageParser() {
        super.setByteOrder(ByteOrder.BIG_ENDIAN);
    }

    @Override // org.apache.commons.imaging.ImageParser
    protected String[] getAcceptedExtensions() {
        return ACCEPTED_EXTENSIONS;
    }

    @Override // org.apache.commons.imaging.ImageParser
    protected ImageFormat[] getAcceptedTypes() {
        return new ImageFormat[]{ImageFormats.ICNS};
    }

    @Override // org.apache.commons.imaging.ImageParser
    public ImageInfo getImageInfo(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        HashMap map2 = map == null ? new HashMap() : new HashMap(map);
        if (map2.containsKey("VERBOSE")) {
            map2.remove("VERBOSE");
        }
        if (!map2.isEmpty()) {
            throw new ImageReadException("Unknown parameter: " + map2.keySet().iterator().next());
        }
        List<BufferedImage> listDecodeAllImages = IcnsDecoder.decodeAllImages(readImage(byteSource).icnsElements);
        if (listDecodeAllImages.isEmpty()) {
            throw new ImageReadException("No icons in ICNS file");
        }
        BufferedImage bufferedImage = listDecodeAllImages.get(0);
        return new ImageInfo("Icns", 32, new ArrayList(), ImageFormats.ICNS, "ICNS Apple Icon Image", bufferedImage.getHeight(), "image/x-icns", listDecodeAllImages.size(), 0, 0.0f, 0, 0.0f, bufferedImage.getWidth(), false, true, false, ImageInfo$ColorType.RGB, ImageInfo$CompressionAlgorithm.UNKNOWN);
    }

    @Override // org.apache.commons.imaging.ImageParser
    public Dimension getImageSize(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        HashMap map2 = map == null ? new HashMap() : new HashMap(map);
        if (map2.containsKey("VERBOSE")) {
            map2.remove("VERBOSE");
        }
        if (!map2.isEmpty()) {
            throw new ImageReadException("Unknown parameter: " + map2.keySet().iterator().next());
        }
        List<BufferedImage> listDecodeAllImages = IcnsDecoder.decodeAllImages(readImage(byteSource).icnsElements);
        if (listDecodeAllImages.isEmpty()) {
            throw new ImageReadException("No icons in ICNS file");
        }
        BufferedImage bufferedImage = listDecodeAllImages.get(0);
        return new Dimension(bufferedImage.getWidth(), bufferedImage.getHeight());
    }

    private IcnsImageParser$IcnsHeader readIcnsHeader(InputStream inputStream) throws IOException, ImageReadException {
        int i = BinaryFunctions.read4Bytes("Magic", inputStream, "Not a Valid ICNS File", getByteOrder());
        int i2 = BinaryFunctions.read4Bytes("FileSize", inputStream, "Not a Valid ICNS File", getByteOrder());
        if (i != ICNS_MAGIC) {
            throw new ImageReadException("Not a Valid ICNS File: magic is 0x" + Integer.toHexString(i));
        }
        return new IcnsImageParser$IcnsHeader(i, i2);
    }

    private IcnsImageParser$IcnsElement readIcnsElement(InputStream inputStream) throws IOException {
        int i = BinaryFunctions.read4Bytes("Type", inputStream, "Not a Valid ICNS File", getByteOrder());
        int i2 = BinaryFunctions.read4Bytes("ElementSize", inputStream, "Not a Valid ICNS File", getByteOrder());
        return new IcnsImageParser$IcnsElement(i, i2, BinaryFunctions.readBytes("Data", inputStream, i2 - 8, "Not a Valid ICNS File"));
    }

    private IcnsImageParser$IcnsContents readImage(ByteSource byteSource) throws Throwable {
        InputStream inputStream;
        try {
            inputStream = byteSource.getInputStream();
            try {
                IcnsImageParser$IcnsHeader icnsHeader = readIcnsHeader(inputStream);
                ArrayList arrayList = new ArrayList();
                int i = icnsHeader.fileSize - 8;
                while (i > 0) {
                    IcnsImageParser$IcnsElement icnsElement = readIcnsElement(inputStream);
                    arrayList.add(icnsElement);
                    i -= icnsElement.elementSize;
                }
                IcnsImageParser$IcnsElement[] icnsImageParser$IcnsElementArr = new IcnsImageParser$IcnsElement[arrayList.size()];
                for (int i2 = 0; i2 < icnsImageParser$IcnsElementArr.length; i2++) {
                    icnsImageParser$IcnsElementArr[i2] = (IcnsImageParser$IcnsElement) arrayList.get(i2);
                }
                IcnsImageParser$IcnsContents icnsImageParser$IcnsContents = new IcnsImageParser$IcnsContents(icnsHeader, icnsImageParser$IcnsElementArr);
                IoUtils.closeQuietly(true, inputStream);
                return icnsImageParser$IcnsContents;
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
        IcnsImageParser$IcnsContents image = readImage(byteSource);
        image.icnsHeader.dump(printWriter);
        for (IcnsImageParser$IcnsElement icnsImageParser$IcnsElement : image.icnsElements) {
            icnsImageParser$IcnsElement.dump(printWriter);
        }
        return true;
    }

    @Override // org.apache.commons.imaging.ImageParser
    public final BufferedImage getBufferedImage(ByteSource byteSource, Map<String, Object> map) throws IOException, ImageReadException {
        List<BufferedImage> listDecodeAllImages = IcnsDecoder.decodeAllImages(readImage(byteSource).icnsElements);
        if (!listDecodeAllImages.isEmpty()) {
            return listDecodeAllImages.get(0);
        }
        throw new ImageReadException("No icons in ICNS file");
    }

    @Override // org.apache.commons.imaging.ImageParser
    public List<BufferedImage> getAllBufferedImages(ByteSource byteSource) throws IOException, ImageReadException {
        return IcnsDecoder.decodeAllImages(readImage(byteSource).icnsElements);
    }

    @Override // org.apache.commons.imaging.ImageParser
    public void writeImage(BufferedImage bufferedImage, OutputStream outputStream, Map<String, Object> map) throws ImageWriteException, IOException {
        IcnsType icnsType;
        HashMap map2 = map == null ? new HashMap() : new HashMap(map);
        if (map2.containsKey("FORMAT")) {
            map2.remove("FORMAT");
        }
        if (!map2.isEmpty()) {
            throw new ImageWriteException("Unknown parameter: " + map2.keySet().iterator().next());
        }
        if (bufferedImage.getWidth() == 16 && bufferedImage.getHeight() == 16) {
            icnsType = IcnsType.ICNS_16x16_32BIT_IMAGE;
        } else if (bufferedImage.getWidth() == 32 && bufferedImage.getHeight() == 32) {
            icnsType = IcnsType.ICNS_32x32_32BIT_IMAGE;
        } else if (bufferedImage.getWidth() == 48 && bufferedImage.getHeight() == 48) {
            icnsType = IcnsType.ICNS_48x48_32BIT_IMAGE;
        } else if (bufferedImage.getWidth() == 128 && bufferedImage.getHeight() == 128) {
            icnsType = IcnsType.ICNS_128x128_32BIT_IMAGE;
        } else {
            throw new ImageWriteException("Invalid/unsupported source width " + bufferedImage.getWidth() + " and height " + bufferedImage.getHeight());
        }
        BinaryOutputStream binaryOutputStream = new BinaryOutputStream(outputStream, ByteOrder.BIG_ENDIAN);
        binaryOutputStream.write4Bytes(ICNS_MAGIC);
        binaryOutputStream.write4Bytes(16 + (icnsType.getWidth() * 4 * icnsType.getHeight()) + 4 + 4 + (icnsType.getWidth() * icnsType.getHeight()));
        binaryOutputStream.write4Bytes(icnsType.getType());
        binaryOutputStream.write4Bytes((4 * icnsType.getWidth() * icnsType.getHeight()) + 8);
        for (int i = 0; i < bufferedImage.getHeight(); i++) {
            for (int i2 = 0; i2 < bufferedImage.getWidth(); i2++) {
                int rgb = bufferedImage.getRGB(i2, i);
                binaryOutputStream.write(0);
                binaryOutputStream.write(rgb >> 16);
                binaryOutputStream.write(rgb >> 8);
                binaryOutputStream.write(rgb);
            }
        }
        binaryOutputStream.write4Bytes(IcnsType.find8BPPMaskType(icnsType).getType());
        binaryOutputStream.write4Bytes(8 + (icnsType.getWidth() * icnsType.getWidth()));
        for (int i3 = 0; i3 < bufferedImage.getHeight(); i3++) {
            for (int i4 = 0; i4 < bufferedImage.getWidth(); i4++) {
                binaryOutputStream.write(bufferedImage.getRGB(i4, i3) >> 24);
            }
        }
        binaryOutputStream.close();
    }
}
