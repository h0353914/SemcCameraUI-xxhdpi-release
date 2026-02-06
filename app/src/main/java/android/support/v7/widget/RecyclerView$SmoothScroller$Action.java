package android.support.v7.widget;

import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.util.Log;
import android.view.animation.Interpolator;

public class RecyclerView$SmoothScroller$Action {
    public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
    private boolean mChanged;
    private int mConsecutiveUpdates;
    private int mDuration;
    private int mDx;
    private int mDy;
    private Interpolator mInterpolator;
    private int mJumpToPosition;

    public RecyclerView$SmoothScroller$Action(@Px int i, @Px int i2) {
        this(i, i2, Integer.MIN_VALUE, null);
    }

    public RecyclerView$SmoothScroller$Action(@Px int i, @Px int i2, int i3) {
        this(i, i2, i3, null);
    }

    public RecyclerView$SmoothScroller$Action(@Px int i, @Px int i2, int i3, @Nullable Interpolator interpolator) {
        this.mJumpToPosition = -1;
        this.mChanged = false;
        this.mConsecutiveUpdates = 0;
        this.mDx = i;
        this.mDy = i2;
        this.mDuration = i3;
        this.mInterpolator = interpolator;
    }

    public void jumpTo(int i) {
        this.mJumpToPosition = i;
    }

    boolean hasJumpTarget() {
        return this.mJumpToPosition >= 0;
    }

    void runIfNecessary(RecyclerView recyclerView) {
        if (this.mJumpToPosition >= 0) {
            int i = this.mJumpToPosition;
            this.mJumpToPosition = -1;
            recyclerView.jumpToPositionForSmoothScroller(i);
            this.mChanged = false;
            return;
        }
        if (this.mChanged) {
            validate();
            if (this.mInterpolator == null) {
                if (this.mDuration == Integer.MIN_VALUE) {
                    recyclerView.mViewFlinger.smoothScrollBy(this.mDx, this.mDy);
                } else {
                    recyclerView.mViewFlinger.smoothScrollBy(this.mDx, this.mDy, this.mDuration);
                }
            } else {
                recyclerView.mViewFlinger.smoothScrollBy(this.mDx, this.mDy, this.mDuration, this.mInterpolator);
            }
            this.mConsecutiveUpdates++;
            if (this.mConsecutiveUpdates > 10) {
                Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
            }
            this.mChanged = false;
            return;
        }
        this.mConsecutiveUpdates = 0;
    }

    private void validate() {
        if (this.mInterpolator != null && this.mDuration < 1) {
            throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
        }
        if (this.mDuration < 1) {
            throw new IllegalStateException("Scroll duration must be a positive number");
        }
    }

    @Px
    public int getDx() {
        return this.mDx;
    }

    public void setDx(@Px int i) {
        this.mChanged = true;
        this.mDx = i;
    }

    @Px
    public int getDy() {
        return this.mDy;
    }

    public void setDy(@Px int i) {
        this.mChanged = true;
        this.mDy = i;
    }

    public int getDuration() {
        return this.mDuration;
    }

    public void setDuration(int i) {
        this.mChanged = true;
        this.mDuration = i;
    }

    @Nullable
    public Interpolator getInterpolator() {
        return this.mInterpolator;
    }

    public void setInterpolator(@Nullable Interpolator interpolator) {
        this.mChanged = true;
        this.mInterpolator = interpolator;
    }

    public void update(@Px int i, @Px int i2, int i3, @Nullable Interpolator interpolator) {
        this.mDx = i;
        this.mDy = i2;
        this.mDuration = i3;
        this.mInterpolator = interpolator;
        this.mChanged = true;
    }
}
