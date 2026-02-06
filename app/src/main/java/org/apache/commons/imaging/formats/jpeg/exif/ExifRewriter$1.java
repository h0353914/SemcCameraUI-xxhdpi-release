package org.apache.commons.imaging.formats.jpeg.exif;

import java.io.IOException;
import java.util.List;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.common.BinaryFunctions;
import org.apache.commons.imaging.formats.jpeg.JpegConstants;
import org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor;

class ExifRewriter$1 implements JpegUtils$Visitor {
    final /* synthetic */ ExifRewriter this$0;
    final /* synthetic */ List val$exifPieces;
    final /* synthetic */ List val$pieces;

    @Override // org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor
    public boolean beginSOS() {
        return true;
    }

    ExifRewriter$1(ExifRewriter exifRewriter, List list, List list2) {
        this.this$0 = exifRewriter;
        this.val$pieces = list;
        this.val$exifPieces = list2;
    }

    @Override // org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor
    public void visitSOS(int i, byte[] bArr, byte[] bArr2) {
        this.val$pieces.add(new ExifRewriter$JFIFPieceImageData(bArr, bArr2));
    }

    @Override // org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor
    public boolean visitSegment(int i, byte[] bArr, int i2, byte[] bArr2, byte[] bArr3) throws IOException, ImageReadException {
        if (i != 65505) {
            this.val$pieces.add(new ExifRewriter$JFIFPieceSegment(i, bArr, bArr2, bArr3));
            return true;
        }
        if (!BinaryFunctions.startsWith(bArr3, JpegConstants.EXIF_IDENTIFIER_CODE)) {
            this.val$pieces.add(new ExifRewriter$JFIFPieceSegment(i, bArr, bArr2, bArr3));
            return true;
        }
        ExifRewriter$JFIFPieceSegmentExif exifRewriter$JFIFPieceSegmentExif = new ExifRewriter$JFIFPieceSegmentExif(i, bArr, bArr2, bArr3);
        this.val$pieces.add(exifRewriter$JFIFPieceSegmentExif);
        this.val$exifPieces.add(exifRewriter$JFIFPieceSegmentExif);
        return true;
    }
}
