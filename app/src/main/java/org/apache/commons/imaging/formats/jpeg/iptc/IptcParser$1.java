package org.apache.commons.imaging.formats.jpeg.iptc;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class IptcParser$1 implements Comparator<IptcRecord> {
    final /* synthetic */ IptcParser this$0;

    IptcParser$1(IptcParser iptcParser) {
        this.this$0 = iptcParser;
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(IptcRecord iptcRecord, IptcRecord iptcRecord2) {
        return compare2(iptcRecord, iptcRecord2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(IptcRecord iptcRecord, IptcRecord iptcRecord2) {
        return iptcRecord2.iptcType.getType() - iptcRecord.iptcType.getType();
    }
}
