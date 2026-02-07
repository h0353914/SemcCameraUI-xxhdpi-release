package org.apache.commons.imaging.formats.jpeg.exif;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
class ExifRewriter$JFIFPieceSegment extends ExifRewriter$JFIFPiece {
    public final int marker;
    public final byte[] markerBytes;
    public final byte[] markerLengthBytes;
    public final byte[] segmentData;

    public ExifRewriter$JFIFPieceSegment(int i, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        super(null);
        this.marker = i;
        this.markerBytes = bArr;
        this.markerLengthBytes = bArr2;
        this.segmentData = bArr3;
    }

    @Override // org.apache.commons.imaging.formats.jpeg.exif.ExifRewriter$JFIFPiece
    protected void write(OutputStream outputStream) throws IOException {
        outputStream.write(this.markerBytes);
        outputStream.write(this.markerLengthBytes);
        outputStream.write(this.segmentData);
    }
}
