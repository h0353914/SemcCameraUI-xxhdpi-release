package org.apache.commons.imaging.formats.tiff.write;

import java.io.IOException;
import org.apache.commons.imaging.ImageWriteException;
import org.apache.commons.imaging.common.BinaryOutputStream;

/* JADX INFO: loaded from: classes.dex */
abstract class TiffOutputItem {
    public static final long UNDEFINED_VALUE = -1;
    private long offset = -1;

    public abstract String getItemDescription();

    public abstract int getItemLength();

    public abstract void writeItem(BinaryOutputStream binaryOutputStream) throws ImageWriteException, IOException;

    TiffOutputItem() {
    }

    protected long getOffset() {
        return this.offset;
    }

    protected void setOffset(long j) {
        this.offset = j;
    }
}
