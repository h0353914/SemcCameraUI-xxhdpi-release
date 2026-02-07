package org.apache.commons.imaging.formats.tiff.write;

/* JADX INFO: loaded from: classes.dex */
class TiffOutputSummary$OffsetItem {
    public final TiffOutputItem item;
    public final TiffOutputField itemOffsetField;

    public TiffOutputSummary$OffsetItem(TiffOutputItem tiffOutputItem, TiffOutputField tiffOutputField) {
        this.itemOffsetField = tiffOutputField;
        this.item = tiffOutputItem;
    }
}
