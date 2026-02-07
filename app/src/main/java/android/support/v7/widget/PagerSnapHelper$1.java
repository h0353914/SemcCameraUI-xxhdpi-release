package android.support.v7.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class PagerSnapHelper$1 extends LinearSmoothScroller {
    final /* synthetic */ PagerSnapHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PagerSnapHelper$1(PagerSnapHelper pagerSnapHelper, Context context) {
        super(context);
        this.this$0 = pagerSnapHelper;
    }

    @Override // android.support.v7.widget.LinearSmoothScroller, android.support.v7.widget.RecyclerView$SmoothScroller
    protected void onTargetFound(View view, RecyclerView$State recyclerView$State, RecyclerView$SmoothScroller$Action recyclerView$SmoothScroller$Action) {
        int[] iArrCalculateDistanceToFinalSnap = this.this$0.calculateDistanceToFinalSnap(this.this$0.mRecyclerView.getLayoutManager(), view);
        int i = iArrCalculateDistanceToFinalSnap[0];
        int i2 = iArrCalculateDistanceToFinalSnap[1];
        int iCalculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i), Math.abs(i2)));
        if (iCalculateTimeForDeceleration > 0) {
            recyclerView$SmoothScroller$Action.update(i, i2, iCalculateTimeForDeceleration, this.mDecelerateInterpolator);
        }
    }

    @Override // android.support.v7.widget.LinearSmoothScroller
    protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return 100.0f / displayMetrics.densityDpi;
    }

    @Override // android.support.v7.widget.LinearSmoothScroller
    protected int calculateTimeForScrolling(int i) {
        return Math.min(100, super.calculateTimeForScrolling(i));
    }
}
