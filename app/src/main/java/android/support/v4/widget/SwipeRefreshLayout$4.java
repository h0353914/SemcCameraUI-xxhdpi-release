package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

/* JADX INFO: loaded from: classes.dex */
class SwipeRefreshLayout$4 extends Animation {
    final /* synthetic */ SwipeRefreshLayout this$0;
    final /* synthetic */ int val$endingAlpha;
    final /* synthetic */ int val$startingAlpha;

    SwipeRefreshLayout$4(SwipeRefreshLayout swipeRefreshLayout, int i, int i2) {
        this.this$0 = swipeRefreshLayout;
        this.val$startingAlpha = i;
        this.val$endingAlpha = i2;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        this.this$0.mProgress.setAlpha((int) (this.val$startingAlpha + ((this.val$endingAlpha - this.val$startingAlpha) * f)));
    }
}
