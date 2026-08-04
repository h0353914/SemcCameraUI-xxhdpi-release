package com.sonyericsson.cameracommon.contentsview;

import com.sonyericsson.android.camera.util.CamLog;
import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Locale;

public class MpoUtils {
    public static final int MULTIANGLE = 2;
    public static final int STEREO = 1;
    public static final String TAG = "MpoUtils";
    public static final int UNKNOWN = 0;

    static boolean isAPP(byte b, byte b2) {
        return b == -1 && b2 >= -32 && b2 <= -17;
    }

    static boolean isAPP2(byte b, byte b2) {
        return b == -1 && b2 == -30;
    }

    static boolean isEOI(byte b, byte b2) {
        return b == -1 && b2 == -39;
    }

    static boolean isSOI(byte b, byte b2) {
        return b == -1 && b2 == -40;
    }

    private MpoUtils() {
    }

    public static int getType(String str) {
        RandomAccessFile randomAccessFile = null;
        try {
            randomAccessFile = new RandomAccessFile(str, "r");
            byte[] bArr = new byte[2];
            while (randomAccessFile.read(bArr) >= 2) {
                if (CamLog.VERBOSE) {
                    CamLog.d("read:" + Integer.toHexString(bArr[0] & 255) + " " + Integer.toHexString(bArr[1] & 255));
                }
                if (isSOI(bArr[0], bArr[1])) {
                    if (CamLog.VERBOSE) {
                        CamLog.d("This segments is SOI.");
                    }
                } else if (isEOI(bArr[0], bArr[1])) {
                    if (CamLog.VERBOSE) {
                        CamLog.d("This segments is EOI.");
                    }
                } else if (isAPP(bArr[0], bArr[1])) {
                    if (CamLog.VERBOSE) {
                        CamLog.d(String.format(Locale.UK, "This segments is APP%d.", Integer.valueOf(bArr[1] + 32)));
                    }
                    long filePointer = randomAccessFile.getFilePointer();
                    filePointer += randomAccessFile.readShort();
                    if (isAPP2(bArr[0], bArr[1]) && checkFormatIdentifier(randomAccessFile)) {
                        if (CamLog.VERBOSE) {
                            CamLog.d("This section has MPF.");
                        }
                        randomAccessFile.readShort();
                        skip(randomAccessFile, 6);
                        int readShort = randomAccessFile.readShort();
                        for (int i = 0; i < readShort; i++) {
                            if (checkMPEntryTag(randomAccessFile)) {
                                if (CamLog.VERBOSE) {
                                    CamLog.d("This tag is MP entry.");
                                }
                                skip(randomAccessFile, 2);
                                int typeFromEntries = typeFromEntries(randomAccessFile.readInt() / 16);
                                if (randomAccessFile != null) {
                                    try {
                                        randomAccessFile.close();
                                    } catch (IOException unused) {
                                    }
                                }
                                return typeFromEntries;
                            }
                            if (CamLog.VERBOSE) {
                                CamLog.d("This tag is not MP entry.");
                            }
                            skip(randomAccessFile, 10);
                        }
                    }
                    randomAccessFile.seek(filePointer);
                } else {
                    if (CamLog.VERBOSE) {
                        CamLog.d("Found unknown marker.");
                    }
                    break;
                }
            }
        } catch (IOException e) {
            CamLog.e("Fail to analize a mpo file by IO Exception. message:" + e.getMessage());
        } finally {
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
            }
        }
        if (CamLog.VERBOSE) {
            CamLog.d("This mpo is unknown image.");
        }
        return 0;
    }

    private static class JpegMaker {
        static final byte APP0 = -32;
        static final byte APP15 = -17;
        static final byte APP2 = -30;
        static final byte EOI = -39;
        static final byte MARKER = -1;
        static final byte SOI = -40;










        private JpegMaker() {
        }
    }

    static int typeFromEntries(int i) {
        if (i == 2) {
            if (CamLog.VERBOSE) {
                CamLog.d("This mpo is stereo image. entries:" + i);
            }
            return 1;
        }
        if (i == 15) {
            if (CamLog.VERBOSE) {
                CamLog.d("This mpo is multi angle image. entries:" + i);
            }
            return 2;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("This mpo is unknown image. entries:" + i);
        }
        return 0;
    }

    static boolean checkFormatIdentifier(RandomAccessFile randomAccessFile) throws IOException {
        byte[] bArr = new byte[4];
        return bArr.length == randomAccessFile.read(bArr) && bArr[0] == 77 && bArr[1] == 80 && bArr[2] == 70 && bArr[3] == 0;
    }

    static boolean checkMPEntryTag(RandomAccessFile randomAccessFile) throws IOException {
        return 45058 == (randomAccessFile.readShort() & 65535);
    }

    static void skip(RandomAccessFile randomAccessFile, int i) throws IOException {
        if (i != randomAccessFile.skipBytes(i)) {
            throw new EOFException();
        }
    }
}
