package org.apache.commons.imaging.formats.tiff.write;

import java.io.IOException;
import org.apache.commons.imaging.ImageWriteException;
import org.apache.commons.imaging.common.BinaryOutputStream;

public class TiffOutputItem$Value extends TiffOutputItem {
    private final byte[] bytes;
    private final String name;

    public TiffOutputItem$Value(String str, byte[] bArr) {
        this.name = str;
        this.bytes = bArr;
    }

    @Override // org.apache.commons.imaging.formats.tiff.write.TiffOutputItem
    public int getItemLength() {
        return this.bytes.length;
    }

    @Override // org.apache.commons.imaging.formats.tiff.write.TiffOutputItem
    public String getItemDescription() {
        return this.name;
    }

    public void updateValue(byte[] bArr) throws ImageWriteException {
        if (this.bytes.length != bArr.length) {
            throw new ImageWriteException("Updated data size mismatch: " + this.bytes.length + " vs. " + bArr.length);
        }
        System.arraycopy(bArr, 0, this.bytes, 0, bArr.length);
    }

    @Override // org.apache.commons.imaging.formats.tiff.write.TiffOutputItem
    public void writeItem(BinaryOutputStream binaryOutputStream) throws ImageWriteException, IOException {
        binaryOutputStream.write(this.bytes);
    }
}
