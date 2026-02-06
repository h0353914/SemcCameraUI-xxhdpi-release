package org.apache.commons.imaging.formats.jpeg.segments;

public class DhtSegment$HuffmanTable {
    private final int[] bits;
    public final int destinationIdentifier;
    private final int[] huffCode;
    private final int[] huffVal;
    public final int tableClass;
    private final int[] huffSize = new int[4096];
    private final int[] minCode = new int[17];
    private final int[] maxCode = new int[17];
    private final int[] valPtr = new int[17];

    public DhtSegment$HuffmanTable(int i, int i2, int[] iArr, int[] iArr2) {
        this.tableClass = i;
        this.destinationIdentifier = i2;
        this.bits = iArr;
        this.huffVal = iArr2;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1;
        int i6 = 1;
        while (true) {
            if (i5 > iArr[i6]) {
                i6++;
                if (i6 > 16) {
                    break;
                } else {
                    i5 = 1;
                }
            } else {
                this.huffSize[i4] = i6;
                i4++;
                i5++;
            }
        }
        this.huffSize[i4] = 0;
        int i7 = this.huffSize[0];
        this.huffCode = new int[i4];
        int i8 = 0;
        int i9 = i7;
        int i10 = 0;
        while (true) {
            this.huffCode[i10] = i8;
            i8++;
            int i11 = i10 + 1;
            if (this.huffSize[i11] != i9) {
                if (this.huffSize[i11] == 0) {
                    break;
                }
                do {
                    i8 <<= 1;
                    i9++;
                } while (this.huffSize[i11] != i9);
            }
            i10 = i11;
        }
        int i12 = 0;
        while (true) {
            i3++;
            if (i3 > 16) {
                return;
            }
            if (iArr[i3] == 0) {
                this.maxCode[i3] = -1;
            } else {
                this.valPtr[i3] = i12;
                this.minCode[i3] = this.huffCode[i12];
                int i13 = i12 + (iArr[i3] - 1);
                this.maxCode[i3] = this.huffCode[i13];
                i12 = i13 + 1;
            }
        }
    }

    public int[] getBits() {
        return this.bits;
    }

    public int[] getHuffVal() {
        return this.huffVal;
    }

    public int[] getHuffSize() {
        return this.huffSize;
    }

    public int[] getHuffCode() {
        return this.huffCode;
    }

    public int[] getMinCode() {
        return this.minCode;
    }

    public int[] getMaxCode() {
        return this.maxCode;
    }

    public int[] getValPtr() {
        return this.valPtr;
    }
}
