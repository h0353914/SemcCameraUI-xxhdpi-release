package org.apache.commons.imaging.formats.jpeg.xmp;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
protected class JpegRewriter$JFIFPieceImageData extends JpegRewriter$JFIFPiece {
    public final byte[] imageData;
    public final byte[] markerBytes;

    public JpegRewriter$JFIFPieceImageData(byte[] bArr, byte[] bArr2) {
        this.markerBytes = bArr;
        this.imageData = bArr2;
    }

    @Override // org.apache.commons.imaging.formats.jpeg.xmp.JpegRewriter$JFIFPiece
    protected void write(OutputStream outputStream) throws IOException {
        outputStream.write(this.markerBytes);
        outputStream.write(this.imageData);
    }
}
