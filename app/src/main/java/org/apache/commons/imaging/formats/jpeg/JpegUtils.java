package org.apache.commons.imaging.formats.jpeg;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.common.BinaryFileParser;
import org.apache.commons.imaging.common.BinaryFunctions;
import org.apache.commons.imaging.common.ByteConversions;
import org.apache.commons.imaging.common.bytesource.ByteSource;

public class JpegUtils extends BinaryFileParser {

    public interface Visitor {
        boolean beginSOS();

        void visitSOS(int marker, byte[] markerBytes, byte[] imageData) throws ImageReadException, IOException;

        boolean visitSegment(int marker, byte[] markerBytes, int segmentLength, byte[] segmentLengthBytes,
                byte[] segmentData) throws IOException, ImageReadException;
    }

    public JpegUtils() {
        setByteOrder(ByteOrder.BIG_ENDIAN);
    }

    public void traverseJFIF(ByteSource byteSource, Visitor visitor) throws IOException, ImageReadException {
        try (InputStream is = byteSource.getInputStream()) {
            BinaryFunctions.readAndVerifyBytes(is, JpegConstants.SOI,
                    "Not a Valid JPEG File: doesn't begin with 0xffd8");
            int i = 0;
            while (true) {
                byte[] bArr = new byte[2];
                do {
                    bArr[0] = bArr[1];
                    bArr[1] = BinaryFunctions.readByte("marker", is, "Could not read marker");
                } while ((bArr[0] & 255) != 255 || (bArr[1] & 255) == 255);
                int i2 = ((bArr[0] & 255) << 8) | (bArr[1] & 255);
                if (i2 == JpegConstants.EOI_MARKER || i2 == JpegConstants.SOS_MARKER) {
                    if (!visitor.beginSOS()) {
                        return;
                    }
                    visitor.visitSOS(i2, bArr, BinaryFunctions.getStreamBytes(is));
                    org.apache.commons.imaging.util.Debug.debug(Integer.toString(i) + " markers");
                    return;
                }
                byte[] bArr2 = BinaryFunctions.readBytes("segmentLengthBytes", is, 2, "segmentLengthBytes");
                int iToUInt16 = ByteConversions.toUInt16(bArr2, getByteOrder());
                byte[] bArr3 = BinaryFunctions.readBytes("Segment Data", is, iToUInt16 - 2,
                        "Invalid Segment: insufficient data");
                if (!visitor.visitSegment(i2, bArr, iToUInt16, bArr2, bArr3)) {
                    return;
                }
                i++;
            }
        }
    }

    public void dumpJFIF(ByteSource byteSource) throws ImageReadException, IOException {
        traverseJFIF(byteSource, new Visitor() {
            @Override
            public boolean beginSOS() {
                return true;
            }

            @Override
            public void visitSOS(int marker, byte[] markerBytes, byte[] imageData) {
                org.apache.commons.imaging.util.Debug.debug("SOS marker.  " + imageData.length + " bytes of image data.");
                org.apache.commons.imaging.util.Debug.debug("");
            }

            @Override
            public boolean visitSegment(int marker, byte[] markerBytes, int segmentLength,
                    byte[] segmentLengthBytes, byte[] segmentData) {
                org.apache.commons.imaging.util.Debug.debug("Segment marker: " + Integer.toHexString(marker)
                        + " (" + getMarkerName(marker) + "), " + segmentData.length + " bytes of segment data.");
                return true;
            }
        });
    }

    public static String getMarkerName(int marker) {
        switch (marker) {
            case JpegConstants.SOS_MARKER:
                return "SOS_MARKER";
            case JpegConstants.JPEG_APP1_MARKER:
                return "JPEG_APP1_MARKER";
            case JpegConstants.JPEG_APP2_MARKER:
                return "JPEG_APP2_MARKER";
            case JpegConstants.JPEG_APP13_MARKER:
                return "JPEG_APP13_MARKER";
            case JpegConstants.JPEG_APP14_MARKER:
                return "JPEG_APP14_MARKER";
            case JpegConstants.JPEG_APP15_MARKER:
                return "JPEG_APP15_MARKER";
            case JpegConstants.JFIF_MARKER:
                return "JFIF_MARKER";
            case JpegConstants.SOF0_MARKER:
                return "SOF0_MARKER";
            case JpegConstants.SOF1_MARKER:
                return "SOF1_MARKER";
            case JpegConstants.SOF2_MARKER:
                return "SOF2_MARKER";
            case JpegConstants.SOF3_MARKER:
                return "SOF3_MARKER";
            case JpegConstants.DHT_MARKER:
                return "DHT_MARKER";
            case JpegConstants.DQT_MARKER:
                return "DQT_MARKER";
            case JpegConstants.DAC_MARKER:
                return "DAC_MARKER";
            default:
                return "Unknown";
        }
    }
}
