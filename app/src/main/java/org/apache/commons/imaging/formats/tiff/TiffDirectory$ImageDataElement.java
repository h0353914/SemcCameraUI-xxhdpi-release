package org.apache.commons.imaging.formats.tiff;

/* JADX INFO: loaded from: classes.dex */
public final class TiffDirectory$ImageDataElement extends TiffElement {
    @Override // org.apache.commons.imaging.formats.tiff.TiffElement
    public String getElementDescription(boolean z) {
        if (z) {
            return null;
        }
        return "ImageDataElement";
    }

    public TiffDirectory$ImageDataElement(long j, int i) {
        super(j, i);
    }
}
