package org.apache.commons.imaging.common.itu_t4;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.ImageWriteException;
import org.apache.commons.imaging.common.itu_t4.T4_T6_Tables;
import org.apache.commons.imaging.util.IoUtils;

public final class T4AndT6Compression {
    public static final int BLACK = 1;
    public static final int WHITE = 0;
    private static final HuffmanTree<Integer> WHITE_RUN_LENGTHS = new HuffmanTree<>();
    private static final HuffmanTree<Integer> BLACK_RUN_LENGTHS = new HuffmanTree<>();
    private static final HuffmanTree<T4_T6_Tables.Entry> CONTROL_CODES = new HuffmanTree<>();

    static {
        try {
            for (T4_T6_Tables.Entry entry : T4_T6_Tables.WHITE_TERMINATING_CODES) {
                WHITE_RUN_LENGTHS.insert(entry.bitString, entry.value);
            }
            for (T4_T6_Tables.Entry entry2 : T4_T6_Tables.WHITE_MAKE_UP_CODES) {
                WHITE_RUN_LENGTHS.insert(entry2.bitString, entry2.value);
            }
            for (T4_T6_Tables.Entry entry3 : T4_T6_Tables.BLACK_TERMINATING_CODES) {
                BLACK_RUN_LENGTHS.insert(entry3.bitString, entry3.value);
            }
            for (T4_T6_Tables.Entry entry4 : T4_T6_Tables.BLACK_MAKE_UP_CODES) {
                BLACK_RUN_LENGTHS.insert(entry4.bitString, entry4.value);
            }
            for (T4_T6_Tables.Entry entry5 : T4_T6_Tables.ADDITIONAL_MAKE_UP_CODES) {
                WHITE_RUN_LENGTHS.insert(entry5.bitString, entry5.value);
                BLACK_RUN_LENGTHS.insert(entry5.bitString, entry5.value);
            }
            CONTROL_CODES.insert(T4_T6_Tables.EOL.bitString, T4_T6_Tables.EOL);
            CONTROL_CODES.insert(T4_T6_Tables.EOL13.bitString, T4_T6_Tables.EOL13);
            CONTROL_CODES.insert(T4_T6_Tables.EOL14.bitString, T4_T6_Tables.EOL14);
            CONTROL_CODES.insert(T4_T6_Tables.EOL15.bitString, T4_T6_Tables.EOL15);
            CONTROL_CODES.insert(T4_T6_Tables.EOL16.bitString, T4_T6_Tables.EOL16);
            CONTROL_CODES.insert(T4_T6_Tables.EOL17.bitString, T4_T6_Tables.EOL17);
            CONTROL_CODES.insert(T4_T6_Tables.EOL18.bitString, T4_T6_Tables.EOL18);
            CONTROL_CODES.insert(T4_T6_Tables.EOL19.bitString, T4_T6_Tables.EOL19);
            CONTROL_CODES.insert(T4_T6_Tables.P.bitString, T4_T6_Tables.P);
            CONTROL_CODES.insert(T4_T6_Tables.H.bitString, T4_T6_Tables.H);
            CONTROL_CODES.insert(T4_T6_Tables.V0.bitString, T4_T6_Tables.V0);
            CONTROL_CODES.insert(T4_T6_Tables.VL1.bitString, T4_T6_Tables.VL1);
            CONTROL_CODES.insert(T4_T6_Tables.VL2.bitString, T4_T6_Tables.VL2);
            CONTROL_CODES.insert(T4_T6_Tables.VL3.bitString, T4_T6_Tables.VL3);
            CONTROL_CODES.insert(T4_T6_Tables.VR1.bitString, T4_T6_Tables.VR1);
            CONTROL_CODES.insert(T4_T6_Tables.VR2.bitString, T4_T6_Tables.VR2);
            CONTROL_CODES.insert(T4_T6_Tables.VR3.bitString, T4_T6_Tables.VR3);
        } catch (HuffmanTreeException e) {
            throw new Error(e);
        }
    }

    private T4AndT6Compression() {
    }

