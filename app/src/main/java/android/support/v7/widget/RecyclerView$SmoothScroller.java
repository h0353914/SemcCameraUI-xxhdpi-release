package android.support.v7.widget;

import android.graphics.PointF;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.util.Log;
import android.view.View;

public abstract class RecyclerView$SmoothScroller {
    private RecyclerView$LayoutManager mLayoutManager;
    private boolean mPendingInitialRun;
    private RecyclerView mRecyclerView;
    private boolean mRunning;
    private boolean mStarted;
    private View mTargetView;
    private int mTargetPosition = -1;
    private final RecyclerView$SmoothScroller$Action mRecyclingAction = new RecyclerView$SmoothScroller$Action(0, 0);

    protected abstract void onSeekTargetStep(@Px int i, @Px int i2, @NonNull RecyclerView$State recyclerView$State, @NonNull RecyclerView$SmoothScroller$Action recyclerView$SmoothScroller$Action);

    protected abstract void onStart();

    protected abstract void onStop();

    protected abstract void onTargetFound(@NonNull View view, @NonNull RecyclerView$State recyclerView$State, @NonNull RecyclerView$SmoothScroller$Action recyclerView$SmoothScroller$Action);

    void start(RecyclerView recyclerView, RecyclerView$LayoutManager recyclerView$LayoutManager) {
        if (this.mStarted) {
            Log.w("RecyclerView", "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
        }
        this.mRecyclerView = recyclerView;
        this.mLayoutManager = recyclerView$LayoutManager;
        if (this.mTargetPosition == -1) {
            throw new IllegalArgumentException("Invalid target position");
        }
        this.mRecyclerView.mState.mTargetPosition = this.mTargetPosition;
        this.mRunning = true;
        this.mPendingInitialRun = true;
        this.mTargetView = findViewByPosition(getTargetPosition());
        onStart();
        this.mRecyclerView.mViewFlinger.postOnAnimation();
        this.mStarted = true;
    }

    public void setTargetPosition(int i) {
        this.mTargetPosition = i;
    }

    @Nullable
    public PointF computeScrollVectorForPosition(int i) {
        Object layoutManager = getLayoutManager();
        if (layoutManager instanceof RecyclerView$SmoothScroller$ScrollVectorProvider) {
            return ((RecyclerView$SmoothScroller$ScrollVectorProvider) layoutManager).computeScrollVectorForPosition(i);
        }
        Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + RecyclerView$SmoothScroller$ScrollVectorProvider.class.getCanonicalName());
        return null;
    }

    @Nullable
    public RecyclerView$LayoutManager getLayoutManager() {
        return this.mLayoutManager;
    }

    protected final void stop() {
        if (this.mRunning) {
            this.mRunning = false;
            onStop();
            this.mRecyclerView.mState.mTargetPosition = -1;
            this.mTargetView = null;
            this.mTargetPosition = -1;
            this.mPendingInitialRun = false;
            this.mLayoutManager.onSmoothScrollerStopped(this);
            this.mLayoutManager = null;
            this.mRecyclerView = null;
        }
    }

    public boolean isPendingInitialRun() {
        return this.mPendingInitialRun;
    }

    public boolean isRunning() {
        return this.mRunning;
    }

    public int getTargetPosition() {
        return this.mTargetPosition;
    }

    void onAnimation(int i, int i2) {
        PointF pointFComputeScrollVectorForPosition;
        RecyclerView recyclerView = this.mRecyclerView;
        if (!this.mRunning || this.mTargetPosition == -1 || recyclerView == null) {
            stop();
        }
        if (this.mPendingInitialRun && this.mTargetView == null && this.mLayoutManager != null && (pointFComputeScrollVectorForPosition = computeScrollVectorForPosition(this.mTargetPosition)) != null && (pointFComputeScrollVectorForPosition.x != 0.0f || pointFComputeScrollVectorForPosition.y != 0.0f)) {
            recyclerView.scrollStep((int) Math.signum(pointFComputeScrollVectorForPosition.x), (int) Math.signum(pointFComputeScrollVectorForPosition.y), null);
        }
        this.mPendingInitialRun = false;
        if (this.mTargetView != null) {
            if (getChildPosition(this.mTargetView) == this.mTargetPosition) {
                onTargetFound(this.mTargetView, recyclerView.mState, this.mRecyclingAction);
                this.mRecyclingAction.runIfNecessary(recyclerView);
                stop();
            } else {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.mTargetView = null;
            }
        }
        if (this.mRunning) {
            onSeekTargetStep(i, i2, recyclerView.mState, this.mRecyclingAction);
            boolean zHasJumpTarget = this.mRecyclingAction.hasJumpTarget();
            this.mRecyclingAction.runIfNecessary(recyclerView);
            if (zHasJumpTarget) {
                if (this.mRunning) {
                    this.mPendingInitialRun = true;
                    recyclerView.mViewFlinger.postOnAnimation();
                } else {
                    stop();
                }
            }
        }
    }

    public int getChildPosition(View view) {
        return this.mRecyclerView.getChildLayoutPosition(view);
    }

    public int getChildCount() {
        return this.mRecyclerView.mLayout.getChildCount();
    }

    public View findViewByPosition(int i) {
        return this.mRecyclerView.mLayout.findViewByPosition(i);
    }

    @Deprecated
    public void instantScrollToPosition(int i) {
        this.mRecyclerView.scrollToPosition(i);
    }

    protected void onChildAttachedToWindow(View view) {
        if (getChildPosition(view) == getTargetPosition()) {
            this.mTargetView = view;
        }
    }

    protected void normalize(@NonNull PointF pointF) {
        float fSqrt = (float) Math.sqrt((pointF.x * pointF.x) + (pointF.y * pointF.y));
        pointF.x /= fSqrt;
        pointF.y /= fSqrt;
    }
}
