package org.apache.commons.imaging.common.mylzw;

final class MyLzwCompressor$ByteArray {
    private final byte[] bytes;
    private final int hash;
    private final int length;
    private final int start;

    public MyLzwCompressor$ByteArray(byte[] bArr, int i, int i2) {
        this.bytes = bArr;
        this.start = i;
        this.length = i2;
        int i3 = i2;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = ((i3 + (i3 << 8)) ^ (255 & bArr[i4 + i])) ^ i4;
        }
        this.hash = i3;
    }

    public int hashCode() {
        return this.hash;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof MyLzwCompressor$ByteArray)) {
            return false;
        }
        MyLzwCompressor$ByteArray myLzwCompressor$ByteArray = (MyLzwCompressor$ByteArray) obj;
        if (myLzwCompressor$ByteArray.hash != this.hash || myLzwCompressor$ByteArray.length != this.length) {
            return false;
        }
        for (int i = 0; i < this.length; i++) {
            if (myLzwCompressor$ByteArray.bytes[myLzwCompressor$ByteArray.start + i] != this.bytes[this.start + i]) {
                return false;
            }
        }
        return true;
    }
}
