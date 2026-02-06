package org.apache.commons.imaging.common.itu_t4;

public class T4_T6_Tables$Entry {
    String bitString;
    Integer value;

    public T4_T6_Tables$Entry(String str, int i) {
        this.bitString = str;
        this.value = Integer.valueOf(i);
    }

    public void writeBits(BitArrayOutputStream bitArrayOutputStream) {
        for (int i = 0; i < this.bitString.length(); i++) {
            if (this.bitString.charAt(i) == '0') {
                bitArrayOutputStream.writeBit(0);
            } else {
                bitArrayOutputStream.writeBit(1);
            }
        }
    }
}
