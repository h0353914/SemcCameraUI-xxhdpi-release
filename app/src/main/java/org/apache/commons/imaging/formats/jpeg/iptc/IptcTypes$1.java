package org.apache.commons.imaging.formats.jpeg.iptc;

/* JADX INFO: loaded from: classes.dex */
class IptcTypes$1 implements IptcType {
    final /* synthetic */ int val$type;

    @Override // org.apache.commons.imaging.formats.jpeg.iptc.IptcType
    public String getName() {
        return "Unknown";
    }

    IptcTypes$1(int i) {
        this.val$type = i;
    }

    @Override // org.apache.commons.imaging.formats.jpeg.iptc.IptcType
    public int getType() {
        return this.val$type;
    }

    @Override // org.apache.commons.imaging.formats.jpeg.iptc.IptcType
    public String toString() {
        return "Unknown (" + this.val$type + ")";
    }
}
