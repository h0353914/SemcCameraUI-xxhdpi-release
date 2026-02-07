package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

/* JADX INFO: loaded from: classes.dex */
class SwipeRefreshLayout$6 extends Animation {
    final /* synthetic */ SwipeRefreshLayout this$0;

    SwipeRefreshLayout$6(SwipeRefreshLayout swipeRefreshLayout) {
        this.this$0 = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        int iAbs;
        if (!this.this$0.mUsingCustomStart) {
            iAbs = this.this$0.mSpinnerOffsetEnd - Math.abs(this.this$0.mOriginalOffsetTop);
        } else {
            iAbs = this.this$0.mSpinnerOffsetEnd;
        }
        this.this$0.setTargetOffsetTopAndBottom((this.this$0.mFrom + ((int) ((iAbs - this.this$0.mFrom) * f))) - this.this$0.mCircleView.getTop());
        this.this$0.mProgress.setArrowScale(1.0f - f);
    }
}
