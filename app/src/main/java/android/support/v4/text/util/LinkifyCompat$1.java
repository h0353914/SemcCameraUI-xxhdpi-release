package android.support.v4.text.util;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class LinkifyCompat$1 implements Comparator<LinkifyCompat$LinkSpec> {
    LinkifyCompat$1() {
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(LinkifyCompat$LinkSpec linkifyCompat$LinkSpec, LinkifyCompat$LinkSpec linkifyCompat$LinkSpec2) {
        return compare2(linkifyCompat$LinkSpec, linkifyCompat$LinkSpec2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(LinkifyCompat$LinkSpec linkifyCompat$LinkSpec, LinkifyCompat$LinkSpec linkifyCompat$LinkSpec2) {
        if (linkifyCompat$LinkSpec.start < linkifyCompat$LinkSpec2.start) {
            return -1;
        }
        if (linkifyCompat$LinkSpec.start <= linkifyCompat$LinkSpec2.start && linkifyCompat$LinkSpec.end >= linkifyCompat$LinkSpec2.end) {
            return linkifyCompat$LinkSpec.end > linkifyCompat$LinkSpec2.end ? -1 : 0;
        }
        return 1;
    }
}
