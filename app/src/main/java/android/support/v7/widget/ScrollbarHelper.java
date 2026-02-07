package android.support.v7.widget;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class ScrollbarHelper {
    static int computeScrollOffset(RecyclerView$State recyclerView$State, OrientationHelper orientationHelper, View view, View view2, RecyclerView$LayoutManager recyclerView$LayoutManager, boolean z, boolean z2) {
        int iMax;
        if (recyclerView$LayoutManager.getChildCount() == 0 || recyclerView$State.getItemCount() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMin = Math.min(recyclerView$LayoutManager.getPosition(view), recyclerView$LayoutManager.getPosition(view2));
        int iMax2 = Math.max(recyclerView$LayoutManager.getPosition(view), recyclerView$LayoutManager.getPosition(view2));
        if (z2) {
            iMax = Math.max(0, (recyclerView$State.getItemCount() - iMax2) - 1);
        } else {
            iMax = Math.max(0, iMin);
        }
        if (!z) {
            return iMax;
        }
        return Math.round((iMax * (Math.abs(orientationHelper.getDecoratedEnd(view2) - orientationHelper.getDecoratedStart(view)) / (Math.abs(recyclerView$LayoutManager.getPosition(view) - recyclerView$LayoutManager.getPosition(view2)) + 1))) + (orientationHelper.getStartAfterPadding() - orientationHelper.getDecoratedStart(view)));
    }

    static int computeScrollExtent(RecyclerView$State recyclerView$State, OrientationHelper orientationHelper, View view, View view2, RecyclerView$LayoutManager recyclerView$LayoutManager, boolean z) {
        if (recyclerView$LayoutManager.getChildCount() == 0 || recyclerView$State.getItemCount() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(recyclerView$LayoutManager.getPosition(view) - recyclerView$LayoutManager.getPosition(view2)) + 1;
        }
        return Math.min(orientationHelper.getTotalSpace(), orientationHelper.getDecoratedEnd(view2) - orientationHelper.getDecoratedStart(view));
    }

    static int computeScrollRange(RecyclerView$State recyclerView$State, OrientationHelper orientationHelper, View view, View view2, RecyclerView$LayoutManager recyclerView$LayoutManager, boolean z) {
        if (recyclerView$LayoutManager.getChildCount() == 0 || recyclerView$State.getItemCount() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return recyclerView$State.getItemCount();
        }
        return (int) (((orientationHelper.getDecoratedEnd(view2) - orientationHelper.getDecoratedStart(view)) / (Math.abs(recyclerView$LayoutManager.getPosition(view) - recyclerView$LayoutManager.getPosition(view2)) + 1)) * recyclerView$State.getItemCount());
    }

    private ScrollbarHelper() {
    }
}
