package org.apache.commons.imaging.formats.jpeg.exif;

import java.io.IOException;
import java.io.OutputStream;

class ExifRewriter$JFIFPieceImageData extends ExifRewriter$JFIFPiece {
    public final byte[] imageData;
    public final byte[] markerBytes;

    public ExifRewriter$JFIFPieceImageData(byte[] bArr, byte[] bArr2) {
        super(null);
        this.markerBytes = bArr;
        this.imageData = bArr2;
    }

    @Override // org.apache.commons.imaging.formats.jpeg.exif.ExifRewriter$JFIFPiece
    protected void write(OutputStream outputStream) throws IOException {
        outputStream.write(this.markerBytes);
        outputStream.write(this.imageData);
    }
}
