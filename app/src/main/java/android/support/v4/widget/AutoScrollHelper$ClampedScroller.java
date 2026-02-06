package android.support.v4.widget;

import android.view.animation.AnimationUtils;

class AutoScrollHelper$ClampedScroller {
    private int mEffectiveRampDown;
    private int mRampDownDuration;
    private int mRampUpDuration;
    private float mStopValue;
    private float mTargetVelocityX;
    private float mTargetVelocityY;
    private long mStartTime = Long.MIN_VALUE;
    private long mStopTime = -1;
    private long mDeltaTime = 0;
    private int mDeltaX = 0;
    private int mDeltaY = 0;

    private float interpolateValue(float f) {
        return ((-4.0f) * f * f) + (4.0f * f);
    }

    AutoScrollHelper$ClampedScroller() {
    }

    public void setRampUpDuration(int i) {
        this.mRampUpDuration = i;
    }

    public void setRampDownDuration(int i) {
        this.mRampDownDuration = i;
    }

    public void start() {
        this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
        this.mStopTime = -1L;
        this.mDeltaTime = this.mStartTime;
        this.mStopValue = 0.5f;
        this.mDeltaX = 0;
        this.mDeltaY = 0;
    }

    public void requestStop() {
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.mEffectiveRampDown = AutoScrollHelper.constrain((int) (jCurrentAnimationTimeMillis - this.mStartTime), 0, this.mRampDownDuration);
        this.mStopValue = getValueAt(jCurrentAnimationTimeMillis);
        this.mStopTime = jCurrentAnimationTimeMillis;
    }

    public boolean isFinished() {
        return this.mStopTime > 0 && AnimationUtils.currentAnimationTimeMillis() > this.mStopTime + ((long) this.mEffectiveRampDown);
    }

    private float getValueAt(long j) {
        if (j < this.mStartTime) {
            return 0.0f;
        }
        if (this.mStopTime < 0 || j < this.mStopTime) {
            return 0.5f * AutoScrollHelper.constrain((j - this.mStartTime) / this.mRampUpDuration, 0.0f, 1.0f);
        }
        return (1.0f - this.mStopValue) + (this.mStopValue * AutoScrollHelper.constrain((j - this.mStopTime) / this.mEffectiveRampDown, 0.0f, 1.0f));
    }

    public void computeScrollDelta() {
        if (this.mDeltaTime == 0) {
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        float fInterpolateValue = interpolateValue(getValueAt(jCurrentAnimationTimeMillis));
        long j = jCurrentAnimationTimeMillis - this.mDeltaTime;
        this.mDeltaTime = jCurrentAnimationTimeMillis;
        float f = j * fInterpolateValue;
        this.mDeltaX = (int) (this.mTargetVelocityX * f);
        this.mDeltaY = (int) (f * this.mTargetVelocityY);
    }

    public void setTargetVelocity(float f, float f2) {
        this.mTargetVelocityX = f;
        this.mTargetVelocityY = f2;
    }

    public int getHorizontalDirection() {
        return (int) (this.mTargetVelocityX / Math.abs(this.mTargetVelocityX));
    }

    public int getVerticalDirection() {
        return (int) (this.mTargetVelocityY / Math.abs(this.mTargetVelocityY));
    }

    public int getDeltaX() {
        return this.mDeltaX;
    }

    public int getDeltaY() {
        return this.mDeltaY;
    }
}
