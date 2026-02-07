package android.support.v7.graphics.drawable;

import android.animation.TimeInterpolator;
import android.graphics.drawable.AnimationDrawable;

/* JADX INFO: loaded from: classes.dex */
class AnimatedStateListDrawableCompat$FrameInterpolator implements TimeInterpolator {
    private int[] mFrameTimes;
    private int mFrames;
    private int mTotalDuration;

    AnimatedStateListDrawableCompat$FrameInterpolator(AnimationDrawable animationDrawable, boolean z) {
        updateFrames(animationDrawable, z);
    }

    int updateFrames(AnimationDrawable animationDrawable, boolean z) {
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        this.mFrames = numberOfFrames;
        if (this.mFrameTimes == null || this.mFrameTimes.length < numberOfFrames) {
            this.mFrameTimes = new int[numberOfFrames];
        }
        int[] iArr = this.mFrameTimes;
        int i = 0;
        for (int i2 = 0; i2 < numberOfFrames; i2++) {
            int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
            iArr[i2] = duration;
            i += duration;
        }
        this.mTotalDuration = i;
        return i;
    }

    int getTotalDuration() {
        return this.mTotalDuration;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        int i = (int) ((f * this.mTotalDuration) + 0.5f);
        int i2 = this.mFrames;
        int[] iArr = this.mFrameTimes;
        int i3 = 0;
        while (i3 < i2 && i >= iArr[i3]) {
            i -= iArr[i3];
            i3++;
        }
        return (i3 / i2) + (i3 < i2 ? i / this.mTotalDuration : 0.0f);
    }
}
