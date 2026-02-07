package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

/* JADX INFO: loaded from: classes.dex */
class SwipeRefreshLayout$3 extends Animation {
    final /* synthetic */ SwipeRefreshLayout this$0;

    SwipeRefreshLayout$3(SwipeRefreshLayout swipeRefreshLayout) {
        this.this$0 = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        this.this$0.setAnimationProgress(1.0f - f);
    }
}
