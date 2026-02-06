package org.apache.commons.imaging.formats.jpeg.xmp;

class JpegRewriter$3 implements JpegRewriter$SegmentFilter {
    JpegRewriter$3() {
    }

    @Override // org.apache.commons.imaging.formats.jpeg.xmp.JpegRewriter$SegmentFilter
    public boolean filter(JpegRewriter$JFIFPieceSegment jpegRewriter$JFIFPieceSegment) {
        return jpegRewriter$JFIFPieceSegment.isPhotoshopApp13Segment();
    }
}
