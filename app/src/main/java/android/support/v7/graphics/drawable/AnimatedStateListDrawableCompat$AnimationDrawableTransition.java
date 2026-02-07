package android.support.v7.graphics.drawable;

import android.animation.ObjectAnimator;
import android.graphics.drawable.AnimationDrawable;
import android.os.Build$VERSION;

/* JADX INFO: loaded from: classes.dex */
class AnimatedStateListDrawableCompat$AnimationDrawableTransition extends AnimatedStateListDrawableCompat$Transition {
    private final ObjectAnimator mAnim;
    private final boolean mHasReversibleFlag;

    AnimatedStateListDrawableCompat$AnimationDrawableTransition(AnimationDrawable animationDrawable, boolean z, boolean z2) {
        super(null);
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        int i = z ? numberOfFrames - 1 : 0;
        int i2 = z ? 0 : numberOfFrames - 1;
        AnimatedStateListDrawableCompat$FrameInterpolator animatedStateListDrawableCompat$FrameInterpolator = new AnimatedStateListDrawableCompat$FrameInterpolator(animationDrawable, z);
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
        if (Build$VERSION.SDK_INT >= 18) {
            objectAnimatorOfInt.setAutoCancel(true);
        }
        objectAnimatorOfInt.setDuration(animatedStateListDrawableCompat$FrameInterpolator.getTotalDuration());
        objectAnimatorOfInt.setInterpolator(animatedStateListDrawableCompat$FrameInterpolator);
        this.mHasReversibleFlag = z2;
        this.mAnim = objectAnimatorOfInt;
    }

    @Override // android.support.v7.graphics.drawable.AnimatedStateListDrawableCompat$Transition
    public boolean canReverse() {
        return this.mHasReversibleFlag;
    }

    @Override // android.support.v7.graphics.drawable.AnimatedStateListDrawableCompat$Transition
    public void start() {
        this.mAnim.start();
    }

    @Override // android.support.v7.graphics.drawable.AnimatedStateListDrawableCompat$Transition
    public void reverse() {
        this.mAnim.reverse();
    }

    @Override // android.support.v7.graphics.drawable.AnimatedStateListDrawableCompat$Transition
    public void stop() {
        this.mAnim.cancel();
    }
}
