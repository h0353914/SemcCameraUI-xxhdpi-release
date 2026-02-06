package org.apache.commons.imaging.formats.tiff;

public final class TiffField$OversizeValueElement extends TiffElement {
    final /* synthetic */ TiffField this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TiffField$OversizeValueElement(TiffField tiffField, int i, int i2) {
        super(i, i2);
        this.this$0 = tiffField;
    }

    @Override // org.apache.commons.imaging.formats.tiff.TiffElement
    public String getElementDescription(boolean z) {
        if (z) {
            return null;
        }
        return "OversizeValueElement, tag: " + this.this$0.getTagInfo().name + ", fieldType: " + this.this$0.getFieldType().getName();
    }
}
