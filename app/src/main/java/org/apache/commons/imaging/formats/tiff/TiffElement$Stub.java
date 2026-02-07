package org.apache.commons.imaging.formats.tiff;

/* JADX INFO: loaded from: classes.dex */
public final class TiffElement$Stub extends TiffElement {
    public TiffElement$Stub(long j, int i) {
        super(j, i);
    }

    @Override // org.apache.commons.imaging.formats.tiff.TiffElement
    public String getElementDescription(boolean z) {
        return "Element, offset: " + this.offset + ", length: " + this.length + ", last: " + (this.offset + ((long) this.length));
    }
}