    private static void compress1DLine(BitInputStreamFlexible bitInputStreamFlexible,
            BitArrayOutputStream bitArrayOutputStream, int[] iArr, int i) throws ImageWriteException {
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            try {
                int bits = bitInputStreamFlexible.readBits(1);
                if (iArr != null) {
                    iArr[i4] = bits;
                }
                if (i3 == bits) {
                    i2++;
                } else {
                    writeRunLength(bitArrayOutputStream, i2, i3);
                    i2 = 1;
                    i3 = bits;
                }
            } catch (IOException e) {
                throw new ImageWriteException("Error reading image to compress", e);
            }
        }
        writeRunLength(bitArrayOutputStream, i2, i3);
    }

    public static byte[] compressModifiedHuffman(byte[] bArr, int i, int i2) throws ImageWriteException {
        BitInputStreamFlexible bitInputStreamFlexible = new BitInputStreamFlexible(new ByteArrayInputStream(bArr));
        BitArrayOutputStream bitArrayOutputStream = new BitArrayOutputStream();
        for (int i3 = 0; i3 < i2; i3++) {
            compress1DLine(bitInputStreamFlexible, bitArrayOutputStream, null, i);
            bitInputStreamFlexible.flushCache();
            bitArrayOutputStream.flush();
        }
        return bitArrayOutputStream.toByteArray();
    }

    public static byte[] decompressModifiedHuffman(byte[] bArr, int width, int height) throws ImageReadException {
        BitInputStreamFlexible bis = new BitInputStreamFlexible(new ByteArrayInputStream(bArr));
        BitArrayOutputStream baous = new BitArrayOutputStream();
        for (int y = 0; y < height; y++) {
            int x = 0;
            int color = 0;
            while (x < width) {
                int runLength = readTotalRunLength(bis, color);
                for (int i = 0; i < runLength; i++) {
                    baous.writeBit(color);
                }
                color = 1 - color;
                x += runLength;
            }
            if (x != width) {
                throw new ImageReadException("Unrecoverable row length error in image row " + y);
            }
            bis.flushCache();
            baous.flush();
        }
        return baous.toByteArray();
    }

    public static byte[] compressT4_1D(byte[] bArr, int i, int i2, boolean z) throws ImageWriteException {
        BitInputStreamFlexible bitInputStreamFlexible = new BitInputStreamFlexible(new ByteArrayInputStream(bArr));
        BitArrayOutputStream bitArrayOutputStream = new BitArrayOutputStream();
        if (z) {
            T4_T6_Tables.EOL16.writeBits(bitArrayOutputStream);
        } else {
            T4_T6_Tables.EOL.writeBits(bitArrayOutputStream);
        }
        for (int i3 = 0; i3 < i2; i3++) {
            compress1DLine(bitInputStreamFlexible, bitArrayOutputStream, null, i);
            if (z) {
                int bitsAvailableInCurrentByte = bitArrayOutputStream.getBitsAvailableInCurrentByte();
                if (bitsAvailableInCurrentByte < 4) {
                    bitArrayOutputStream.flush();
                    bitsAvailableInCurrentByte = 8;
                }
                while (bitsAvailableInCurrentByte > 4) {
                    bitArrayOutputStream.writeBit(0);
                    bitsAvailableInCurrentByte--;
                }
            }
            T4_T6_Tables.EOL.writeBits(bitArrayOutputStream);
            bitInputStreamFlexible.flushCache();
        }
        return bitArrayOutputStream.toByteArray();
    }

    public static byte[] decompressT4_1D(byte[] bArr, int width, int height, boolean hasFill)
            throws ImageReadException {
        BitInputStreamFlexible bis = new BitInputStreamFlexible(new ByteArrayInputStream(bArr));
        BitArrayOutputStream baous = new BitArrayOutputStream();
        for (int y = 0; y < height; y++) {
            try {
                if (!isEOL(CONTROL_CODES.decode(bis), hasFill)) {
                    throw new ImageReadException("Expected EOL not found");
                }
                int x = 0;
                int color = 0;
                while (x < width) {
                    int runLength = readTotalRunLength(bis, color);
                    for (int i = 0; i < runLength; i++) {
                        baous.writeBit(color);
                    }
                    color = 1 - color;
                    x += runLength;
                }
                if (x != width) {
                    throw new ImageReadException("Unrecoverable row length error in image row " + y);
                }
                baous.flush();
            } catch (HuffmanTreeException e2) {
                throw new ImageReadException("Decompression error", e2);
            }
        }
        return baous.toByteArray();
    }

    public static byte[] compressT4_2D(byte[] bArr, int i, int i2, boolean z, int i3) throws ImageWriteException {
        BitInputStreamFlexible bitInputStreamFlexible = new BitInputStreamFlexible(new ByteArrayInputStream(bArr));
        BitArrayOutputStream bitArrayOutputStream = new BitArrayOutputStream();
        int[] iArr = new int[i];
        int[] iArr2 = new int[i];
        if (z) {
            T4_T6_Tables.EOL16.writeBits(bitArrayOutputStream);
        } else {
            T4_T6_Tables.EOL.writeBits(bitArrayOutputStream);
        }
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            if (i4 > 0) {
                bitArrayOutputStream.writeBit(0);
                for (int i6 = 0; i6 < i; i6++) {
                    try {
                        iArr2[i6] = bitInputStreamFlexible.readBits(1);
                    } catch (IOException e) {
                        throw new ImageWriteException("Error reading image to compress", e);
                    }
                }
                int i7 = 0;
                int i8 = 0;
                int i9 = nextChangingElement(iArr2, 0, 0);
                int i10 = nextChangingElement(iArr, 0, 0);
                int i11 = nextChangingElement(iArr, 1, i10 + 1);
                while (i7 < i) {
                    if (i11 < i9) {
                        T4_T6_Tables.P.writeBits(bitArrayOutputStream);
                        i7 = i11;
                    } else {
                        int i12 = i9 - i10;
                        if (i12 >= -3 && i12 <= 3) {
                            T4_T6_Tables.Entry entry;
                            if (i12 == -3) {
                                entry = T4_T6_Tables.VL3;
                            } else if (i12 == -2) {
                                entry = T4_T6_Tables.VL2;
                            } else if (i12 == -1) {
                                entry = T4_T6_Tables.VL1;
                            } else if (i12 == 0) {
                                entry = T4_T6_Tables.V0;
                            } else if (i12 == 1) {
                                entry = T4_T6_Tables.VR1;
                            } else if (i12 == 2) {
                                entry = T4_T6_Tables.VR2;
                            } else {
                                entry = T4_T6_Tables.VR3;
                            }
                            entry.writeBits(bitArrayOutputStream);
                            i8 = 1 - i8;
                            i7 = i9;
                        } else {
                            int i13 = 1 - i8;
                            int i14 = nextChangingElement(iArr2, i13, i9 + 1);
                            int i15 = i9 - i7;
                            int i16 = i14 - i9;
                            T4_T6_Tables.H.writeBits(bitArrayOutputStream);
                            writeRunLength(bitArrayOutputStream, i15, i8);
                            writeRunLength(bitArrayOutputStream, i16, i13);
                            i7 = i14;
                        }
                    }
                    int i17 = changingElementAt(iArr, i7);
                    int i18 = nextChangingElement(iArr2, i8, i7 + 1);
                    if (i8 == i17) {
                        i10 = nextChangingElement(iArr, i17, i7 + 1);
                    } else {
                        int i19 = nextChangingElement(iArr, i17, i7 + 1);
                        i10 = nextChangingElement(iArr, 1 - i17, i19 + 1);
                    }
                    i11 = nextChangingElement(iArr, 1 - i8, i10 + 1);
                    i9 = i18;
                }
                int[] iArr3 = iArr2;
                iArr2 = iArr;
                iArr = iArr3;
            } else {
                bitArrayOutputStream.writeBit(1);
                compress1DLine(bitInputStreamFlexible, bitArrayOutputStream, iArr, i);
            }
            if (z) {
                int bitsAvailableInCurrentByte = bitArrayOutputStream.getBitsAvailableInCurrentByte();
                if (bitsAvailableInCurrentByte < 4) {
                    bitArrayOutputStream.flush();
                    bitsAvailableInCurrentByte = 8;
                }
                while (bitsAvailableInCurrentByte > 4) {
                    bitArrayOutputStream.writeBit(0);
                    bitsAvailableInCurrentByte--;
                }
            }
            T4_T6_Tables.EOL.writeBits(bitArrayOutputStream);
            i4++;
            if (i4 == i3) {
                i4 = 0;
            }
            bitInputStreamFlexible.flushCache();
        }
        return bitArrayOutputStream.toByteArray();
    }

    public static byte[] decompressT4_2D(byte[] bArr, int width, int height, boolean hasFill)
            throws ImageReadException {
        BitInputStreamFlexible bis = new BitInputStreamFlexible(new ByteArrayInputStream(bArr));
        BitArrayOutputStream baous = new BitArrayOutputStream();
        int[] referenceLine = new int[width];
        for (int y = 0; y < height; y++) {
            try {
                if (!isEOL(CONTROL_CODES.decode(bis), hasFill)) {
                    throw new ImageReadException("Expected EOL not found");
                }
                int tag = bis.readBits(1);
                if (tag == 0) {
                    int a0 = 0;
                    int color = 0;
                    int b1 = nextChangingElement(referenceLine, 0, 0);
                    int b2 = nextChangingElement(referenceLine, 1, b1 + 1);

                    while (a0 < width) {
                        T4_T6_Tables.Entry entry = CONTROL_CODES.decode(bis);
                        if (entry == T4_T6_Tables.P) {
                            fillRange(baous, referenceLine, a0, b2, color);
                            a0 = b2;
                        } else if (entry == T4_T6_Tables.H) {
                            int a0a1 = readTotalRunLength(bis, color);
                            fillRange(baous, referenceLine, a0, a0 + a0a1, color);
                            a0 += a0a1;
                            color = 1 - color;
                            int a1a2 = readTotalRunLength(bis, color);
                            fillRange(baous, referenceLine, a0, a0 + a1a2, color);
                            a0 += a1a2;
                            color = 1 - color;
                        } else {
                            int verticalDelta;
                            if (entry == T4_T6_Tables.V0)
                                verticalDelta = 0;
                            else if (entry == T4_T6_Tables.VL1)
                                verticalDelta = -1;
                            else if (entry == T4_T6_Tables.VL2)
                                verticalDelta = -2;
                            else if (entry == T4_T6_Tables.VL3)
                                verticalDelta = -3;
                            else if (entry == T4_T6_Tables.VR1)
                                verticalDelta = 1;
                            else if (entry == T4_T6_Tables.VR2)
                                verticalDelta = 2;
                            else if (entry == T4_T6_Tables.VR3)
                                verticalDelta = 3;
                            else
                                throw new ImageReadException("Invalid T.4 code");

                            int a1 = b1 + verticalDelta;
                            fillRange(baous, referenceLine, a0, a1, color);
                            a0 = a1;
                            color = 1 - color;
                        }
                        if (a0 < width) {
                            b1 = nextChangingElement(referenceLine, 1 - color, a0 + (a0 == 0 ? 0 : 1));
                            if (changingElementAt(referenceLine, b1) == color) {
                                b1 = nextChangingElement(referenceLine, color, b1 + 1);
                            }
                            b2 = nextChangingElement(referenceLine, 1 - color, b1 + 1);
                        }
                    }
                } else {
                    int color = 0;
                    int x = 0;
                    while (x < width) {
                        int runLength = readTotalRunLength(bis, color);
                        fillRange(baous, referenceLine, x, x + runLength, color);
                        x += runLength;
                        color = 1 - color;
                    }
                }
                baous.flush();
            } catch (IOException | HuffmanTreeException e) {
                throw new ImageReadException("Decompression error", e);
            }
        }
        return baous.toByteArray();
    }

    public static byte[] compressT6(byte[] bArr, int width, int height) throws ImageWriteException {
        BitInputStreamFlexible bitInputStreamFlexible = new BitInputStreamFlexible(new ByteArrayInputStream(bArr));
        try {
            BitArrayOutputStream bitArrayOutputStream = new BitArrayOutputStream();
            int[] iArr = new int[width];
            int[] iArr2 = new int[width];
            for (int i = 0; i < height; i++) {
                for (int i2 = 0; i2 < width; i2++) {
                    try {
                        iArr2[i2] = bitInputStreamFlexible.readBits(1);
                    } catch (IOException e) {
                        throw new ImageWriteException("Error reading image to compress", e);
                    }
                }
                int i3 = 0;
                int i4 = 0;
                int i5 = nextChangingElement(iArr2, 0, 0);
                int i6 = nextChangingElement(iArr, 0, 0);
                int i7 = nextChangingElement(iArr, 1, i6 + 1);
                while (i3 < width) {
                    if (i7 < i5) {
                        T4_T6_Tables.P.writeBits(bitArrayOutputStream);
                        i3 = i7;
                    } else {
                        int i8 = i5 - i6;
                        if (i8 >= -3 && i8 <= 3) {
                            T4_T6_Tables.Entry entry;
                            if (i8 == -3) {
                                entry = T4_T6_Tables.VL3;
                            } else if (i8 == -2) {
                                entry = T4_T6_Tables.VL2;
                            } else if (i8 == -1) {
                                entry = T4_T6_Tables.VL1;
                            } else if (i8 == 0) {
                                entry = T4_T6_Tables.V0;
                            } else if (i8 == 1) {
                                entry = T4_T6_Tables.VR1;
                            } else if (i8 == 2) {
                                entry = T4_T6_Tables.VR2;
                            } else {
                                entry = T4_T6_Tables.VR3;
                            }
                            entry.writeBits(bitArrayOutputStream);
                            i4 = 1 - i4;
                            i3 = i5;
                        } else {
                            int i9 = 1 - i4;
                            int i10 = nextChangingElement(iArr2, i9, i5 + 1);
                            int i11 = i5 - i3;
                            int i12 = i10 - i5;
                            T4_T6_Tables.H.writeBits(bitArrayOutputStream);
                            writeRunLength(bitArrayOutputStream, i11, i4);
                            writeRunLength(bitArrayOutputStream, i12, i9);
                            i3 = i10;
                        }
                    }
                    int i13 = changingElementAt(iArr, i3);
                    int i14 = nextChangingElement(iArr2, i4, i3 + 1);
                    if (i4 == i13) {
                        i6 = nextChangingElement(iArr, i13, i3 + 1);
                    } else {
                        int i15 = nextChangingElement(iArr, i13, i3 + 1);
                        i6 = nextChangingElement(iArr, 1 - i13, i15 + 1);
                    }
                    i7 = nextChangingElement(iArr, 1 - i4, i6 + 1);
                    i5 = i14;
                }
                bitInputStreamFlexible.flushCache();
                int[] iArr3 = iArr2;
                iArr2 = iArr;
                iArr = iArr3;
            }
            T4_T6_Tables.EOL.writeBits(bitArrayOutputStream);
            T4_T6_Tables.EOL.writeBits(bitArrayOutputStream);
            return bitArrayOutputStream.toByteArray();
        } finally {
            IoUtils.closeQuietly(true, bitInputStreamFlexible);
        }
    }

    public static byte[] decompressT6(byte[] bArr, int width, int height) throws ImageReadException {
        BitInputStreamFlexible bis = new BitInputStreamFlexible(new ByteArrayInputStream(bArr));
        BitArrayOutputStream baous = new BitArrayOutputStream();
        int[] referenceLine = new int[width];
        for (int y = 0; y < height; y++) {
            try {
                int a0 = 0;
                int color = 0;
                int b1 = nextChangingElement(referenceLine, 0, 0);
                int b2 = nextChangingElement(referenceLine, 1, b1 + 1);

                while (a0 < width) {
                    T4_T6_Tables.Entry entry = CONTROL_CODES.decode(bis);
                    if (entry == T4_T6_Tables.P) {
                        fillRange(baous, referenceLine, a0, b2, color);
                        a0 = b2;
                    } else if (entry == T4_T6_Tables.H) {
                        int a0a1 = readTotalRunLength(bis, color);
                        fillRange(baous, referenceLine, a0, a0 + a0a1, color);
                        a0 += a0a1;
                        color = 1 - color;
                        int a1a2 = readTotalRunLength(bis, color);
                        fillRange(baous, referenceLine, a0, a0 + a1a2, color);
                        a0 += a1a2;
                        color = 1 - color;
                    } else {
                        int verticalDelta;
                        if (entry == T4_T6_Tables.V0)
                            verticalDelta = 0;
                        else if (entry == T4_T6_Tables.VL1)
                            verticalDelta = -1;
                        else if (entry == T4_T6_Tables.VL2)
                            verticalDelta = -2;
                        else if (entry == T4_T6_Tables.VL3)
                            verticalDelta = -3;
                        else if (entry == T4_T6_Tables.VR1)
                            verticalDelta = 1;
                        else if (entry == T4_T6_Tables.VR2)
                            verticalDelta = 2;
                        else if (entry == T4_T6_Tables.VR3)
                            verticalDelta = 3;
                        else
                            throw new ImageReadException("Invalid T.6 code");

                        int a1 = b1 + verticalDelta;
                        fillRange(baous, referenceLine, a0, a1, color);
                        a0 = a1;
                        color = 1 - color;
                    }
                    if (a0 < width) {
                        b1 = nextChangingElement(referenceLine, 1 - color, a0 + (a0 == 0 ? 0 : 1));
                        if (changingElementAt(referenceLine, b1) == color) {
                            b1 = nextChangingElement(referenceLine, color, b1 + 1);
                        }
                        b2 = nextChangingElement(referenceLine, 1 - color, b1 + 1);
                    }
                }
                baous.flush();
            } catch (HuffmanTreeException e) {
                throw new ImageReadException("Decompression error", e);
            }
        }
        return baous.toByteArray();
    }

    private static boolean isEOL(T4_T6_Tables.Entry entry, boolean z) {
        if (entry == T4_T6_Tables.EOL)
            return true;
        if (z) {
            return entry == T4_T6_Tables.EOL13 || entry == T4_T6_Tables.EOL14 || entry == T4_T6_Tables.EOL15
                    || entry == T4_T6_Tables.EOL16 || entry == T4_T6_Tables.EOL17 || entry == T4_T6_Tables.EOL18
                    || entry == T4_T6_Tables.EOL19;
        }
        return false;
    }

    private static void writeRunLength(BitArrayOutputStream baous, int count, int color) {
        T4_T6_Tables.Entry[] makeUp = (color == 0) ? T4_T6_Tables.WHITE_MAKE_UP_CODES
                : T4_T6_Tables.BLACK_MAKE_UP_CODES;
        T4_T6_Tables.Entry[] term = (color == 0) ? T4_T6_Tables.WHITE_TERMINATING_CODES
                : T4_T6_Tables.BLACK_TERMINATING_CODES;

        while (count >= 1792) {
            T4_T6_Tables.Entry entry = lowerBound(T4_T6_Tables.ADDITIONAL_MAKE_UP_CODES, count);
            entry.writeBits(baous);
            count -= entry.value;
        }
        while (count >= 64) {
            T4_T6_Tables.Entry entry = lowerBound(makeUp, count);
            entry.writeBits(baous);
            count -= entry.value;
        }
        term[count].writeBits(baous);
    }

    private static T4_T6_Tables.Entry lowerBound(T4_T6_Tables.Entry[] entries, int value) {
        int low = 0;
        int high = entries.length - 1;
        while (low < high) {
            int mid = (low + high + 1) >>> 1;
            if (entries[mid].value <= value)
                low = mid;
            else
                high = mid - 1;
        }
        return entries[low];
    }

    private static int readTotalRunLength(BitInputStreamFlexible bis, int color) throws ImageReadException {
        int total = 0;
        Integer val;
        do {
            try {
                val = (color == 0) ? WHITE_RUN_LENGTHS.decode(bis) : BLACK_RUN_LENGTHS.decode(bis);
                total += val;
            } catch (HuffmanTreeException e) {
                throw new ImageReadException("Decompression error", e);
            }
        } while (val >= 64);
        return total;
    }

    private static int changingElementAt(int[] line, int index) {
        if (index < 0 || index >= line.length)
            return 0;
        return line[index];
    }

    private static int nextChangingElement(int[] line, int color, int start) {
        for (int i = start; i < line.length; i++) {
            if (line[i] != color)
                return i;
        }
        return line.length;
    }

    private static void fillRange(BitArrayOutputStream baous, int[] line, int start, int end, int color) {
        for (int i = start; i < end && i < line.length; i++) {
            line[i] = color;
            baous.writeBit(color);
        }
    }
}
