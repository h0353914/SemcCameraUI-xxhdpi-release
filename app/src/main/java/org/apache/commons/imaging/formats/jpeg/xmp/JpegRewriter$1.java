package org.apache.commons.imaging.formats.jpeg.xmp;

class JpegRewriter$1 implements JpegRewriter$SegmentFilter {
    JpegRewriter$1() {
    }

    @Override // org.apache.commons.imaging.formats.jpeg.xmp.JpegRewriter$SegmentFilter
    public boolean filter(JpegRewriter$JFIFPieceSegment jpegRewriter$JFIFPieceSegment) {
        return jpegRewriter$JFIFPieceSegment.isExifSegment();
    }
}
