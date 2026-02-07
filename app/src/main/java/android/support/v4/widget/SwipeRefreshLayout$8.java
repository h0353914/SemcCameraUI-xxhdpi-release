package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

/* JADX INFO: loaded from: classes.dex */
class SwipeRefreshLayout$8 extends Animation {
    final /* synthetic */ SwipeRefreshLayout this$0;

    SwipeRefreshLayout$8(SwipeRefreshLayout swipeRefreshLayout) {
        this.this$0 = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        this.this$0.setAnimationProgress(this.this$0.mStartingScale + ((-this.this$0.mStartingScale) * f));
        this.this$0.moveToStart(f);
    }
}
