package android.support.v7.widget;

import android.os.Build$VERSION;
import android.support.v4.view.ViewCompat;
import android.view.animation.Interpolator;
import android.widget.OverScroller;

class RecyclerView$ViewFlinger implements Runnable {
    private int mLastFlingX;
    private int mLastFlingY;
    OverScroller mScroller;
    final /* synthetic */ RecyclerView this$0;
    Interpolator mInterpolator = RecyclerView.sQuinticInterpolator;
    private boolean mEatRunOnAnimationRequest = false;
    private boolean mReSchedulePostAnimationCallback = false;

    RecyclerView$ViewFlinger(RecyclerView recyclerView) {
        this.this$0 = recyclerView;
        this.mScroller = new OverScroller(recyclerView.getContext(), RecyclerView.sQuinticInterpolator);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ff  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        if (this.this$0.mLayout == null) {
            stop();
            return;
        }
        disableRunOnAnimationRequests();
        this.this$0.consumePendingUpdateOperations();
        OverScroller overScroller = this.mScroller;
        RecyclerView$SmoothScroller recyclerView$SmoothScroller = this.this$0.mLayout.mSmoothScroller;
        if (overScroller.computeScrollOffset()) {
            int[] iArr = this.this$0.mScrollConsumed;
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i6 = currX - this.mLastFlingX;
            int i7 = currY - this.mLastFlingY;
            this.mLastFlingX = currX;
            this.mLastFlingY = currY;
            if (this.this$0.dispatchNestedPreScroll(i6, i7, iArr, null, 1)) {
                i6 -= iArr[0];
                i7 -= iArr[1];
            }
            if (this.this$0.mAdapter != null) {
                this.this$0.scrollStep(i6, i7, this.this$0.mScrollStepConsumed);
                i = this.this$0.mScrollStepConsumed[0];
                i2 = this.this$0.mScrollStepConsumed[1];
                i3 = i6 - i;
                i4 = i7 - i2;
                if (recyclerView$SmoothScroller != null && !recyclerView$SmoothScroller.isPendingInitialRun() && recyclerView$SmoothScroller.isRunning()) {
                    int itemCount = this.this$0.mState.getItemCount();
                    if (itemCount == 0) {
                        recyclerView$SmoothScroller.stop();
                    } else if (recyclerView$SmoothScroller.getTargetPosition() >= itemCount) {
                        recyclerView$SmoothScroller.setTargetPosition(itemCount - 1);
                        recyclerView$SmoothScroller.onAnimation(i6 - i3, i7 - i4);
                    } else {
                        recyclerView$SmoothScroller.onAnimation(i6 - i3, i7 - i4);
                    }
                }
            } else {
                i = 0;
                i2 = 0;
                i3 = 0;
                i4 = 0;
            }
            if (!this.this$0.mItemDecorations.isEmpty()) {
                this.this$0.invalidate();
            }
            if (this.this$0.getOverScrollMode() != 2) {
                this.this$0.considerReleasingGlowsOnScroll(i6, i7);
            }
            if (!this.this$0.dispatchNestedScroll(i, i2, i3, i4, null, 1) && (i3 != 0 || i4 != 0)) {
                int currVelocity = (int) overScroller.getCurrVelocity();
                if (i3 == currX) {
                    i5 = 0;
                    if (i4 == currY) {
                        currVelocity = 0;
                        if (this.this$0.getOverScrollMode() != 2) {
                            this.this$0.absorbGlows(i5, currVelocity);
                        }
                        if ((i5 == 0 || i3 == currX || overScroller.getFinalX() == 0) && (currVelocity != 0 || i4 == currY || overScroller.getFinalY() == 0)) {
                            overScroller.abortAnimation();
                        }
                    } else {
                        if (i4 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i4 <= 0) {
                        }
                        if (this.this$0.getOverScrollMode() != 2) {
                        }
                        if (i5 == 0) {
                            overScroller.abortAnimation();
                        } else {
                            overScroller.abortAnimation();
                        }
                    }
                } else {
                    if (i3 < 0) {
                        i5 = -currVelocity;
                    } else if (i3 > 0) {
                        i5 = currVelocity;
                    }
                    if (i4 == currY) {
                    }
                }
            }
            if (i != 0 || i2 != 0) {
                this.this$0.dispatchOnScrolled(i, i2);
            }
            if (!RecyclerView.access$200(this.this$0)) {
                this.this$0.invalidate();
            }
            boolean z = (i6 == 0 && i7 == 0) || (i6 != 0 && this.this$0.mLayout.canScrollHorizontally() && i == i6) || (i7 != 0 && this.this$0.mLayout.canScrollVertically() && i2 == i7);
            if (overScroller.isFinished() || (!z && !this.this$0.hasNestedScrollingParent(1))) {
                this.this$0.setScrollState(0);
                if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                    this.this$0.mPrefetchRegistry.clearPrefetchPositions();
                }
                this.this$0.stopNestedScroll(1);
            } else {
                postOnAnimation();
                if (this.this$0.mGapWorker != null) {
                    this.this$0.mGapWorker.postFromTraversal(this.this$0, i6, i7);
                }
            }
        }
        if (recyclerView$SmoothScroller != null) {
            if (recyclerView$SmoothScroller.isPendingInitialRun()) {
                recyclerView$SmoothScroller.onAnimation(0, 0);
            }
            if (!this.mReSchedulePostAnimationCallback) {
                recyclerView$SmoothScroller.stop();
            }
        }
        enableRunOnAnimationRequests();
    }

    private void disableRunOnAnimationRequests() {
        this.mReSchedulePostAnimationCallback = false;
        this.mEatRunOnAnimationRequest = true;
    }

    private void enableRunOnAnimationRequests() {
        this.mEatRunOnAnimationRequest = false;
        if (this.mReSchedulePostAnimationCallback) {
            postOnAnimation();
        }
    }

    void postOnAnimation() {
        if (this.mEatRunOnAnimationRequest) {
            this.mReSchedulePostAnimationCallback = true;
        } else {
            this.this$0.removeCallbacks(this);
            ViewCompat.postOnAnimation(this.this$0, this);
        }
    }

    public void fling(int i, int i2) {
        this.this$0.setScrollState(2);
        this.mLastFlingY = 0;
        this.mLastFlingX = 0;
        this.mScroller.fling(0, 0, i, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        postOnAnimation();
    }

    public void smoothScrollBy(int i, int i2) {
        smoothScrollBy(i, i2, 0, 0);
    }

    public void smoothScrollBy(int i, int i2, int i3, int i4) {
        smoothScrollBy(i, i2, computeScrollDuration(i, i2, i3, i4));
    }

    private float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    private int computeScrollDuration(int i, int i2, int i3, int i4) {
        int iRound;
        int iAbs = Math.abs(i);
        int iAbs2 = Math.abs(i2);
        boolean z = iAbs > iAbs2;
        int iSqrt = (int) Math.sqrt((i3 * i3) + (i4 * i4));
        int iSqrt2 = (int) Math.sqrt((i * i) + (i2 * i2));
        int width = z ? this.this$0.getWidth() : this.this$0.getHeight();
        int i5 = width / 2;
        float f = width;
        float f2 = i5;
        float fDistanceInfluenceForSnapDuration = f2 + (distanceInfluenceForSnapDuration(Math.min(1.0f, (iSqrt2 * 1.0f) / f)) * f2);
        if (iSqrt > 0) {
            iRound = 4 * Math.round(1000.0f * Math.abs(fDistanceInfluenceForSnapDuration / iSqrt));
        } else {
            if (!z) {
                iAbs = iAbs2;
            }
            iRound = (int) (((iAbs / f) + 1.0f) * 300.0f);
        }
        return Math.min(iRound, 2000);
    }

    public void smoothScrollBy(int i, int i2, int i3) {
        smoothScrollBy(i, i2, i3, RecyclerView.sQuinticInterpolator);
    }

    public void smoothScrollBy(int i, int i2, Interpolator interpolator) {
        int iComputeScrollDuration = computeScrollDuration(i, i2, 0, 0);
        if (interpolator == null) {
            interpolator = RecyclerView.sQuinticInterpolator;
        }
        smoothScrollBy(i, i2, iComputeScrollDuration, interpolator);
    }

    public void smoothScrollBy(int i, int i2, int i3, Interpolator interpolator) {
        if (this.mInterpolator != interpolator) {
            this.mInterpolator = interpolator;
            this.mScroller = new OverScroller(this.this$0.getContext(), interpolator);
        }
        this.this$0.setScrollState(2);
        this.mLastFlingY = 0;
        this.mLastFlingX = 0;
        this.mScroller.startScroll(0, 0, i, i2, i3);
        if (Build$VERSION.SDK_INT < 23) {
            this.mScroller.computeScrollOffset();
        }
        postOnAnimation();
    }

    public void stop() {
        this.this$0.removeCallbacks(this);
        this.mScroller.abortAnimation();
    }
}
