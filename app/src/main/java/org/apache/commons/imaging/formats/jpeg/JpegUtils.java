package org.apache.commons.imaging.formats.jpeg;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.common.BinaryFileParser;
import org.apache.commons.imaging.common.BinaryFunctions;
import org.apache.commons.imaging.common.ByteConversions;
import org.apache.commons.imaging.common.bytesource.ByteSource;
import org.apache.commons.imaging.util.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public class JpegUtils extends BinaryFileParser {
    public static String getMarkerName(int i) {
        switch (i) {
            case 65472:
                return "SOF0_MARKER";
            case 65473:
                return "SOF1_MARKER";
            case 65474:
                return "SOF2_MARKER";
            case 65475:
                return "SOF3_MARKER";
            case 65476:
                return "SOF4_MARKER";
            case 65477:
                return "SOF5_MARKER";
            case 65478:
                return "SOF6_MARKER";
            case 65479:
                return "SOF7_MARKER";
            case 65480:
                return "SOF8_MARKER";
            case 65481:
                return "SOF9_MARKER";
            case 65482:
                return "SOF10_MARKER";
            case 65483:
                return "SOF11_MARKER";
            case 65484:
                return "DAC_MARKER";
            case 65485:
                return "SOF13_MARKER";
            case 65486:
                return "SOF14_MARKER";
            case 65487:
                return "SOF15_MARKER";
            default:
                switch (i) {
                    case 65498:
                        return "SOS_MARKER";
                    case 65499:
                        return "DQT_MARKER";
                    default:
                        switch (i) {
                            case 65504:
                                return "JFIF_MARKER";
                            case 65505:
                                return "JPEG_APP1_MARKER";
                            case 65506:
                                return "JPEG_APP2_MARKER";
                            default:
                                switch (i) {
                                    case 65517:
                                        return "JPEG_APP13_MARKER";
                                    case 65518:
                                        return "JPEG_APP14_MARKER";
                                    case 65519:
                                        return "JPEG_APP15_MARKER";
                                    default:
                                        return "Unknown";
                                }
                        }
                }
        }
    }

    public JpegUtils() {
        setByteOrder(ByteOrder.BIG_ENDIAN);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x006f, code lost:
    
        if (r12.beginSOS() != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0071, code lost:
    
        r10 = new java.io.Closeable[]{r11};
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0076, code lost:
    
        r12.visitSOS(r5, r6, org.apache.commons.imaging.common.BinaryFunctions.getStreamBytes(r11));
        org.apache.commons.imaging.util.Debug.debug(java.lang.Integer.toString(r2) + " markers");
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0095, code lost:
    
        org.apache.commons.imaging.util.IoUtils.closeQuietly(true, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009c, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void traverseJFIF(ByteSource byteSource, JpegUtils$Visitor jpegUtils$Visitor) throws IOException, ImageReadException {
        InputStream inputStream;
        Closeable[] closeableArr;
        try {
            inputStream = byteSource.getInputStream();
            try {
                BinaryFunctions.readAndVerifyBytes(inputStream, JpegConstants.SOI, "Not a Valid JPEG File: doesn't begin with 0xffd8");
                int i = 0;
                while (true) {
                    byte[] bArr = new byte[2];
                    while (true) {
                        bArr[0] = bArr[1];
                        bArr[1] = BinaryFunctions.readByte("marker", inputStream, "Could not read marker");
                        if ((bArr[0] & 255) == 255 && (bArr[1] & 255) != 255) {
                            break;
                        }
                    }
                    int i2 = (255 & bArr[1]) | ((bArr[0] & 255) << 8);
                    if (i2 == 65497 || i2 == 65498) {
                        break;
                    }
                    byte[] bytes = BinaryFunctions.readBytes("segmentLengthBytes", inputStream, 2, "segmentLengthBytes");
                    int uInt16 = ByteConversions.toUInt16(bytes, getByteOrder());
                    if (!jpegUtils$Visitor.visitSegment(i2, bArr, uInt16, bytes, BinaryFunctions.readBytes("Segment Data", inputStream, uInt16 - 2, "Invalid Segment: insufficient data"))) {
                        closeableArr = new Closeable[]{inputStream};
                        break;
                    }
                    i++;
                }
                IoUtils.closeQuietly(true, closeableArr);
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

    public void dumpJFIF(ByteSource byteSource) throws IOException, ImageReadException {
        traverseJFIF(byteSource, new JpegUtils$1(this));
    }
}
