package android.support.v7.graphics.drawable;

import android.graphics.drawable.Animatable;

class AnimatedStateListDrawableCompat$AnimatableTransition extends AnimatedStateListDrawableCompat$Transition {
    private final Animatable mA;

    AnimatedStateListDrawableCompat$AnimatableTransition(Animatable animatable) {
        super(null);
        this.mA = animatable;
    }

    @Override // android.support.v7.graphics.drawable.AnimatedStateListDrawableCompat$Transition
    public void start() {
        this.mA.start();
    }

    @Override // android.support.v7.graphics.drawable.AnimatedStateListDrawableCompat$Transition
    public void stop() {
        this.mA.stop();
    }
}
