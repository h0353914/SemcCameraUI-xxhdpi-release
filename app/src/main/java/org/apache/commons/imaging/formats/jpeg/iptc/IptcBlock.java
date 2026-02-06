package org.apache.commons.imaging.formats.jpeg.iptc;

public class IptcBlock {
    final byte[] blockData;
    final byte[] blockNameBytes;
    public final int blockType;

    public IptcBlock(int i, byte[] bArr, byte[] bArr2) {
        this.blockData = bArr2;
        this.blockNameBytes = bArr;
        this.blockType = i;
    }

    public boolean isIPTCBlock() {
        return this.blockType == 1028;
    }
}
