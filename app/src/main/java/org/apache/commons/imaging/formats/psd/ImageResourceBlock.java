package org.apache.commons.imaging.formats.psd;

import java.io.UnsupportedEncodingException;
import org.apache.commons.imaging.util.Debug;

class ImageResourceBlock {
    final byte[] data;
    final int id;
    final byte[] nameData;

    ImageResourceBlock(int i, byte[] bArr, byte[] bArr2) {
        this.id = i;
        this.nameData = bArr;
        this.data = bArr2;
    }

    String getName() throws UnsupportedEncodingException {
        Debug.debug("getName: " + this.nameData.length);
        return new String(this.nameData, "ISO-8859-1");
    }
}
