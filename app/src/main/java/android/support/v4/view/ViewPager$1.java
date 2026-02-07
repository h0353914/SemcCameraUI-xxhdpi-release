package android.support.v4.view;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class ViewPager$1 implements Comparator<ViewPager$ItemInfo> {
    ViewPager$1() {
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(ViewPager$ItemInfo viewPager$ItemInfo, ViewPager$ItemInfo viewPager$ItemInfo2) {
        return compare2(viewPager$ItemInfo, viewPager$ItemInfo2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(ViewPager$ItemInfo viewPager$ItemInfo, ViewPager$ItemInfo viewPager$ItemInfo2) {
        return viewPager$ItemInfo.position - viewPager$ItemInfo2.position;
    }
}
