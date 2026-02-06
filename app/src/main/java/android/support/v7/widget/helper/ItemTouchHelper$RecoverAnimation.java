package android.support.v7.widget.helper;

import android.animation.Animator;
import android.animation.Animator$AnimatorListener;
import android.animation.ValueAnimator;
import android.support.v7.widget.RecyclerView$ViewHolder;

class ItemTouchHelper$RecoverAnimation implements Animator$AnimatorListener {
    final int mActionState;
    final int mAnimationType;
    private float mFraction;
    boolean mIsPendingCleanup;
    final float mStartDx;
    final float mStartDy;
    final float mTargetX;
    final float mTargetY;
    final RecyclerView$ViewHolder mViewHolder;
    float mX;
    float mY;
    boolean mOverridden = false;
    boolean mEnded = false;
    private final ValueAnimator mValueAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
    }

    ItemTouchHelper$RecoverAnimation(RecyclerView$ViewHolder recyclerView$ViewHolder, int i, int i2, float f, float f2, float f3, float f4) {
        this.mActionState = i2;
        this.mAnimationType = i;
        this.mViewHolder = recyclerView$ViewHolder;
        this.mStartDx = f;
        this.mStartDy = f2;
        this.mTargetX = f3;
        this.mTargetY = f4;
        this.mValueAnimator.addUpdateListener(new ItemTouchHelper$RecoverAnimation$1(this));
        this.mValueAnimator.setTarget(recyclerView$ViewHolder.itemView);
        this.mValueAnimator.addListener(this);
        setFraction(0.0f);
    }

    public void setDuration(long j) {
        this.mValueAnimator.setDuration(j);
    }

    public void start() {
        this.mViewHolder.setIsRecyclable(false);
        this.mValueAnimator.start();
    }

    public void cancel() {
        this.mValueAnimator.cancel();
    }

    public void setFraction(float f) {
        this.mFraction = f;
    }

    public void update() {
        if (this.mStartDx == this.mTargetX) {
            this.mX = this.mViewHolder.itemView.getTranslationX();
        } else {
            this.mX = this.mStartDx + (this.mFraction * (this.mTargetX - this.mStartDx));
        }
        if (this.mStartDy == this.mTargetY) {
            this.mY = this.mViewHolder.itemView.getTranslationY();
        } else {
            this.mY = this.mStartDy + (this.mFraction * (this.mTargetY - this.mStartDy));
        }
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (!this.mEnded) {
            this.mViewHolder.setIsRecyclable(true);
        }
        this.mEnded = true;
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
        setFraction(1.0f);
    }
}
