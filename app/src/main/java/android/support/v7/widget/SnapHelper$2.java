package android.support.v7.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;

class SnapHelper$2 extends LinearSmoothScroller {
    final /* synthetic */ SnapHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SnapHelper$2(SnapHelper snapHelper, Context context) {
        super(context);
        this.this$0 = snapHelper;
    }

    @Override // android.support.v7.widget.LinearSmoothScroller, android.support.v7.widget.RecyclerView$SmoothScroller
    protected void onTargetFound(View view, RecyclerView$State recyclerView$State, RecyclerView$SmoothScroller$Action recyclerView$SmoothScroller$Action) {
        if (this.this$0.mRecyclerView == null) {
            return;
        }
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
}
