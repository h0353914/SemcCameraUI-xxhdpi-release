package org.apache.commons.imaging.formats.jpeg.xmp;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
protected abstract class JpegRewriter$JFIFPiece {
    protected abstract void write(OutputStream outputStream) throws IOException;

    protected JpegRewriter$JFIFPiece() {
    }

    public String toString() {
        return "[" + getClass().getName() + "]";
    }
}
