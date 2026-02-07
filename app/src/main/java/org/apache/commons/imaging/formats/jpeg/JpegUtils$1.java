package org.apache.commons.imaging.formats.jpeg;

import org.apache.commons.imaging.util.Debug;

/* JADX INFO: loaded from: classes.dex */
class JpegUtils$1 implements JpegUtils$Visitor {
    final /* synthetic */ JpegUtils this$0;

    @Override // org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor
    public boolean beginSOS() {
        return true;
    }

    JpegUtils$1(JpegUtils jpegUtils) {
        this.this$0 = jpegUtils;
    }

    @Override // org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor
    public void visitSOS(int i, byte[] bArr, byte[] bArr2) {
        Debug.debug("SOS marker.  " + bArr2.length + " bytes of image data.");
        Debug.debug("");
    }

    @Override // org.apache.commons.imaging.formats.jpeg.JpegUtils$Visitor
    public boolean visitSegment(int i, byte[] bArr, int i2, byte[] bArr2, byte[] bArr3) {
        Debug.debug("Segment marker: " + Integer.toHexString(i) + " (" + JpegUtils.getMarkerName(i) + "), " + bArr3.length + " bytes of segment data.");
        return true;
    }
}
