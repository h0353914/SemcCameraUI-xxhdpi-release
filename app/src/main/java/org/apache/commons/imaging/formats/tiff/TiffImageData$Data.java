package org.apache.commons.imaging.formats.tiff;

/* JADX INFO: loaded from: classes.dex */
public class TiffImageData$Data extends TiffElement$DataElement {
    public TiffImageData$Data(long j, int i, byte[] bArr) {
        super(j, i, bArr);
    }

    @Override // org.apache.commons.imaging.formats.tiff.TiffElement
    public String getElementDescription(boolean z) {
        return "Tiff image data: " + getDataLength() + " bytes";
    }
}
