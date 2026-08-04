package org.apache.commons.imaging.common;
import java.io.IOException;

import java.io.ByteArrayOutputStream;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.util.IoUtils;

public class PackBits {
    public byte[] decompress(byte[] bArr, int i) throws ImageReadException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            if (i4 >= bArr.length) {
                throw new ImageReadException("Tiff: Unpack bits source exhausted: " + i4 + ", done + " + i3 + ", expected + " + i);
            }
            int i6 = bArr[i4++];
            if (i6 >= 0 && i6 <= 127) {
                int i7 = i6 + 1;
                i3 += i7;
                for (int i8 = 0; i8 < i7; i8++) {
                    byteArrayOutputStream.write(bArr[i4++]);
                }
            } else if (i6 >= -127 && i6 <= -1) {
                byte b = bArr[i4++];
                int i9 = (-i6) + 1;
                i3 += i9;
                for (int i10 = 0; i10 < i9; i10++) {
                    byteArrayOutputStream.write(b);
                }
            } else if (i6 == -128) {
                throw new ImageReadException("Packbits: " + i6);
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    private int findNextDuplicate(byte[] bArr, int i) {
        if (i >= bArr.length) {
            return -1;
        }
        byte b = bArr[i];
        int i2 = i + 1;
        while (i2 < bArr.length) {
            byte b2 = bArr[i2];
            if (b2 == b) {
                return i2 - 1;
            }
            i2++;
            b = b2;
        }
        return -1;
    }

    private int findRunLength(byte[] bArr, int i) {
        byte b = bArr[i];
        int i2 = i + 1;
        while (i2 < bArr.length && bArr[i2] == b) {
            i2++;
        }
        return i2 - i;
    }

    public byte[] compress(byte[] bArr) throws IOException, ImageReadException {
        FastByteArrayOutputStream fastByteArrayOutputStream = new FastByteArrayOutputStream(bArr.length * 2);
        try {
            int i2 = 0;
            while (i2 < bArr.length) {
                int iFindNextDuplicate2 = findNextDuplicate(bArr, i2);
                if (iFindNextDuplicate2 == i2) {
                    int iMin = Math.min(findRunLength(bArr, iFindNextDuplicate2), 128);
                    fastByteArrayOutputStream.write(-(iMin - 1));
                    fastByteArrayOutputStream.write(bArr[i2]);
                    i2 += iMin;
                } else {
                    int length = iFindNextDuplicate2 - i2;
                    int iFindRunLength;
                    int i;
                    int iFindNextDuplicate;
                    if (iFindNextDuplicate2 > 0 && (iFindRunLength = findRunLength(bArr, iFindNextDuplicate2)) < 3 && (iFindNextDuplicate = findNextDuplicate(bArr, (i = i2 + length + iFindRunLength))) != i) {
                        length = iFindNextDuplicate - i2;
                        iFindNextDuplicate2 = iFindNextDuplicate;
                    }
                    if (iFindNextDuplicate2 < 0) {
                        length = bArr.length - i2;
                    }
                    int iMin2 = Math.min(length, 128);
                    fastByteArrayOutputStream.write(iMin2 - 1);
                    int i3 = i2;
                    for (int i4 = 0; i4 < iMin2; i4++) {
                        fastByteArrayOutputStream.write(bArr[i3]);
                        i3++;
                    }
                    i2 = i3;
                }
            }
            byte[] byteArray = fastByteArrayOutputStream.toByteArray();
            IoUtils.closeQuietly(true, fastByteArrayOutputStream);
            return byteArray;
        } catch (Exception th) {
            IoUtils.closeQuietly(false, fastByteArrayOutputStream);
            throw new ImageReadException("Error", th);
        }
    }
}
