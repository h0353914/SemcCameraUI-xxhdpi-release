package org.apache.commons.imaging.formats.jpeg.exif;

import java.io.IOException;
import java.io.OutputStream;

abstract class ExifRewriter$JFIFPiece {
    protected abstract void write(OutputStream outputStream) throws IOException;

    private ExifRewriter$JFIFPiece() {
    }

    /* synthetic */ ExifRewriter$JFIFPiece(ExifRewriter$1 exifRewriter$1) {
        this();
    }
}
