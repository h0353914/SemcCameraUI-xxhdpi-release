package android.support.v7.widget;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

/* JADX INFO: loaded from: classes.dex */
class FastScroller$AnimatorUpdater implements ValueAnimator$AnimatorUpdateListener {
    final /* synthetic */ FastScroller this$0;

    FastScroller$AnimatorUpdater(FastScroller fastScroller) {
        this.this$0 = fastScroller;
    }

    @Override // android.animation.ValueAnimator$AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int iFloatValue = (int) (255.0f * ((Float) valueAnimator.getAnimatedValue()).floatValue());
        this.this$0.mVerticalThumbDrawable.setAlpha(iFloatValue);
        this.this$0.mVerticalTrackDrawable.setAlpha(iFloatValue);
        this.this$0.requestRedraw();
    }
}
