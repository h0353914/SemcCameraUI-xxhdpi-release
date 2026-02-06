package android.support.v7.graphics.drawable;

abstract class AnimatedStateListDrawableCompat$Transition {
    public boolean canReverse() {
        return false;
    }

    public void reverse() {
    }

    public abstract void start();

    public abstract void stop();

    private AnimatedStateListDrawableCompat$Transition() {
    }

    /* synthetic */ AnimatedStateListDrawableCompat$Transition(AnimatedStateListDrawableCompat$1 animatedStateListDrawableCompat$1) {
        this();
    }
}
