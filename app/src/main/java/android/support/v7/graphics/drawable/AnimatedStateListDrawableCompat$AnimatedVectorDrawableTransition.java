package android.support.v7.graphics.drawable;

import android.support.graphics.drawable.AnimatedVectorDrawableCompat;

/* JADX INFO: loaded from: classes.dex */
class AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition extends AnimatedStateListDrawableCompat$Transition {
    private final AnimatedVectorDrawableCompat mAvd;

    AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition(AnimatedVectorDrawableCompat animatedVectorDrawableCompat) {
        super(null);
        this.mAvd = animatedVectorDrawableCompat;
    }

    @Override // android.support.v7.graphics.drawable.AnimatedStateListDrawableCompat$Transition
    public void start() {
        this.mAvd.start();
    }

    @Override // android.support.v7.graphics.drawable.AnimatedStateListDrawableCompat$Transition
    public void stop() {
        this.mAvd.stop();
    }
}
