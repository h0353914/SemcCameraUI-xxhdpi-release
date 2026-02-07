package org.apache.commons.imaging.formats.jpeg.iptc;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class IptcRecord$1 implements Comparator<IptcRecord> {
    IptcRecord$1() {
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(IptcRecord iptcRecord, IptcRecord iptcRecord2) {
        return compare2(iptcRecord, iptcRecord2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(IptcRecord iptcRecord, IptcRecord iptcRecord2) {
        return iptcRecord.iptcType.getType() - iptcRecord2.iptcType.getType();
    }
}
