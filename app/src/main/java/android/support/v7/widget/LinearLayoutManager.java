package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v7.widget.helper.ItemTouchHelper$ViewDropHandler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView$LayoutManager implements ItemTouchHelper$ViewDropHandler, RecyclerView$SmoothScroller$ScrollVectorProvider {
    static final boolean DEBUG = false;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "LinearLayoutManager";
    public static final int VERTICAL = 1;
    final LinearLayoutManager$AnchorInfo mAnchorInfo;
    private int mInitialPrefetchItemCount;
    private boolean mLastStackFromEnd;
    private final LinearLayoutManager$LayoutChunkResult mLayoutChunkResult;
    private LinearLayoutManager$LayoutState mLayoutState;
    int mOrientation;
    OrientationHelper mOrientationHelper;
    LinearLayoutManager$SavedState mPendingSavedState;
    int mPendingScrollPosition;
    int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private boolean mReverseLayout;
    boolean mShouldReverseLayout;
    private boolean mSmoothScrollbarEnabled;
    private boolean mStackFromEnd;

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    void onAnchorReady(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo, int i) {
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    public LinearLayoutManager(Context context, int i, boolean z) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new LinearLayoutManager$AnchorInfo();
        this.mLayoutChunkResult = new LinearLayoutManager$LayoutChunkResult();
        this.mInitialPrefetchItemCount = 2;
        setOrientation(i);
        setReverseLayout(z);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new LinearLayoutManager$AnchorInfo();
        this.mLayoutChunkResult = new LinearLayoutManager$LayoutChunkResult();
        this.mInitialPrefetchItemCount = 2;
        RecyclerView$LayoutManager$Properties properties = getProperties(context, attributeSet, i, i2);
        setOrientation(properties.orientation);
        setReverseLayout(properties.reverseLayout);
        setStackFromEnd(properties.stackFromEnd);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public RecyclerView$LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView$LayoutParams(-2, -2);
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    public void setRecycleChildrenOnDetach(boolean z) {
        this.mRecycleChildrenOnDetach = z;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView$Recycler recyclerView$Recycler) {
        super.onDetachedFromWindow(recyclerView, recyclerView$Recycler);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(recyclerView$Recycler);
            recyclerView$Recycler.clear();
        }
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new LinearLayoutManager$SavedState(this.mPendingSavedState);
        }
        LinearLayoutManager$SavedState linearLayoutManager$SavedState = new LinearLayoutManager$SavedState();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            linearLayoutManager$SavedState.mAnchorLayoutFromEnd = z;
            if (z) {
                View childClosestToEnd = getChildClosestToEnd();
                linearLayoutManager$SavedState.mAnchorOffset = this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(childClosestToEnd);
                linearLayoutManager$SavedState.mAnchorPosition = getPosition(childClosestToEnd);
            } else {
                View childClosestToStart = getChildClosestToStart();
                linearLayoutManager$SavedState.mAnchorPosition = getPosition(childClosestToStart);
                linearLayoutManager$SavedState.mAnchorOffset = this.mOrientationHelper.getDecoratedStart(childClosestToStart) - this.mOrientationHelper.getStartAfterPadding();
            }
        } else {
            linearLayoutManager$SavedState.invalidateAnchor();
        }
        return linearLayoutManager$SavedState;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof LinearLayoutManager$SavedState) {
            this.mPendingSavedState = (LinearLayoutManager$SavedState) parcelable;
            requestLayout();
        }
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    public void setStackFromEnd(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd == z) {
            return;
        }
        this.mStackFromEnd = z;
        requestLayout();
    }

    public boolean getStackFromEnd() {
        return this.mStackFromEnd;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public void setOrientation(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i);
        }
        assertNotInLayoutOrScroll(null);
        if (i != this.mOrientation || this.mOrientationHelper == null) {
            this.mOrientationHelper = OrientationHelper.createOrientationHelper(this, i);
            this.mAnchorInfo.mOrientationHelper = this.mOrientationHelper;
            this.mOrientation = i;
            requestLayout();
        }
    }

    private void resolveShouldLayoutReverse() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public void setReverseLayout(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (z == this.mReverseLayout) {
            return;
        }
        this.mReverseLayout = z;
        requestLayout();
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public View findViewByPosition(int i) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i) {
                return childAt;
            }
        }
        return super.findViewByPosition(i);
    }

    protected int getExtraLayoutSpace(RecyclerView$State recyclerView$State) {
        if (recyclerView$State.hasTargetScrollPosition()) {
            return this.mOrientationHelper.getTotalSpace();
        }
        return 0;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView$State recyclerView$State, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }

    @Override // android.support.v7.widget.RecyclerView$SmoothScroller$ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        int i2 = (i < getPosition(getChildAt(0))) != this.mShouldReverseLayout ? -1 : 1;
        if (this.mOrientation == 0) {
            return new PointF(i2, 0.0f);
        }
        return new PointF(0.0f, i2);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onLayoutChildren(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        int i;
        int i2;
        int i3;
        View viewFindViewByPosition;
        int decoratedStart;
        int i4 = -1;
        if ((this.mPendingSavedState != null || this.mPendingScrollPosition != -1) && recyclerView$State.getItemCount() == 0) {
            removeAndRecycleAllViews(recyclerView$Recycler);
            return;
        }
        if (this.mPendingSavedState != null && this.mPendingSavedState.hasValidAnchor()) {
            this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
        }
        ensureLayoutState();
        this.mLayoutState.mRecycle = false;
        resolveShouldLayoutReverse();
        View focusedChild = getFocusedChild();
        if (!this.mAnchorInfo.mValid || this.mPendingScrollPosition != -1 || this.mPendingSavedState != null) {
            this.mAnchorInfo.reset();
            this.mAnchorInfo.mLayoutFromEnd = this.mShouldReverseLayout ^ this.mStackFromEnd;
            updateAnchorInfoForLayout(recyclerView$Recycler, recyclerView$State, this.mAnchorInfo);
            this.mAnchorInfo.mValid = true;
        } else if (focusedChild != null && (this.mOrientationHelper.getDecoratedStart(focusedChild) >= this.mOrientationHelper.getEndAfterPadding() || this.mOrientationHelper.getDecoratedEnd(focusedChild) <= this.mOrientationHelper.getStartAfterPadding())) {
            this.mAnchorInfo.assignFromViewAndKeepVisibleRect(focusedChild, getPosition(focusedChild));
        }
        int extraLayoutSpace = getExtraLayoutSpace(recyclerView$State);
        if (this.mLayoutState.mLastScrollDelta >= 0) {
            i = extraLayoutSpace;
            extraLayoutSpace = 0;
        } else {
            i = 0;
        }
        int startAfterPadding = extraLayoutSpace + this.mOrientationHelper.getStartAfterPadding();
        int endPadding = i + this.mOrientationHelper.getEndPadding();
        if (recyclerView$State.isPreLayout() && this.mPendingScrollPosition != -1 && this.mPendingScrollPositionOffset != Integer.MIN_VALUE && (viewFindViewByPosition = findViewByPosition(this.mPendingScrollPosition)) != null) {
            if (this.mShouldReverseLayout) {
                decoratedStart = (this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(viewFindViewByPosition)) - this.mPendingScrollPositionOffset;
            } else {
                decoratedStart = this.mPendingScrollPositionOffset - (this.mOrientationHelper.getDecoratedStart(viewFindViewByPosition) - this.mOrientationHelper.getStartAfterPadding());
            }
            if (decoratedStart > 0) {
                startAfterPadding += decoratedStart;
            } else {
                endPadding -= decoratedStart;
            }
        }
        if (!this.mAnchorInfo.mLayoutFromEnd ? !this.mShouldReverseLayout : this.mShouldReverseLayout) {
            i4 = 1;
        }
        onAnchorReady(recyclerView$Recycler, recyclerView$State, this.mAnchorInfo, i4);
        detachAndScrapAttachedViews(recyclerView$Recycler);
        this.mLayoutState.mInfinite = resolveIsInfinite();
        this.mLayoutState.mIsPreLayout = recyclerView$State.isPreLayout();
        if (this.mAnchorInfo.mLayoutFromEnd) {
            updateLayoutStateToFillStart(this.mAnchorInfo);
            this.mLayoutState.mExtra = startAfterPadding;
            fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State, false);
            i3 = this.mLayoutState.mOffset;
            int i5 = this.mLayoutState.mCurrentPosition;
            if (this.mLayoutState.mAvailable > 0) {
                endPadding += this.mLayoutState.mAvailable;
            }
            updateLayoutStateToFillEnd(this.mAnchorInfo);
            this.mLayoutState.mExtra = endPadding;
            this.mLayoutState.mCurrentPosition += this.mLayoutState.mItemDirection;
            fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State, false);
            i2 = this.mLayoutState.mOffset;
            if (this.mLayoutState.mAvailable > 0) {
                int i6 = this.mLayoutState.mAvailable;
                updateLayoutStateToFillStart(i5, i3);
                this.mLayoutState.mExtra = i6;
                fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State, false);
                i3 = this.mLayoutState.mOffset;
            }
        } else {
            updateLayoutStateToFillEnd(this.mAnchorInfo);
            this.mLayoutState.mExtra = endPadding;
            fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State, false);
            i2 = this.mLayoutState.mOffset;
            int i7 = this.mLayoutState.mCurrentPosition;
            if (this.mLayoutState.mAvailable > 0) {
                startAfterPadding += this.mLayoutState.mAvailable;
            }
            updateLayoutStateToFillStart(this.mAnchorInfo);
            this.mLayoutState.mExtra = startAfterPadding;
            this.mLayoutState.mCurrentPosition += this.mLayoutState.mItemDirection;
            fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State, false);
            i3 = this.mLayoutState.mOffset;
            if (this.mLayoutState.mAvailable > 0) {
                int i8 = this.mLayoutState.mAvailable;
                updateLayoutStateToFillEnd(i7, i2);
                this.mLayoutState.mExtra = i8;
                fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State, false);
                i2 = this.mLayoutState.mOffset;
            }
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int iFixLayoutEndGap = fixLayoutEndGap(i2, recyclerView$Recycler, recyclerView$State, true);
                int i9 = i3 + iFixLayoutEndGap;
                int i10 = i2 + iFixLayoutEndGap;
                int iFixLayoutStartGap = fixLayoutStartGap(i9, recyclerView$Recycler, recyclerView$State, false);
                i3 = i9 + iFixLayoutStartGap;
                i2 = i10 + iFixLayoutStartGap;
            } else {
                int iFixLayoutStartGap2 = fixLayoutStartGap(i3, recyclerView$Recycler, recyclerView$State, true);
                int i11 = i3 + iFixLayoutStartGap2;
                int i12 = i2 + iFixLayoutStartGap2;
                int iFixLayoutEndGap2 = fixLayoutEndGap(i12, recyclerView$Recycler, recyclerView$State, false);
                i3 = i11 + iFixLayoutEndGap2;
                i2 = i12 + iFixLayoutEndGap2;
            }
        }
        layoutForPredictiveAnimations(recyclerView$Recycler, recyclerView$State, i3, i2);
        if (!recyclerView$State.isPreLayout()) {
            this.mOrientationHelper.onLayoutComplete();
        } else {
            this.mAnchorInfo.reset();
        }
        this.mLastStackFromEnd = this.mStackFromEnd;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onLayoutCompleted(RecyclerView$State recyclerView$State) {
        super.onLayoutCompleted(recyclerView$State);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.reset();
    }

    private void layoutForPredictiveAnimations(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, int i, int i2) {
        if (!recyclerView$State.willRunPredictiveAnimations() || getChildCount() == 0 || recyclerView$State.isPreLayout() || !supportsPredictiveItemAnimations()) {
            return;
        }
        List<RecyclerView$ViewHolder> scrapList = recyclerView$Recycler.getScrapList();
        int size = scrapList.size();
        int position = getPosition(getChildAt(0));
        int decoratedMeasurement = 0;
        int decoratedMeasurement2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView$ViewHolder recyclerView$ViewHolder = scrapList.get(i3);
            if (!recyclerView$ViewHolder.isRemoved()) {
                if (((recyclerView$ViewHolder.getLayoutPosition() < position) != this.mShouldReverseLayout ? (byte) -1 : (byte) 1) == -1) {
                    decoratedMeasurement += this.mOrientationHelper.getDecoratedMeasurement(recyclerView$ViewHolder.itemView);
                } else {
                    decoratedMeasurement2 += this.mOrientationHelper.getDecoratedMeasurement(recyclerView$ViewHolder.itemView);
                }
            }
        }
        this.mLayoutState.mScrapList = scrapList;
        if (decoratedMeasurement > 0) {
            updateLayoutStateToFillStart(getPosition(getChildClosestToStart()), i);
            this.mLayoutState.mExtra = decoratedMeasurement;
            this.mLayoutState.mAvailable = 0;
            this.mLayoutState.assignPositionFromScrapList();
            fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State, false);
        }
        if (decoratedMeasurement2 > 0) {
            updateLayoutStateToFillEnd(getPosition(getChildClosestToEnd()), i2);
            this.mLayoutState.mExtra = decoratedMeasurement2;
            this.mLayoutState.mAvailable = 0;
            this.mLayoutState.assignPositionFromScrapList();
            fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State, false);
        }
        this.mLayoutState.mScrapList = null;
    }

    private void updateAnchorInfoForLayout(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo) {
        if (updateAnchorFromPendingData(recyclerView$State, linearLayoutManager$AnchorInfo) || updateAnchorFromChildren(recyclerView$Recycler, recyclerView$State, linearLayoutManager$AnchorInfo)) {
            return;
        }
        linearLayoutManager$AnchorInfo.assignCoordinateFromPadding();
        linearLayoutManager$AnchorInfo.mPosition = this.mStackFromEnd ? recyclerView$State.getItemCount() - 1 : 0;
    }

    private boolean updateAnchorFromChildren(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo) {
        View viewFindReferenceChildClosestToStart;
        int startAfterPadding;
        if (getChildCount() == 0) {
            return false;
        }
        View focusedChild = getFocusedChild();
        if (focusedChild != null && linearLayoutManager$AnchorInfo.isViewValidAsAnchor(focusedChild, recyclerView$State)) {
            linearLayoutManager$AnchorInfo.assignFromViewAndKeepVisibleRect(focusedChild, getPosition(focusedChild));
            return true;
        }
        if (this.mLastStackFromEnd != this.mStackFromEnd) {
            return false;
        }
        if (linearLayoutManager$AnchorInfo.mLayoutFromEnd) {
            viewFindReferenceChildClosestToStart = findReferenceChildClosestToEnd(recyclerView$Recycler, recyclerView$State);
        } else {
            viewFindReferenceChildClosestToStart = findReferenceChildClosestToStart(recyclerView$Recycler, recyclerView$State);
        }
        if (viewFindReferenceChildClosestToStart == null) {
            return false;
        }
        linearLayoutManager$AnchorInfo.assignFromView(viewFindReferenceChildClosestToStart, getPosition(viewFindReferenceChildClosestToStart));
        if (!recyclerView$State.isPreLayout() && supportsPredictiveItemAnimations()) {
            if (this.mOrientationHelper.getDecoratedStart(viewFindReferenceChildClosestToStart) >= this.mOrientationHelper.getEndAfterPadding() || this.mOrientationHelper.getDecoratedEnd(viewFindReferenceChildClosestToStart) < this.mOrientationHelper.getStartAfterPadding()) {
                if (linearLayoutManager$AnchorInfo.mLayoutFromEnd) {
                    startAfterPadding = this.mOrientationHelper.getEndAfterPadding();
                } else {
                    startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
                }
                linearLayoutManager$AnchorInfo.mCoordinate = startAfterPadding;
            }
        }
        return true;
    }

    private boolean updateAnchorFromPendingData(RecyclerView$State recyclerView$State, LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo) {
        int decoratedStart;
        if (recyclerView$State.isPreLayout() || this.mPendingScrollPosition == -1) {
            return false;
        }
        if (this.mPendingScrollPosition < 0 || this.mPendingScrollPosition >= recyclerView$State.getItemCount()) {
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
            return false;
        }
        linearLayoutManager$AnchorInfo.mPosition = this.mPendingScrollPosition;
        if (this.mPendingSavedState != null && this.mPendingSavedState.hasValidAnchor()) {
            linearLayoutManager$AnchorInfo.mLayoutFromEnd = this.mPendingSavedState.mAnchorLayoutFromEnd;
            if (linearLayoutManager$AnchorInfo.mLayoutFromEnd) {
                linearLayoutManager$AnchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding() - this.mPendingSavedState.mAnchorOffset;
            } else {
                linearLayoutManager$AnchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding() + this.mPendingSavedState.mAnchorOffset;
            }
            return true;
        }
        if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
            View viewFindViewByPosition = findViewByPosition(this.mPendingScrollPosition);
            if (viewFindViewByPosition != null) {
                if (this.mOrientationHelper.getDecoratedMeasurement(viewFindViewByPosition) > this.mOrientationHelper.getTotalSpace()) {
                    linearLayoutManager$AnchorInfo.assignCoordinateFromPadding();
                    return true;
                }
                if (this.mOrientationHelper.getDecoratedStart(viewFindViewByPosition) - this.mOrientationHelper.getStartAfterPadding() < 0) {
                    linearLayoutManager$AnchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding();
                    linearLayoutManager$AnchorInfo.mLayoutFromEnd = false;
                    return true;
                }
                if (this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(viewFindViewByPosition) < 0) {
                    linearLayoutManager$AnchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding();
                    linearLayoutManager$AnchorInfo.mLayoutFromEnd = true;
                    return true;
                }
                if (linearLayoutManager$AnchorInfo.mLayoutFromEnd) {
                    decoratedStart = this.mOrientationHelper.getDecoratedEnd(viewFindViewByPosition) + this.mOrientationHelper.getTotalSpaceChange();
                } else {
                    decoratedStart = this.mOrientationHelper.getDecoratedStart(viewFindViewByPosition);
                }
                linearLayoutManager$AnchorInfo.mCoordinate = decoratedStart;
            } else {
                if (getChildCount() > 0) {
                    linearLayoutManager$AnchorInfo.mLayoutFromEnd = (this.mPendingScrollPosition < getPosition(getChildAt(0))) == this.mShouldReverseLayout;
                }
                linearLayoutManager$AnchorInfo.assignCoordinateFromPadding();
            }
            return true;
        }
        linearLayoutManager$AnchorInfo.mLayoutFromEnd = this.mShouldReverseLayout;
        if (this.mShouldReverseLayout) {
            linearLayoutManager$AnchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding() - this.mPendingScrollPositionOffset;
        } else {
            linearLayoutManager$AnchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding() + this.mPendingScrollPositionOffset;
        }
        return true;
    }

    private int fixLayoutEndGap(int i, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, boolean z) {
        int endAfterPadding;
        int endAfterPadding2 = this.mOrientationHelper.getEndAfterPadding() - i;
        if (endAfterPadding2 <= 0) {
            return 0;
        }
        int i2 = -scrollBy(-endAfterPadding2, recyclerView$Recycler, recyclerView$State);
        int i3 = i + i2;
        if (!z || (endAfterPadding = this.mOrientationHelper.getEndAfterPadding() - i3) <= 0) {
            return i2;
        }
        this.mOrientationHelper.offsetChildren(endAfterPadding);
        return endAfterPadding + i2;
    }

    private int fixLayoutStartGap(int i, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, boolean z) {
        int startAfterPadding;
        int startAfterPadding2 = i - this.mOrientationHelper.getStartAfterPadding();
        if (startAfterPadding2 <= 0) {
            return 0;
        }
        int i2 = -scrollBy(startAfterPadding2, recyclerView$Recycler, recyclerView$State);
        int i3 = i + i2;
        if (!z || (startAfterPadding = i3 - this.mOrientationHelper.getStartAfterPadding()) <= 0) {
            return i2;
        }
        this.mOrientationHelper.offsetChildren(-startAfterPadding);
        return i2 - startAfterPadding;
    }

    private void updateLayoutStateToFillEnd(LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo) {
        updateLayoutStateToFillEnd(linearLayoutManager$AnchorInfo.mPosition, linearLayoutManager$AnchorInfo.mCoordinate);
    }

    private void updateLayoutStateToFillEnd(int i, int i2) {
        this.mLayoutState.mAvailable = this.mOrientationHelper.getEndAfterPadding() - i2;
        this.mLayoutState.mItemDirection = this.mShouldReverseLayout ? -1 : 1;
        this.mLayoutState.mCurrentPosition = i;
        this.mLayoutState.mLayoutDirection = 1;
        this.mLayoutState.mOffset = i2;
        this.mLayoutState.mScrollingOffset = Integer.MIN_VALUE;
    }

    private void updateLayoutStateToFillStart(LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo) {
        updateLayoutStateToFillStart(linearLayoutManager$AnchorInfo.mPosition, linearLayoutManager$AnchorInfo.mCoordinate);
    }

    private void updateLayoutStateToFillStart(int i, int i2) {
        this.mLayoutState.mAvailable = i2 - this.mOrientationHelper.getStartAfterPadding();
        this.mLayoutState.mCurrentPosition = i;
        this.mLayoutState.mItemDirection = this.mShouldReverseLayout ? 1 : -1;
        this.mLayoutState.mLayoutDirection = -1;
        this.mLayoutState.mOffset = i2;
        this.mLayoutState.mScrollingOffset = Integer.MIN_VALUE;
    }

    protected boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = createLayoutState();
        }
    }

    LinearLayoutManager$LayoutState createLayoutState() {
        return new LinearLayoutManager$LayoutState();
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void scrollToPosition(int i) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        if (this.mPendingSavedState != null) {
            this.mPendingSavedState.invalidateAnchor();
        }
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i, int i2) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = i2;
        if (this.mPendingSavedState != null) {
            this.mPendingSavedState.invalidateAnchor();
        }
        requestLayout();
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i, recyclerView$Recycler, recyclerView$State);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i, recyclerView$Recycler, recyclerView$State);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView$State recyclerView$State) {
        return computeScrollOffset(recyclerView$State);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int computeVerticalScrollOffset(RecyclerView$State recyclerView$State) {
        return computeScrollOffset(recyclerView$State);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView$State recyclerView$State) {
        return computeScrollExtent(recyclerView$State);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int computeVerticalScrollExtent(RecyclerView$State recyclerView$State) {
        return computeScrollExtent(recyclerView$State);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int computeHorizontalScrollRange(RecyclerView$State recyclerView$State) {
        return computeScrollRange(recyclerView$State);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int computeVerticalScrollRange(RecyclerView$State recyclerView$State) {
        return computeScrollRange(recyclerView$State);
    }

    private int computeScrollOffset(RecyclerView$State recyclerView$State) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.computeScrollOffset(recyclerView$State, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    private int computeScrollExtent(RecyclerView$State recyclerView$State) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.computeScrollExtent(recyclerView$State, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private int computeScrollRange(RecyclerView$State recyclerView$State) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.computeScrollRange(recyclerView$State, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    public void setSmoothScrollbarEnabled(boolean z) {
        this.mSmoothScrollbarEnabled = z;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    private void updateLayoutState(int i, int i2, boolean z, RecyclerView$State recyclerView$State) {
        int startAfterPadding;
        this.mLayoutState.mInfinite = resolveIsInfinite();
        this.mLayoutState.mExtra = getExtraLayoutSpace(recyclerView$State);
        this.mLayoutState.mLayoutDirection = i;
        if (i == 1) {
            this.mLayoutState.mExtra += this.mOrientationHelper.getEndPadding();
            View childClosestToEnd = getChildClosestToEnd();
            this.mLayoutState.mItemDirection = this.mShouldReverseLayout ? -1 : 1;
            this.mLayoutState.mCurrentPosition = getPosition(childClosestToEnd) + this.mLayoutState.mItemDirection;
            this.mLayoutState.mOffset = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd);
            startAfterPadding = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd) - this.mOrientationHelper.getEndAfterPadding();
        } else {
            View childClosestToStart = getChildClosestToStart();
            this.mLayoutState.mExtra += this.mOrientationHelper.getStartAfterPadding();
            this.mLayoutState.mItemDirection = this.mShouldReverseLayout ? 1 : -1;
            this.mLayoutState.mCurrentPosition = getPosition(childClosestToStart) + this.mLayoutState.mItemDirection;
            this.mLayoutState.mOffset = this.mOrientationHelper.getDecoratedStart(childClosestToStart);
            startAfterPadding = (-this.mOrientationHelper.getDecoratedStart(childClosestToStart)) + this.mOrientationHelper.getStartAfterPadding();
        }
        this.mLayoutState.mAvailable = i2;
        if (z) {
            this.mLayoutState.mAvailable -= startAfterPadding;
        }
        this.mLayoutState.mScrollingOffset = startAfterPadding;
    }

    boolean resolveIsInfinite() {
        return this.mOrientationHelper.getMode() == 0 && this.mOrientationHelper.getEnd() == 0;
    }

    void collectPrefetchPositionsForLayoutState(RecyclerView$State recyclerView$State, LinearLayoutManager$LayoutState linearLayoutManager$LayoutState, RecyclerView$LayoutManager$LayoutPrefetchRegistry recyclerView$LayoutManager$LayoutPrefetchRegistry) {
        int i = linearLayoutManager$LayoutState.mCurrentPosition;
        if (i < 0 || i >= recyclerView$State.getItemCount()) {
            return;
        }
        recyclerView$LayoutManager$LayoutPrefetchRegistry.addPosition(i, Math.max(0, linearLayoutManager$LayoutState.mScrollingOffset));
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void collectInitialPrefetchPositions(int i, RecyclerView$LayoutManager$LayoutPrefetchRegistry recyclerView$LayoutManager$LayoutPrefetchRegistry) {
        boolean z;
        int i2;
        if (this.mPendingSavedState != null && this.mPendingSavedState.hasValidAnchor()) {
            z = this.mPendingSavedState.mAnchorLayoutFromEnd;
            i2 = this.mPendingSavedState.mAnchorPosition;
        } else {
            resolveShouldLayoutReverse();
            z = this.mShouldReverseLayout;
            if (this.mPendingScrollPosition == -1) {
                i2 = z ? i - 1 : 0;
            } else {
                i2 = this.mPendingScrollPosition;
            }
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < this.mInitialPrefetchItemCount && i2 >= 0 && i2 < i; i4++) {
            recyclerView$LayoutManager$LayoutPrefetchRegistry.addPosition(i2, 0);
            i2 += i3;
        }
    }

    public void setInitialPrefetchItemCount(int i) {
        this.mInitialPrefetchItemCount = i;
    }

    public int getInitialPrefetchItemCount() {
        return this.mInitialPrefetchItemCount;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView$State recyclerView$State, RecyclerView$LayoutManager$LayoutPrefetchRegistry recyclerView$LayoutManager$LayoutPrefetchRegistry) {
        if (this.mOrientation != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        ensureLayoutState();
        updateLayoutState(i > 0 ? 1 : -1, Math.abs(i), true, recyclerView$State);
        collectPrefetchPositionsForLayoutState(recyclerView$State, this.mLayoutState, recyclerView$LayoutManager$LayoutPrefetchRegistry);
    }

    int scrollBy(int i, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        this.mLayoutState.mRecycle = true;
        ensureLayoutState();
        int i2 = i > 0 ? 1 : -1;
        int iAbs = Math.abs(i);
        updateLayoutState(i2, iAbs, true, recyclerView$State);
        int iFill = this.mLayoutState.mScrollingOffset + fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State, false);
        if (iFill < 0) {
            return 0;
        }
        if (iAbs > iFill) {
            i = i2 * iFill;
        }
        this.mOrientationHelper.offsetChildren(-i);
        this.mLayoutState.mLastScrollDelta = i;
        return i;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    private void recycleChildren(RecyclerView$Recycler recyclerView$Recycler, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                removeAndRecycleViewAt(i, recyclerView$Recycler);
                i--;
            }
        } else {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                removeAndRecycleViewAt(i3, recyclerView$Recycler);
            }
        }
    }

    private void recycleViewsFromStart(RecyclerView$Recycler recyclerView$Recycler, int i) {
        if (i < 0) {
            return;
        }
        int childCount = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (this.mOrientationHelper.getDecoratedEnd(childAt) > i || this.mOrientationHelper.getTransformedEndWithDecoration(childAt) > i) {
                    recycleChildren(recyclerView$Recycler, 0, i2);
                    return;
                }
            }
            return;
        }
        int i3 = childCount - 1;
        for (int i4 = i3; i4 >= 0; i4--) {
            View childAt2 = getChildAt(i4);
            if (this.mOrientationHelper.getDecoratedEnd(childAt2) > i || this.mOrientationHelper.getTransformedEndWithDecoration(childAt2) > i) {
                recycleChildren(recyclerView$Recycler, i3, i4);
                return;
            }
        }
    }

    private void recycleViewsFromEnd(RecyclerView$Recycler recyclerView$Recycler, int i) {
        int childCount = getChildCount();
        if (i < 0) {
            return;
        }
        int end = this.mOrientationHelper.getEnd() - i;
        if (this.mShouldReverseLayout) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (this.mOrientationHelper.getDecoratedStart(childAt) < end || this.mOrientationHelper.getTransformedStartWithDecoration(childAt) < end) {
                    recycleChildren(recyclerView$Recycler, 0, i2);
                    return;
                }
            }
            return;
        }
        int i3 = childCount - 1;
        for (int i4 = i3; i4 >= 0; i4--) {
            View childAt2 = getChildAt(i4);
            if (this.mOrientationHelper.getDecoratedStart(childAt2) < end || this.mOrientationHelper.getTransformedStartWithDecoration(childAt2) < end) {
                recycleChildren(recyclerView$Recycler, i3, i4);
                return;
            }
        }
    }

    private void recycleByLayoutState(RecyclerView$Recycler recyclerView$Recycler, LinearLayoutManager$LayoutState linearLayoutManager$LayoutState) {
        if (!linearLayoutManager$LayoutState.mRecycle || linearLayoutManager$LayoutState.mInfinite) {
            return;
        }
        if (linearLayoutManager$LayoutState.mLayoutDirection == -1) {
            recycleViewsFromEnd(recyclerView$Recycler, linearLayoutManager$LayoutState.mScrollingOffset);
        } else {
            recycleViewsFromStart(recyclerView$Recycler, linearLayoutManager$LayoutState.mScrollingOffset);
        }
    }

    int fill(RecyclerView$Recycler recyclerView$Recycler, LinearLayoutManager$LayoutState linearLayoutManager$LayoutState, RecyclerView$State recyclerView$State, boolean z) {
        int i = linearLayoutManager$LayoutState.mAvailable;
        if (linearLayoutManager$LayoutState.mScrollingOffset != Integer.MIN_VALUE) {
            if (linearLayoutManager$LayoutState.mAvailable < 0) {
                linearLayoutManager$LayoutState.mScrollingOffset += linearLayoutManager$LayoutState.mAvailable;
            }
            recycleByLayoutState(recyclerView$Recycler, linearLayoutManager$LayoutState);
        }
        int i2 = linearLayoutManager$LayoutState.mAvailable + linearLayoutManager$LayoutState.mExtra;
        LinearLayoutManager$LayoutChunkResult linearLayoutManager$LayoutChunkResult = this.mLayoutChunkResult;
        while (true) {
            if ((!linearLayoutManager$LayoutState.mInfinite && i2 <= 0) || !linearLayoutManager$LayoutState.hasMore(recyclerView$State)) {
                break;
            }
            linearLayoutManager$LayoutChunkResult.resetInternal();
            layoutChunk(recyclerView$Recycler, recyclerView$State, linearLayoutManager$LayoutState, linearLayoutManager$LayoutChunkResult);
            if (!linearLayoutManager$LayoutChunkResult.mFinished) {
                linearLayoutManager$LayoutState.mOffset += linearLayoutManager$LayoutChunkResult.mConsumed * linearLayoutManager$LayoutState.mLayoutDirection;
                if (!linearLayoutManager$LayoutChunkResult.mIgnoreConsumed || this.mLayoutState.mScrapList != null || !recyclerView$State.isPreLayout()) {
                    linearLayoutManager$LayoutState.mAvailable -= linearLayoutManager$LayoutChunkResult.mConsumed;
                    i2 -= linearLayoutManager$LayoutChunkResult.mConsumed;
                }
                if (linearLayoutManager$LayoutState.mScrollingOffset != Integer.MIN_VALUE) {
                    linearLayoutManager$LayoutState.mScrollingOffset += linearLayoutManager$LayoutChunkResult.mConsumed;
                    if (linearLayoutManager$LayoutState.mAvailable < 0) {
                        linearLayoutManager$LayoutState.mScrollingOffset += linearLayoutManager$LayoutState.mAvailable;
                    }
                    recycleByLayoutState(recyclerView$Recycler, linearLayoutManager$LayoutState);
                }
                if (z && linearLayoutManager$LayoutChunkResult.mFocusable) {
                    break;
                }
            } else {
                break;
            }
        }
        return i - linearLayoutManager$LayoutState.mAvailable;
    }

    void layoutChunk(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, LinearLayoutManager$LayoutState linearLayoutManager$LayoutState, LinearLayoutManager$LayoutChunkResult linearLayoutManager$LayoutChunkResult) {
        int i;
        int i2;
        int i3;
        int paddingLeft;
        int decoratedMeasurementInOther;
        View next = linearLayoutManager$LayoutState.next(recyclerView$Recycler);
        if (next == null) {
            linearLayoutManager$LayoutChunkResult.mFinished = true;
            return;
        }
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) next.getLayoutParams();
        if (linearLayoutManager$LayoutState.mScrapList == null) {
            if (this.mShouldReverseLayout == (linearLayoutManager$LayoutState.mLayoutDirection == -1)) {
                addView(next);
            } else {
                addView(next, 0);
            }
        } else {
            if (this.mShouldReverseLayout == (linearLayoutManager$LayoutState.mLayoutDirection == -1)) {
                addDisappearingView(next);
            } else {
                addDisappearingView(next, 0);
            }
        }
        measureChildWithMargins(next, 0, 0);
        linearLayoutManager$LayoutChunkResult.mConsumed = this.mOrientationHelper.getDecoratedMeasurement(next);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                decoratedMeasurementInOther = getWidth() - getPaddingRight();
                paddingLeft = decoratedMeasurementInOther - this.mOrientationHelper.getDecoratedMeasurementInOther(next);
            } else {
                paddingLeft = getPaddingLeft();
                decoratedMeasurementInOther = this.mOrientationHelper.getDecoratedMeasurementInOther(next) + paddingLeft;
            }
            if (linearLayoutManager$LayoutState.mLayoutDirection == -1) {
                int i4 = linearLayoutManager$LayoutState.mOffset;
                i2 = linearLayoutManager$LayoutState.mOffset - linearLayoutManager$LayoutChunkResult.mConsumed;
                i = decoratedMeasurementInOther;
                i3 = i4;
            } else {
                int i5 = linearLayoutManager$LayoutState.mOffset;
                i3 = linearLayoutManager$LayoutState.mOffset + linearLayoutManager$LayoutChunkResult.mConsumed;
                i = decoratedMeasurementInOther;
                i2 = i5;
            }
        } else {
            int paddingTop = getPaddingTop();
            int decoratedMeasurementInOther2 = this.mOrientationHelper.getDecoratedMeasurementInOther(next) + paddingTop;
            if (linearLayoutManager$LayoutState.mLayoutDirection == -1) {
                i2 = paddingTop;
                i = linearLayoutManager$LayoutState.mOffset;
                i3 = decoratedMeasurementInOther2;
                paddingLeft = linearLayoutManager$LayoutState.mOffset - linearLayoutManager$LayoutChunkResult.mConsumed;
            } else {
                int i6 = linearLayoutManager$LayoutState.mOffset;
                i = linearLayoutManager$LayoutState.mOffset + linearLayoutManager$LayoutChunkResult.mConsumed;
                i2 = paddingTop;
                i3 = decoratedMeasurementInOther2;
                paddingLeft = i6;
            }
        }
        layoutDecoratedWithMargins(next, paddingLeft, i2, i, i3);
        if (recyclerView$LayoutParams.isItemRemoved() || recyclerView$LayoutParams.isItemChanged()) {
            linearLayoutManager$LayoutChunkResult.mIgnoreConsumed = true;
        }
        linearLayoutManager$LayoutChunkResult.mFocusable = next.hasFocusable();
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    boolean shouldMeasureTwice() {
        return (getHeightMode() == 1073741824 || getWidthMode() == 1073741824 || !hasFlexibleChildInBothOrientations()) ? false : true;
    }

    int convertFocusDirectionToLayoutDirection(int i) {
        if (i == 17) {
            return this.mOrientation == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i == 33) {
            return this.mOrientation == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i == 66) {
            return this.mOrientation == 0 ? 1 : Integer.MIN_VALUE;
        }
        if (i == 130) {
            return this.mOrientation == 1 ? 1 : Integer.MIN_VALUE;
        }
        switch (i) {
            case 1:
                return (this.mOrientation != 1 && isLayoutRTL()) ? 1 : -1;
            case 2:
                return (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1;
            default:
                return Integer.MIN_VALUE;
        }
    }

    private View getChildClosestToStart() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    private View getChildClosestToEnd() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    private View findFirstVisibleChildClosestToStart(boolean z, boolean z2) {
        if (this.mShouldReverseLayout) {
            return findOneVisibleChild(getChildCount() - 1, -1, z, z2);
        }
        return findOneVisibleChild(0, getChildCount(), z, z2);
    }

    private View findFirstVisibleChildClosestToEnd(boolean z, boolean z2) {
        if (this.mShouldReverseLayout) {
            return findOneVisibleChild(0, getChildCount(), z, z2);
        }
        return findOneVisibleChild(getChildCount() - 1, -1, z, z2);
    }

    private View findReferenceChildClosestToEnd(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        return this.mShouldReverseLayout ? findFirstReferenceChild(recyclerView$Recycler, recyclerView$State) : findLastReferenceChild(recyclerView$Recycler, recyclerView$State);
    }

    private View findReferenceChildClosestToStart(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        return this.mShouldReverseLayout ? findLastReferenceChild(recyclerView$Recycler, recyclerView$State) : findFirstReferenceChild(recyclerView$Recycler, recyclerView$State);
    }

    private View findFirstReferenceChild(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        return findReferenceChild(recyclerView$Recycler, recyclerView$State, 0, getChildCount(), recyclerView$State.getItemCount());
    }

    private View findLastReferenceChild(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        return findReferenceChild(recyclerView$Recycler, recyclerView$State, getChildCount() - 1, -1, recyclerView$State.getItemCount());
    }

    View findReferenceChild(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, int i, int i2, int i3) {
        ensureLayoutState();
        int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
        int endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View childAt = getChildAt(i);
            int position = getPosition(childAt);
            if (position >= 0 && position < i3) {
                if (((RecyclerView$LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.mOrientationHelper.getDecoratedStart(childAt) < endAfterPadding && this.mOrientationHelper.getDecoratedEnd(childAt) >= startAfterPadding) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            i += i4;
        }
        return view != null ? view : view2;
    }

    private View findPartiallyOrCompletelyInvisibleChildClosestToEnd(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        return this.mShouldReverseLayout ? findFirstPartiallyOrCompletelyInvisibleChild(recyclerView$Recycler, recyclerView$State) : findLastPartiallyOrCompletelyInvisibleChild(recyclerView$Recycler, recyclerView$State);
    }

    private View findPartiallyOrCompletelyInvisibleChildClosestToStart(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        return this.mShouldReverseLayout ? findLastPartiallyOrCompletelyInvisibleChild(recyclerView$Recycler, recyclerView$State) : findFirstPartiallyOrCompletelyInvisibleChild(recyclerView$Recycler, recyclerView$State);
    }

    private View findFirstPartiallyOrCompletelyInvisibleChild(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        return findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount());
    }

    private View findLastPartiallyOrCompletelyInvisibleChild(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        return findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
    }

    public int findFirstVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), true, false);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findLastVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, true, false);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    View findOneVisibleChild(int i, int i2, boolean z, boolean z2) {
        ensureLayoutState();
        int i3 = z ? 24579 : 320;
        int i4 = z2 ? 320 : 0;
        if (this.mOrientation == 0) {
            return this.mHorizontalBoundCheck.findOneViewWithinBoundFlags(i, i2, i3, i4);
        }
        return this.mVerticalBoundCheck.findOneViewWithinBoundFlags(i, i2, i3, i4);
    }

    View findOnePartiallyOrCompletelyInvisibleChild(int i, int i2) {
        int i3;
        int i4;
        ensureLayoutState();
        if ((i2 > i ? (byte) 1 : i2 < i ? (byte) -1 : (byte) 0) == 0) {
            return getChildAt(i);
        }
        if (this.mOrientationHelper.getDecoratedStart(getChildAt(i)) < this.mOrientationHelper.getStartAfterPadding()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        if (this.mOrientation == 0) {
            return this.mHorizontalBoundCheck.findOneViewWithinBoundFlags(i, i2, i3, i4);
        }
        return this.mVerticalBoundCheck.findOneViewWithinBoundFlags(i, i2, i3, i4);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public View onFocusSearchFailed(View view, int i, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        int iConvertFocusDirectionToLayoutDirection;
        View viewFindPartiallyOrCompletelyInvisibleChildClosestToEnd;
        View childClosestToEnd;
        resolveShouldLayoutReverse();
        if (getChildCount() == 0 || (iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i)) == Integer.MIN_VALUE) {
            return null;
        }
        ensureLayoutState();
        ensureLayoutState();
        updateLayoutState(iConvertFocusDirectionToLayoutDirection, (int) (0.33333334f * this.mOrientationHelper.getTotalSpace()), false, recyclerView$State);
        this.mLayoutState.mScrollingOffset = Integer.MIN_VALUE;
        this.mLayoutState.mRecycle = false;
        fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State, true);
        if (iConvertFocusDirectionToLayoutDirection == -1) {
            viewFindPartiallyOrCompletelyInvisibleChildClosestToEnd = findPartiallyOrCompletelyInvisibleChildClosestToStart(recyclerView$Recycler, recyclerView$State);
        } else {
            viewFindPartiallyOrCompletelyInvisibleChildClosestToEnd = findPartiallyOrCompletelyInvisibleChildClosestToEnd(recyclerView$Recycler, recyclerView$State);
        }
        if (iConvertFocusDirectionToLayoutDirection == -1) {
            childClosestToEnd = getChildClosestToStart();
        } else {
            childClosestToEnd = getChildClosestToEnd();
        }
        if (!childClosestToEnd.hasFocusable()) {
            return viewFindPartiallyOrCompletelyInvisibleChildClosestToEnd;
        }
        if (viewFindPartiallyOrCompletelyInvisibleChildClosestToEnd == null) {
            return null;
        }
        return childClosestToEnd;
    }

    private void logChildren() {
        Log.d("LinearLayoutManager", "internal representation of views on the screen");
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            Log.d("LinearLayoutManager", "item " + getPosition(childAt) + ", coord:" + this.mOrientationHelper.getDecoratedStart(childAt));
        }
        Log.d("LinearLayoutManager", "==============");
    }

    void validateChildOrder() {
        Log.d("LinearLayoutManager", "validating child count " + getChildCount());
        if (getChildCount() < 1) {
            return;
        }
        int position = getPosition(getChildAt(0));
        int decoratedStart = this.mOrientationHelper.getDecoratedStart(getChildAt(0));
        if (this.mShouldReverseLayout) {
            for (int i = 1; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                int position2 = getPosition(childAt);
                int decoratedStart2 = this.mOrientationHelper.getDecoratedStart(childAt);
                if (position2 < position) {
                    logChildren();
                    StringBuilder sb = new StringBuilder();
                    sb.append("detected invalid position. loc invalid? ");
                    sb.append(decoratedStart2 < decoratedStart);
                    throw new RuntimeException(sb.toString());
                }
                if (decoratedStart2 > decoratedStart) {
                    logChildren();
                    throw new RuntimeException("detected invalid location");
                }
            }
            return;
        }
        for (int i2 = 1; i2 < getChildCount(); i2++) {
            View childAt2 = getChildAt(i2);
            int position3 = getPosition(childAt2);
            int decoratedStart3 = this.mOrientationHelper.getDecoratedStart(childAt2);
            if (position3 < position) {
                logChildren();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("detected invalid position. loc invalid? ");
                sb2.append(decoratedStart3 < decoratedStart);
                throw new RuntimeException(sb2.toString());
            }
            if (decoratedStart3 < decoratedStart) {
                logChildren();
                throw new RuntimeException("detected invalid location");
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper$ViewDropHandler
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void prepareForDrop(@NonNull View view, @NonNull View view2, int i, int i2) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        ensureLayoutState();
        resolveShouldLayoutReverse();
        int position = getPosition(view);
        int position2 = getPosition(view2);
        byte b = position < position2 ? (byte) 1 : (byte) -1;
        if (this.mShouldReverseLayout) {
            if (b == 1) {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.getEndAfterPadding() - (this.mOrientationHelper.getDecoratedStart(view2) + this.mOrientationHelper.getDecoratedMeasurement(view)));
                return;
            } else {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(view2));
                return;
            }
        }
        if (b == -1) {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.getDecoratedStart(view2));
        } else {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.getDecoratedEnd(view2) - this.mOrientationHelper.getDecoratedMeasurement(view));
        }
    }
}
