package org.apache.commons.imaging.common.mylzw;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteOrder;
import java.util.HashMap;
import java.util.Map;

public class MyLzwCompressor {
    private final ByteOrder byteOrder;
    private final int clearCode;
    private int codeSize;
    private int codes;
    private final boolean earlyLimit;
    private final int eoiCode;
    private final int initialCodeSize;
    private final MyLzwCompressor$Listener listener;
    private final Map<MyLzwCompressor$ByteArray, Integer> map;

    public MyLzwCompressor(int i, ByteOrder byteOrder, boolean z) {
        this(i, byteOrder, z, null);
    }

    public MyLzwCompressor(int i, ByteOrder byteOrder, boolean z, MyLzwCompressor$Listener myLzwCompressor$Listener) {
        this.codes = -1;
        this.map = new HashMap();
        this.listener = myLzwCompressor$Listener;
        this.byteOrder = byteOrder;
        this.earlyLimit = z;
        this.initialCodeSize = i;
        this.clearCode = 1 << i;
        this.eoiCode = this.clearCode + 1;
        if (myLzwCompressor$Listener != null) {
            myLzwCompressor$Listener.init(this.clearCode, this.eoiCode);
        }
        initializeStringTable();
    }

    private void initializeStringTable() {
        this.codeSize = this.initialCodeSize;
        int i = (1 << this.codeSize) + 2;
        this.map.clear();
        int i2 = 0;
        while (true) {
            this.codes = i2;
            if (this.codes >= i) {
                return;
            }
            if (this.codes != this.clearCode && this.codes != this.eoiCode) {
                this.map.put(arrayToKey((byte) this.codes), Integer.valueOf(this.codes));
            }
            i2 = this.codes + 1;
        }
    }

    private void clearTable() {
        initializeStringTable();
        incrementCodeSize();
    }

    private void incrementCodeSize() {
        if (this.codeSize != 12) {
            this.codeSize++;
        }
    }

    private MyLzwCompressor$ByteArray arrayToKey(byte b) {
        return arrayToKey(new byte[]{b}, 0, 1);
    }

    private MyLzwCompressor$ByteArray arrayToKey(byte[] bArr, int i, int i2) {
        return new MyLzwCompressor$ByteArray(bArr, i, i2);
    }

    private void writeDataCode(MyBitOutputStream myBitOutputStream, int i) throws IOException {
        if (this.listener != null) {
            this.listener.dataCode(i);
        }
        writeCode(myBitOutputStream, i);
    }

    private void writeClearCode(MyBitOutputStream myBitOutputStream) throws IOException {
        if (this.listener != null) {
            this.listener.dataCode(this.clearCode);
        }
        writeCode(myBitOutputStream, this.clearCode);
    }

    private void writeEoiCode(MyBitOutputStream myBitOutputStream) throws IOException {
        if (this.listener != null) {
            this.listener.eoiCode(this.eoiCode);
        }
        writeCode(myBitOutputStream, this.eoiCode);
    }

    private void writeCode(MyBitOutputStream myBitOutputStream, int i) throws IOException {
        myBitOutputStream.writeBits(i, this.codeSize);
    }

    private boolean isInTable(byte[] bArr, int i, int i2) {
        return this.map.containsKey(arrayToKey(bArr, i, i2));
    }

    private int codeFromString(byte[] bArr, int i, int i2) throws IOException {
        Integer num = this.map.get(arrayToKey(bArr, i, i2));
        if (num == null) {
            throw new IOException("CodeFromString");
        }
        return num.intValue();
    }

    private boolean addTableEntry(MyBitOutputStream myBitOutputStream, byte[] bArr, int i, int i2) throws IOException {
        return addTableEntry(myBitOutputStream, arrayToKey(bArr, i, i2));
    }

    private boolean addTableEntry(MyBitOutputStream myBitOutputStream, MyLzwCompressor$ByteArray myLzwCompressor$ByteArray) throws IOException {
        boolean z;
        int i = 1 << this.codeSize;
        if (this.earlyLimit) {
            i--;
        }
        if (this.codes != i) {
            z = false;
        } else if (this.codeSize < 12) {
            incrementCodeSize();
            z = false;
        } else {
            writeClearCode(myBitOutputStream);
            clearTable();
            z = true;
        }
        if (!z) {
            this.map.put(myLzwCompressor$ByteArray, Integer.valueOf(this.codes));
            this.codes++;
        }
        return z;
    }

    public byte[] compress(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
        MyBitOutputStream myBitOutputStream = new MyBitOutputStream(byteArrayOutputStream, this.byteOrder);
        initializeStringTable();
        clearTable();
        writeClearCode(myBitOutputStream);
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            int i4 = i2 + 1;
            if (isInTable(bArr, i, i4)) {
                i2 = i4;
            } else {
                writeDataCode(myBitOutputStream, codeFromString(bArr, i, i2));
                addTableEntry(myBitOutputStream, bArr, i, i4);
                i2 = 1;
                i = i3;
            }
        }
        writeDataCode(myBitOutputStream, codeFromString(bArr, i, i2));
        writeEoiCode(myBitOutputStream);
        myBitOutputStream.flushCache();
        return byteArrayOutputStream.toByteArray();
    }
}
