package android.support.v4.view;

import android.view.View;
import java.util.Comparator;

class ViewPager$ViewPositionComparator implements Comparator<View> {
    ViewPager$ViewPositionComparator() {
    }

    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(View view, View view2) {
        return compare2(view, view2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(View view, View view2) {
        ViewPager$LayoutParams viewPager$LayoutParams = (ViewPager$LayoutParams) view.getLayoutParams();
        ViewPager$LayoutParams viewPager$LayoutParams2 = (ViewPager$LayoutParams) view2.getLayoutParams();
        if (viewPager$LayoutParams.isDecor != viewPager$LayoutParams2.isDecor) {
            return viewPager$LayoutParams.isDecor ? 1 : -1;
        }
        return viewPager$LayoutParams.position - viewPager$LayoutParams2.position;
    }
}
