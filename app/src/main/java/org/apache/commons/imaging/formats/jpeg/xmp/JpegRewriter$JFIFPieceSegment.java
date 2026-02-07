package org.apache.commons.imaging.formats.jpeg.xmp;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.imaging.common.BinaryFunctions;
import org.apache.commons.imaging.common.ByteConversions;
import org.apache.commons.imaging.formats.jpeg.JpegConstants;
import org.apache.commons.imaging.formats.jpeg.iptc.IptcParser;

/* JADX INFO: loaded from: classes.dex */
protected class JpegRewriter$JFIFPieceSegment extends JpegRewriter$JFIFPiece {
    public final int marker;
    public final byte[] markerBytes;
    public final byte[] segmentData;
    public final byte[] segmentLengthBytes;

    public JpegRewriter$JFIFPieceSegment(int i, byte[] bArr) {
        this(i, ByteConversions.toBytes((short) i, JpegRewriter.access$000()), ByteConversions.toBytes((short) (bArr.length + 2), JpegRewriter.access$000()), bArr);
    }

    public JpegRewriter$JFIFPieceSegment(int i, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.marker = i;
        this.markerBytes = bArr;
        this.segmentLengthBytes = bArr2;
        this.segmentData = bArr3;
    }

    @Override // org.apache.commons.imaging.formats.jpeg.xmp.JpegRewriter$JFIFPiece
    public String toString() {
        return "[" + getClass().getName() + " (0x" + Integer.toHexString(this.marker) + ")]";
    }

    @Override // org.apache.commons.imaging.formats.jpeg.xmp.JpegRewriter$JFIFPiece
    protected void write(OutputStream outputStream) throws IOException {
        outputStream.write(this.markerBytes);
        outputStream.write(this.segmentLengthBytes);
        outputStream.write(this.segmentData);
    }

    public boolean isApp1Segment() {
        return this.marker == 65505;
    }

    public boolean isAppSegment() {
        return this.marker >= 65504 && this.marker <= 65519;
    }

    public boolean isExifSegment() {
        return this.marker == 65505 && BinaryFunctions.startsWith(this.segmentData, JpegConstants.EXIF_IDENTIFIER_CODE);
    }

    public boolean isPhotoshopApp13Segment() {
        return this.marker == 65517 && new IptcParser().isPhotoshopJpegSegment(this.segmentData);
    }

    public boolean isXmpSegment() {
        return this.marker == 65505 && BinaryFunctions.startsWith(this.segmentData, JpegConstants.XMP_IDENTIFIER);
    }
}
