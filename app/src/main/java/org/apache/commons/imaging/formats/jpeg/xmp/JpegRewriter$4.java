package org.apache.commons.imaging.formats.jpeg.xmp;

import java.io.IOException;
import java.util.List;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor;

/* JADX INFO: loaded from: classes.dex */
class JpegRewriter$4 implements JpegUtils$Visitor {
    final /* synthetic */ JpegRewriter this$0;
    final /* synthetic */ List val$pieces;
    final /* synthetic */ List val$segmentPieces;

    @Override // org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor
    public boolean beginSOS() {
        return true;
    }

    JpegRewriter$4(JpegRewriter jpegRewriter, List list, List list2) {
        this.this$0 = jpegRewriter;
        this.val$pieces = list;
        this.val$segmentPieces = list2;
    }

    @Override // org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor
    public void visitSOS(int i, byte[] bArr, byte[] bArr2) {
        this.val$pieces.add(new JpegRewriter$JFIFPieceImageData(bArr, bArr2));
    }

    @Override // org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor
    public boolean visitSegment(int i, byte[] bArr, int i2, byte[] bArr2, byte[] bArr3) throws IOException, ImageReadException {
        JpegRewriter$JFIFPieceSegment jpegRewriter$JFIFPieceSegment = new JpegRewriter$JFIFPieceSegment(i, bArr, bArr2, bArr3);
        this.val$pieces.add(jpegRewriter$JFIFPieceSegment);
        this.val$segmentPieces.add(jpegRewriter$JFIFPieceSegment);
        return true;
    }
}
