package android.support.v7.widget.helper;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

class ItemTouchHelper$RecoverAnimation$1 implements ValueAnimator$AnimatorUpdateListener {
    final /* synthetic */ ItemTouchHelper$RecoverAnimation this$0;

    ItemTouchHelper$RecoverAnimation$1(ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation) {
        this.this$0 = itemTouchHelper$RecoverAnimation;
    }

    @Override // android.animation.ValueAnimator$AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.this$0.setFraction(valueAnimator.getAnimatedFraction());
    }
}
