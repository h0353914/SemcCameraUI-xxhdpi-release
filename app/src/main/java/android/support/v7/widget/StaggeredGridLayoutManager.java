package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.util.Arrays;
import java.util.BitSet;

/* JADX INFO: loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView$LayoutManager implements RecyclerView$SmoothScroller$ScrollVectorProvider {
    static final boolean DEBUG = false;

    @Deprecated
    public static final int GAP_HANDLING_LAZY = 1;
    public static final int GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS = 2;
    public static final int GAP_HANDLING_NONE = 0;
    public static final int HORIZONTAL = 0;
    static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "StaggeredGridLManager";
    public static final int VERTICAL = 1;
    private int mFullSizeSpec;
    private boolean mLastLayoutFromEnd;
    private boolean mLastLayoutRTL;

    @NonNull
    private final LayoutState mLayoutState;
    private int mOrientation;
    private StaggeredGridLayoutManager$SavedState mPendingSavedState;
    private int[] mPrefetchDistances;

    @NonNull
    OrientationHelper mPrimaryOrientation;
    private BitSet mRemainingSpans;

    @NonNull
    OrientationHelper mSecondaryOrientation;
    private int mSizePerSpan;
    StaggeredGridLayoutManager$Span[] mSpans;
    private int mSpanCount = -1;
    boolean mReverseLayout = false;
    boolean mShouldReverseLayout = false;
    int mPendingScrollPosition = -1;
    int mPendingScrollPositionOffset = Integer.MIN_VALUE;
    StaggeredGridLayoutManager$LazySpanLookup mLazySpanLookup = new StaggeredGridLayoutManager$LazySpanLookup();
    private int mGapStrategy = 2;
    private final Rect mTmpRect = new Rect();
    private final StaggeredGridLayoutManager$AnchorInfo mAnchorInfo = new StaggeredGridLayoutManager$AnchorInfo(this);
    private boolean mLaidOutInvalidFullSpan = false;
    private boolean mSmoothScrollbarEnabled = true;
    private final Runnable mCheckForGapsRunnable = new StaggeredGridLayoutManager$1(this);

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView$LayoutManager$Properties properties = getProperties(context, attributeSet, i, i2);
        setOrientation(properties.orientation);
        setSpanCount(properties.spanCount);
        setReverseLayout(properties.reverseLayout);
        this.mLayoutState = new LayoutState();
        createOrientationHelpers();
    }

    public StaggeredGridLayoutManager(int i, int i2) {
        this.mOrientation = i2;
        setSpanCount(i);
        this.mLayoutState = new LayoutState();
        createOrientationHelpers();
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public boolean isAutoMeasureEnabled() {
        return this.mGapStrategy != 0;
    }

    private void createOrientationHelpers() {
        this.mPrimaryOrientation = OrientationHelper.createOrientationHelper(this, this.mOrientation);
        this.mSecondaryOrientation = OrientationHelper.createOrientationHelper(this, 1 - this.mOrientation);
    }

    boolean checkForGaps() {
        int firstChildPosition;
        int lastChildPosition;
        if (getChildCount() == 0 || this.mGapStrategy == 0 || !isAttachedToWindow()) {
            return false;
        }
        if (this.mShouldReverseLayout) {
            firstChildPosition = getLastChildPosition();
            lastChildPosition = getFirstChildPosition();
        } else {
            firstChildPosition = getFirstChildPosition();
            lastChildPosition = getLastChildPosition();
        }
        if (firstChildPosition == 0 && hasGapsToFix() != null) {
            this.mLazySpanLookup.clear();
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        }
        if (!this.mLaidOutInvalidFullSpan) {
            return false;
        }
        int i = this.mShouldReverseLayout ? -1 : 1;
        int i2 = lastChildPosition + 1;
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem firstFullSpanItemInRange = this.mLazySpanLookup.getFirstFullSpanItemInRange(firstChildPosition, i2, i, true);
        if (firstFullSpanItemInRange == null) {
            this.mLaidOutInvalidFullSpan = false;
            this.mLazySpanLookup.forceInvalidateAfter(i2);
            return false;
        }
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem firstFullSpanItemInRange2 = this.mLazySpanLookup.getFirstFullSpanItemInRange(firstChildPosition, firstFullSpanItemInRange.mPosition, i * (-1), true);
        if (firstFullSpanItemInRange2 == null) {
            this.mLazySpanLookup.forceInvalidateAfter(firstFullSpanItemInRange.mPosition);
        } else {
            this.mLazySpanLookup.forceInvalidateAfter(firstFullSpanItemInRange2.mPosition + 1);
        }
        requestSimpleAnimationsInNextLayout();
        requestLayout();
        return true;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onScrollStateChanged(int i) {
        if (i == 0) {
            checkForGaps();
        }
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView$Recycler recyclerView$Recycler) {
        super.onDetachedFromWindow(recyclerView, recyclerView$Recycler);
        removeCallbacks(this.mCheckForGapsRunnable);
        for (int i = 0; i < this.mSpanCount; i++) {
            this.mSpans[i].clear();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    View hasGapsToFix() {
        int i;
        int i2;
        boolean z;
        int childCount = getChildCount() - 1;
        BitSet bitSet = new BitSet(this.mSpanCount);
        bitSet.set(0, this.mSpanCount, true);
        byte b = (this.mOrientation == 1 && isLayoutRTL()) ? (byte) 1 : (byte) -1;
        if (this.mShouldReverseLayout) {
            i = -1;
        } else {
            i = childCount + 1;
            childCount = 0;
        }
        int i3 = childCount < i ? 1 : -1;
        while (childCount != i) {
            View childAt = getChildAt(childCount);
            StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams) childAt.getLayoutParams();
            if (bitSet.get(staggeredGridLayoutManager$LayoutParams.mSpan.mIndex)) {
                if (checkSpanForGap(staggeredGridLayoutManager$LayoutParams.mSpan)) {
                    return childAt;
                }
                bitSet.clear(staggeredGridLayoutManager$LayoutParams.mSpan.mIndex);
            }
            if (!staggeredGridLayoutManager$LayoutParams.mFullSpan && (i2 = childCount + i3) != i) {
                View childAt2 = getChildAt(i2);
                if (this.mShouldReverseLayout) {
                    int decoratedEnd = this.mPrimaryOrientation.getDecoratedEnd(childAt);
                    int decoratedEnd2 = this.mPrimaryOrientation.getDecoratedEnd(childAt2);
                    if (decoratedEnd < decoratedEnd2) {
                        return childAt;
                    }
                    z = decoratedEnd == decoratedEnd2;
                } else {
                    int decoratedStart = this.mPrimaryOrientation.getDecoratedStart(childAt);
                    int decoratedStart2 = this.mPrimaryOrientation.getDecoratedStart(childAt2);
                    if (decoratedStart > decoratedStart2) {
                        return childAt;
                    }
                    if (decoratedStart == decoratedStart2) {
                    }
                }
                if (z) {
                    if ((staggeredGridLayoutManager$LayoutParams.mSpan.mIndex - ((StaggeredGridLayoutManager$LayoutParams) childAt2.getLayoutParams()).mSpan.mIndex < 0) != (b < 0)) {
                        return childAt;
                    }
                } else {
                    continue;
                }
            }
            childCount += i3;
        }
        return null;
    }

    private boolean checkSpanForGap(StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span) {
        if (this.mShouldReverseLayout) {
            if (staggeredGridLayoutManager$Span.getEndLine() < this.mPrimaryOrientation.getEndAfterPadding()) {
                return !staggeredGridLayoutManager$Span.getLayoutParams(staggeredGridLayoutManager$Span.mViews.get(staggeredGridLayoutManager$Span.mViews.size() - 1)).mFullSpan;
            }
        } else if (staggeredGridLayoutManager$Span.getStartLine() > this.mPrimaryOrientation.getStartAfterPadding()) {
            return !staggeredGridLayoutManager$Span.getLayoutParams(staggeredGridLayoutManager$Span.mViews.get(0)).mFullSpan;
        }
        return false;
    }

    public void setSpanCount(int i) {
        assertNotInLayoutOrScroll(null);
        if (i != this.mSpanCount) {
            invalidateSpanAssignments();
            this.mSpanCount = i;
            this.mRemainingSpans = new BitSet(this.mSpanCount);
            this.mSpans = new StaggeredGridLayoutManager$Span[this.mSpanCount];
            for (int i2 = 0; i2 < this.mSpanCount; i2++) {
                this.mSpans[i2] = new StaggeredGridLayoutManager$Span(this, i2);
            }
            requestLayout();
        }
    }

    public void setOrientation(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        assertNotInLayoutOrScroll(null);
        if (i == this.mOrientation) {
            return;
        }
        this.mOrientation = i;
        OrientationHelper orientationHelper = this.mPrimaryOrientation;
        this.mPrimaryOrientation = this.mSecondaryOrientation;
        this.mSecondaryOrientation = orientationHelper;
        requestLayout();
    }

    public void setReverseLayout(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (this.mPendingSavedState != null && this.mPendingSavedState.mReverseLayout != z) {
            this.mPendingSavedState.mReverseLayout = z;
        }
        this.mReverseLayout = z;
        requestLayout();
    }

    public int getGapStrategy() {
        return this.mGapStrategy;
    }

    public void setGapStrategy(int i) {
        assertNotInLayoutOrScroll(null);
        if (i == this.mGapStrategy) {
            return;
        }
        if (i != 0 && i != 2) {
            throw new IllegalArgumentException("invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS");
        }
        this.mGapStrategy = i;
        requestLayout();
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public int getSpanCount() {
        return this.mSpanCount;
    }

    public void invalidateSpanAssignments() {
        this.mLazySpanLookup.clear();
        requestLayout();
    }

    private void resolveShouldLayoutReverse() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int iChooseSize;
        int iChooseSize2;
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.mOrientation == 1) {
            iChooseSize2 = chooseSize(i2, rect.height() + paddingTop, getMinimumHeight());
            iChooseSize = chooseSize(i, (this.mSizePerSpan * this.mSpanCount) + paddingLeft, getMinimumWidth());
        } else {
            iChooseSize = chooseSize(i, rect.width() + paddingLeft, getMinimumWidth());
            iChooseSize2 = chooseSize(i2, (this.mSizePerSpan * this.mSpanCount) + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onLayoutChildren(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        onLayoutChildren(recyclerView$Recycler, recyclerView$State, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:89:0x0166  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void onLayoutChildren(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, boolean z) {
        StaggeredGridLayoutManager$AnchorInfo staggeredGridLayoutManager$AnchorInfo = this.mAnchorInfo;
        if ((this.mPendingSavedState != null || this.mPendingScrollPosition != -1) && recyclerView$State.getItemCount() == 0) {
            removeAndRecycleAllViews(recyclerView$Recycler);
            staggeredGridLayoutManager$AnchorInfo.reset();
            return;
        }
        boolean z2 = true;
        boolean z3 = (staggeredGridLayoutManager$AnchorInfo.mValid && this.mPendingScrollPosition == -1 && this.mPendingSavedState == null) ? false : true;
        if (z3) {
            staggeredGridLayoutManager$AnchorInfo.reset();
            if (this.mPendingSavedState != null) {
                applyPendingSavedState(staggeredGridLayoutManager$AnchorInfo);
            } else {
                resolveShouldLayoutReverse();
                staggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd = this.mShouldReverseLayout;
            }
            updateAnchorInfoForLayout(recyclerView$State, staggeredGridLayoutManager$AnchorInfo);
            staggeredGridLayoutManager$AnchorInfo.mValid = true;
        }
        if (this.mPendingSavedState == null && this.mPendingScrollPosition == -1 && (staggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd != this.mLastLayoutFromEnd || isLayoutRTL() != this.mLastLayoutRTL)) {
            this.mLazySpanLookup.clear();
            staggeredGridLayoutManager$AnchorInfo.mInvalidateOffsets = true;
        }
        if (getChildCount() > 0 && (this.mPendingSavedState == null || this.mPendingSavedState.mSpanOffsetsSize < 1)) {
            if (staggeredGridLayoutManager$AnchorInfo.mInvalidateOffsets) {
                for (int i = 0; i < this.mSpanCount; i++) {
                    this.mSpans[i].clear();
                    if (staggeredGridLayoutManager$AnchorInfo.mOffset != Integer.MIN_VALUE) {
                        this.mSpans[i].setLine(staggeredGridLayoutManager$AnchorInfo.mOffset);
                    }
                }
            } else if (z3 || this.mAnchorInfo.mSpanReferenceLines == null) {
                for (int i2 = 0; i2 < this.mSpanCount; i2++) {
                    this.mSpans[i2].cacheReferenceLineAndClear(this.mShouldReverseLayout, staggeredGridLayoutManager$AnchorInfo.mOffset);
                }
                this.mAnchorInfo.saveSpanReferenceLines(this.mSpans);
            } else {
                for (int i3 = 0; i3 < this.mSpanCount; i3++) {
                    StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span = this.mSpans[i3];
                    staggeredGridLayoutManager$Span.clear();
                    staggeredGridLayoutManager$Span.setLine(this.mAnchorInfo.mSpanReferenceLines[i3]);
                }
            }
        }
        detachAndScrapAttachedViews(recyclerView$Recycler);
        this.mLayoutState.mRecycle = false;
        this.mLaidOutInvalidFullSpan = false;
        updateMeasureSpecs(this.mSecondaryOrientation.getTotalSpace());
        updateLayoutState(staggeredGridLayoutManager$AnchorInfo.mPosition, recyclerView$State);
        if (staggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd) {
            setLayoutStateDirection(-1);
            fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State);
            setLayoutStateDirection(1);
            this.mLayoutState.mCurrentPosition = staggeredGridLayoutManager$AnchorInfo.mPosition + this.mLayoutState.mItemDirection;
            fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State);
        } else {
            setLayoutStateDirection(1);
            fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State);
            setLayoutStateDirection(-1);
            this.mLayoutState.mCurrentPosition = staggeredGridLayoutManager$AnchorInfo.mPosition + this.mLayoutState.mItemDirection;
            fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State);
        }
        repositionToWrapContentIfNecessary();
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout) {
                fixEndGap(recyclerView$Recycler, recyclerView$State, true);
                fixStartGap(recyclerView$Recycler, recyclerView$State, false);
            } else {
                fixStartGap(recyclerView$Recycler, recyclerView$State, true);
                fixEndGap(recyclerView$Recycler, recyclerView$State, false);
            }
        }
        if (!z || recyclerView$State.isPreLayout()) {
            z2 = false;
        } else if (this.mGapStrategy != 0 && getChildCount() > 0 && (this.mLaidOutInvalidFullSpan || hasGapsToFix() != null)) {
            removeCallbacks(this.mCheckForGapsRunnable);
            if (!checkForGaps()) {
            }
        }
        if (recyclerView$State.isPreLayout()) {
            this.mAnchorInfo.reset();
        }
        this.mLastLayoutFromEnd = staggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd;
        this.mLastLayoutRTL = isLayoutRTL();
        if (z2) {
            this.mAnchorInfo.reset();
            onLayoutChildren(recyclerView$Recycler, recyclerView$State, false);
        }
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onLayoutCompleted(RecyclerView$State recyclerView$State) {
        super.onLayoutCompleted(recyclerView$State);
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo.reset();
    }

    private void repositionToWrapContentIfNecessary() {
        if (this.mSecondaryOrientation.getMode() == 1073741824) {
            return;
        }
        int childCount = getChildCount();
        float fMax = 0.0f;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            float decoratedMeasurement = this.mSecondaryOrientation.getDecoratedMeasurement(childAt);
            if (decoratedMeasurement >= fMax) {
                if (((StaggeredGridLayoutManager$LayoutParams) childAt.getLayoutParams()).isFullSpan()) {
                    decoratedMeasurement = (1.0f * decoratedMeasurement) / this.mSpanCount;
                }
                fMax = Math.max(fMax, decoratedMeasurement);
            }
        }
        int i2 = this.mSizePerSpan;
        int iRound = Math.round(fMax * this.mSpanCount);
        if (this.mSecondaryOrientation.getMode() == Integer.MIN_VALUE) {
            iRound = Math.min(iRound, this.mSecondaryOrientation.getTotalSpace());
        }
        updateMeasureSpecs(iRound);
        if (this.mSizePerSpan == i2) {
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt2 = getChildAt(i3);
            StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams) childAt2.getLayoutParams();
            if (!staggeredGridLayoutManager$LayoutParams.mFullSpan) {
                if (isLayoutRTL() && this.mOrientation == 1) {
                    childAt2.offsetLeftAndRight(((-((this.mSpanCount - 1) - staggeredGridLayoutManager$LayoutParams.mSpan.mIndex)) * this.mSizePerSpan) - ((-((this.mSpanCount - 1) - staggeredGridLayoutManager$LayoutParams.mSpan.mIndex)) * i2));
                } else {
                    int i4 = staggeredGridLayoutManager$LayoutParams.mSpan.mIndex * this.mSizePerSpan;
                    int i5 = staggeredGridLayoutManager$LayoutParams.mSpan.mIndex * i2;
                    if (this.mOrientation == 1) {
                        childAt2.offsetLeftAndRight(i4 - i5);
                    } else {
                        childAt2.offsetTopAndBottom(i4 - i5);
                    }
                }
            }
        }
    }

    private void applyPendingSavedState(StaggeredGridLayoutManager$AnchorInfo staggeredGridLayoutManager$AnchorInfo) {
        if (this.mPendingSavedState.mSpanOffsetsSize > 0) {
            if (this.mPendingSavedState.mSpanOffsetsSize == this.mSpanCount) {
                for (int i = 0; i < this.mSpanCount; i++) {
                    this.mSpans[i].clear();
                    int startAfterPadding = this.mPendingSavedState.mSpanOffsets[i];
                    if (startAfterPadding != Integer.MIN_VALUE) {
                        if (this.mPendingSavedState.mAnchorLayoutFromEnd) {
                            startAfterPadding += this.mPrimaryOrientation.getEndAfterPadding();
                        } else {
                            startAfterPadding += this.mPrimaryOrientation.getStartAfterPadding();
                        }
                    }
                    this.mSpans[i].setLine(startAfterPadding);
                }
            } else {
                this.mPendingSavedState.invalidateSpanInfo();
                this.mPendingSavedState.mAnchorPosition = this.mPendingSavedState.mVisibleAnchorPosition;
            }
        }
        this.mLastLayoutRTL = this.mPendingSavedState.mLastLayoutRTL;
        setReverseLayout(this.mPendingSavedState.mReverseLayout);
        resolveShouldLayoutReverse();
        if (this.mPendingSavedState.mAnchorPosition != -1) {
            this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
            staggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd = this.mPendingSavedState.mAnchorLayoutFromEnd;
        } else {
            staggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd = this.mShouldReverseLayout;
        }
        if (this.mPendingSavedState.mSpanLookupSize > 1) {
            this.mLazySpanLookup.mData = this.mPendingSavedState.mSpanLookup;
            this.mLazySpanLookup.mFullSpanItems = this.mPendingSavedState.mFullSpanItems;
        }
    }

    void updateAnchorInfoForLayout(RecyclerView$State recyclerView$State, StaggeredGridLayoutManager$AnchorInfo staggeredGridLayoutManager$AnchorInfo) {
        if (updateAnchorFromPendingData(recyclerView$State, staggeredGridLayoutManager$AnchorInfo) || updateAnchorFromChildren(recyclerView$State, staggeredGridLayoutManager$AnchorInfo)) {
            return;
        }
        staggeredGridLayoutManager$AnchorInfo.assignCoordinateFromPadding();
        staggeredGridLayoutManager$AnchorInfo.mPosition = 0;
    }

    private boolean updateAnchorFromChildren(RecyclerView$State recyclerView$State, StaggeredGridLayoutManager$AnchorInfo staggeredGridLayoutManager$AnchorInfo) {
        int iFindFirstReferenceChildPosition;
        if (this.mLastLayoutFromEnd) {
            iFindFirstReferenceChildPosition = findLastReferenceChildPosition(recyclerView$State.getItemCount());
        } else {
            iFindFirstReferenceChildPosition = findFirstReferenceChildPosition(recyclerView$State.getItemCount());
        }
        staggeredGridLayoutManager$AnchorInfo.mPosition = iFindFirstReferenceChildPosition;
        staggeredGridLayoutManager$AnchorInfo.mOffset = Integer.MIN_VALUE;
        return true;
    }

    boolean updateAnchorFromPendingData(RecyclerView$State recyclerView$State, StaggeredGridLayoutManager$AnchorInfo staggeredGridLayoutManager$AnchorInfo) {
        int startAfterPadding;
        if (recyclerView$State.isPreLayout() || this.mPendingScrollPosition == -1) {
            return false;
        }
        if (this.mPendingScrollPosition < 0 || this.mPendingScrollPosition >= recyclerView$State.getItemCount()) {
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
            return false;
        }
        if (this.mPendingSavedState == null || this.mPendingSavedState.mAnchorPosition == -1 || this.mPendingSavedState.mSpanOffsetsSize < 1) {
            View viewFindViewByPosition = findViewByPosition(this.mPendingScrollPosition);
            if (viewFindViewByPosition != null) {
                staggeredGridLayoutManager$AnchorInfo.mPosition = this.mShouldReverseLayout ? getLastChildPosition() : getFirstChildPosition();
                if (this.mPendingScrollPositionOffset != Integer.MIN_VALUE) {
                    if (staggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd) {
                        staggeredGridLayoutManager$AnchorInfo.mOffset = (this.mPrimaryOrientation.getEndAfterPadding() - this.mPendingScrollPositionOffset) - this.mPrimaryOrientation.getDecoratedEnd(viewFindViewByPosition);
                    } else {
                        staggeredGridLayoutManager$AnchorInfo.mOffset = (this.mPrimaryOrientation.getStartAfterPadding() + this.mPendingScrollPositionOffset) - this.mPrimaryOrientation.getDecoratedStart(viewFindViewByPosition);
                    }
                    return true;
                }
                if (this.mPrimaryOrientation.getDecoratedMeasurement(viewFindViewByPosition) > this.mPrimaryOrientation.getTotalSpace()) {
                    if (staggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd) {
                        startAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
                    } else {
                        startAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
                    }
                    staggeredGridLayoutManager$AnchorInfo.mOffset = startAfterPadding;
                    return true;
                }
                int decoratedStart = this.mPrimaryOrientation.getDecoratedStart(viewFindViewByPosition) - this.mPrimaryOrientation.getStartAfterPadding();
                if (decoratedStart < 0) {
                    staggeredGridLayoutManager$AnchorInfo.mOffset = -decoratedStart;
                    return true;
                }
                int endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding() - this.mPrimaryOrientation.getDecoratedEnd(viewFindViewByPosition);
                if (endAfterPadding < 0) {
                    staggeredGridLayoutManager$AnchorInfo.mOffset = endAfterPadding;
                    return true;
                }
                staggeredGridLayoutManager$AnchorInfo.mOffset = Integer.MIN_VALUE;
            } else {
                staggeredGridLayoutManager$AnchorInfo.mPosition = this.mPendingScrollPosition;
                if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
                    staggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd = calculateScrollDirectionForPosition(staggeredGridLayoutManager$AnchorInfo.mPosition) == 1;
                    staggeredGridLayoutManager$AnchorInfo.assignCoordinateFromPadding();
                } else {
                    staggeredGridLayoutManager$AnchorInfo.assignCoordinateFromPadding(this.mPendingScrollPositionOffset);
                }
                staggeredGridLayoutManager$AnchorInfo.mInvalidateOffsets = true;
            }
        } else {
            staggeredGridLayoutManager$AnchorInfo.mOffset = Integer.MIN_VALUE;
            staggeredGridLayoutManager$AnchorInfo.mPosition = this.mPendingScrollPosition;
        }
        return true;
    }

    void updateMeasureSpecs(int i) {
        this.mSizePerSpan = i / this.mSpanCount;
        this.mFullSizeSpec = View$MeasureSpec.makeMeasureSpec(i, this.mSecondaryOrientation.getMode());
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null;
    }

    public int[] findFirstVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.mSpanCount];
        } else if (iArr.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.mSpanCount; i++) {
            iArr[i] = this.mSpans[i].findFirstVisibleItemPosition();
        }
        return iArr;
    }

    public int[] findFirstCompletelyVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.mSpanCount];
        } else if (iArr.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.mSpanCount; i++) {
            iArr[i] = this.mSpans[i].findFirstCompletelyVisibleItemPosition();
        }
        return iArr;
    }

    public int[] findLastVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.mSpanCount];
        } else if (iArr.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.mSpanCount; i++) {
            iArr[i] = this.mSpans[i].findLastVisibleItemPosition();
        }
        return iArr;
    }

    public int[] findLastCompletelyVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.mSpanCount];
        } else if (iArr.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.mSpanCount; i++) {
            iArr[i] = this.mSpans[i].findLastCompletelyVisibleItemPosition();
        }
        return iArr;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView$State recyclerView$State) {
        return computeScrollOffset(recyclerView$State);
    }

    private int computeScrollOffset(RecyclerView$State recyclerView$State) {
        if (getChildCount() == 0) {
            return 0;
        }
        return ScrollbarHelper.computeScrollOffset(recyclerView$State, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(!this.mSmoothScrollbarEnabled), findFirstVisibleItemClosestToEnd(!this.mSmoothScrollbarEnabled), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int computeVerticalScrollOffset(RecyclerView$State recyclerView$State) {
        return computeScrollOffset(recyclerView$State);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView$State recyclerView$State) {
        return computeScrollExtent(recyclerView$State);
    }

    private int computeScrollExtent(RecyclerView$State recyclerView$State) {
        if (getChildCount() == 0) {
            return 0;
        }
        return ScrollbarHelper.computeScrollExtent(recyclerView$State, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(!this.mSmoothScrollbarEnabled), findFirstVisibleItemClosestToEnd(!this.mSmoothScrollbarEnabled), this, this.mSmoothScrollbarEnabled);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int computeVerticalScrollExtent(RecyclerView$State recyclerView$State) {
        return computeScrollExtent(recyclerView$State);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int computeHorizontalScrollRange(RecyclerView$State recyclerView$State) {
        return computeScrollRange(recyclerView$State);
    }

    private int computeScrollRange(RecyclerView$State recyclerView$State) {
        if (getChildCount() == 0) {
            return 0;
        }
        return ScrollbarHelper.computeScrollRange(recyclerView$State, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(!this.mSmoothScrollbarEnabled), findFirstVisibleItemClosestToEnd(!this.mSmoothScrollbarEnabled), this, this.mSmoothScrollbarEnabled);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int computeVerticalScrollRange(RecyclerView$State recyclerView$State) {
        return computeScrollRange(recyclerView$State);
    }

    private void measureChildWithDecorationsAndMargin(View view, StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams, boolean z) {
        if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
            if (this.mOrientation == 1) {
                measureChildWithDecorationsAndMargin(view, this.mFullSizeSpec, getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), staggeredGridLayoutManager$LayoutParams.height, true), z);
                return;
            } else {
                measureChildWithDecorationsAndMargin(view, getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), staggeredGridLayoutManager$LayoutParams.width, true), this.mFullSizeSpec, z);
                return;
            }
        }
        if (this.mOrientation == 1) {
            measureChildWithDecorationsAndMargin(view, getChildMeasureSpec(this.mSizePerSpan, getWidthMode(), 0, staggeredGridLayoutManager$LayoutParams.width, false), getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), staggeredGridLayoutManager$LayoutParams.height, true), z);
        } else {
            measureChildWithDecorationsAndMargin(view, getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), staggeredGridLayoutManager$LayoutParams.width, true), getChildMeasureSpec(this.mSizePerSpan, getHeightMode(), 0, staggeredGridLayoutManager$LayoutParams.height, false), z);
        }
    }

    private void measureChildWithDecorationsAndMargin(View view, int i, int i2, boolean z) {
        boolean zShouldMeasureChild;
        calculateItemDecorationsForChild(view, this.mTmpRect);
        StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams) view.getLayoutParams();
        int iUpdateSpecWithExtra = updateSpecWithExtra(i, staggeredGridLayoutManager$LayoutParams.leftMargin + this.mTmpRect.left, staggeredGridLayoutManager$LayoutParams.rightMargin + this.mTmpRect.right);
        int iUpdateSpecWithExtra2 = updateSpecWithExtra(i2, staggeredGridLayoutManager$LayoutParams.topMargin + this.mTmpRect.top, staggeredGridLayoutManager$LayoutParams.bottomMargin + this.mTmpRect.bottom);
        if (z) {
            zShouldMeasureChild = shouldReMeasureChild(view, iUpdateSpecWithExtra, iUpdateSpecWithExtra2, staggeredGridLayoutManager$LayoutParams);
        } else {
            zShouldMeasureChild = shouldMeasureChild(view, iUpdateSpecWithExtra, iUpdateSpecWithExtra2, staggeredGridLayoutManager$LayoutParams);
        }
        if (zShouldMeasureChild) {
            view.measure(iUpdateSpecWithExtra, iUpdateSpecWithExtra2);
        }
    }

    private int updateSpecWithExtra(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View$MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View$MeasureSpec.makeMeasureSpec(Math.max(0, (View$MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof StaggeredGridLayoutManager$SavedState) {
            this.mPendingSavedState = (StaggeredGridLayoutManager$SavedState) parcelable;
            requestLayout();
        }
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public Parcelable onSaveInstanceState() {
        int startLine;
        if (this.mPendingSavedState != null) {
            return new StaggeredGridLayoutManager$SavedState(this.mPendingSavedState);
        }
        StaggeredGridLayoutManager$SavedState staggeredGridLayoutManager$SavedState = new StaggeredGridLayoutManager$SavedState();
        staggeredGridLayoutManager$SavedState.mReverseLayout = this.mReverseLayout;
        staggeredGridLayoutManager$SavedState.mAnchorLayoutFromEnd = this.mLastLayoutFromEnd;
        staggeredGridLayoutManager$SavedState.mLastLayoutRTL = this.mLastLayoutRTL;
        if (this.mLazySpanLookup != null && this.mLazySpanLookup.mData != null) {
            staggeredGridLayoutManager$SavedState.mSpanLookup = this.mLazySpanLookup.mData;
            staggeredGridLayoutManager$SavedState.mSpanLookupSize = staggeredGridLayoutManager$SavedState.mSpanLookup.length;
            staggeredGridLayoutManager$SavedState.mFullSpanItems = this.mLazySpanLookup.mFullSpanItems;
        } else {
            staggeredGridLayoutManager$SavedState.mSpanLookupSize = 0;
        }
        if (getChildCount() > 0) {
            staggeredGridLayoutManager$SavedState.mAnchorPosition = this.mLastLayoutFromEnd ? getLastChildPosition() : getFirstChildPosition();
            staggeredGridLayoutManager$SavedState.mVisibleAnchorPosition = findFirstVisibleItemPositionInt();
            staggeredGridLayoutManager$SavedState.mSpanOffsetsSize = this.mSpanCount;
            staggeredGridLayoutManager$SavedState.mSpanOffsets = new int[this.mSpanCount];
            for (int i = 0; i < this.mSpanCount; i++) {
                if (this.mLastLayoutFromEnd) {
                    startLine = this.mSpans[i].getEndLine(Integer.MIN_VALUE);
                    if (startLine != Integer.MIN_VALUE) {
                        startLine -= this.mPrimaryOrientation.getEndAfterPadding();
                    }
                } else {
                    startLine = this.mSpans[i].getStartLine(Integer.MIN_VALUE);
                    if (startLine != Integer.MIN_VALUE) {
                        startLine -= this.mPrimaryOrientation.getStartAfterPadding();
                    }
                }
                staggeredGridLayoutManager$SavedState.mSpanOffsets[i] = startLine;
            }
        } else {
            staggeredGridLayoutManager$SavedState.mAnchorPosition = -1;
            staggeredGridLayoutManager$SavedState.mVisibleAnchorPosition = -1;
            staggeredGridLayoutManager$SavedState.mSpanOffsetsSize = 0;
        }
        return staggeredGridLayoutManager$SavedState;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof StaggeredGridLayoutManager$LayoutParams)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, accessibilityNodeInfoCompat);
            return;
        }
        StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams) layoutParams;
        if (this.mOrientation == 0) {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat$CollectionItemInfoCompat.obtain(staggeredGridLayoutManager$LayoutParams.getSpanIndex(), staggeredGridLayoutManager$LayoutParams.mFullSpan ? this.mSpanCount : 1, -1, -1, staggeredGridLayoutManager$LayoutParams.mFullSpan, false));
        } else {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat$CollectionItemInfoCompat.obtain(-1, -1, staggeredGridLayoutManager$LayoutParams.getSpanIndex(), staggeredGridLayoutManager$LayoutParams.mFullSpan ? this.mSpanCount : 1, staggeredGridLayoutManager$LayoutParams.mFullSpan, false));
        }
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View viewFindFirstVisibleItemClosestToStart = findFirstVisibleItemClosestToStart(false);
            View viewFindFirstVisibleItemClosestToEnd = findFirstVisibleItemClosestToEnd(false);
            if (viewFindFirstVisibleItemClosestToStart == null || viewFindFirstVisibleItemClosestToEnd == null) {
                return;
            }
            int position = getPosition(viewFindFirstVisibleItemClosestToStart);
            int position2 = getPosition(viewFindFirstVisibleItemClosestToEnd);
            if (position < position2) {
                accessibilityEvent.setFromIndex(position);
                accessibilityEvent.setToIndex(position2);
            } else {
                accessibilityEvent.setFromIndex(position2);
                accessibilityEvent.setToIndex(position);
            }
        }
    }

    int findFirstVisibleItemPositionInt() {
        View viewFindFirstVisibleItemClosestToEnd = this.mShouldReverseLayout ? findFirstVisibleItemClosestToEnd(true) : findFirstVisibleItemClosestToStart(true);
        if (viewFindFirstVisibleItemClosestToEnd == null) {
            return -1;
        }
        return getPosition(viewFindFirstVisibleItemClosestToEnd);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int getRowCountForAccessibility(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (this.mOrientation == 0) {
            return this.mSpanCount;
        }
        return super.getRowCountForAccessibility(recyclerView$Recycler, recyclerView$State);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int getColumnCountForAccessibility(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (this.mOrientation == 1) {
            return this.mSpanCount;
        }
        return super.getColumnCountForAccessibility(recyclerView$Recycler, recyclerView$State);
    }

    View findFirstVisibleItemClosestToStart(boolean z) {
        int startAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
        int endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
        int childCount = getChildCount();
        View view = null;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int decoratedStart = this.mPrimaryOrientation.getDecoratedStart(childAt);
            if (this.mPrimaryOrientation.getDecoratedEnd(childAt) > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedStart >= startAfterPadding || !z) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    View findFirstVisibleItemClosestToEnd(boolean z) {
        int startAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
        int endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int decoratedStart = this.mPrimaryOrientation.getDecoratedStart(childAt);
            int decoratedEnd = this.mPrimaryOrientation.getDecoratedEnd(childAt);
            if (decoratedEnd > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedEnd <= endAfterPadding || !z) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    private void fixEndGap(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, boolean z) {
        int endAfterPadding;
        int maxEnd = getMaxEnd(Integer.MIN_VALUE);
        if (maxEnd != Integer.MIN_VALUE && (endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding() - maxEnd) > 0) {
            int i = endAfterPadding - (-scrollBy(-endAfterPadding, recyclerView$Recycler, recyclerView$State));
            if (!z || i <= 0) {
                return;
            }
            this.mPrimaryOrientation.offsetChildren(i);
        }
    }

    private void fixStartGap(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, boolean z) {
        int startAfterPadding;
        int minStart = getMinStart(Integer.MAX_VALUE);
        if (minStart != Integer.MAX_VALUE && (startAfterPadding = minStart - this.mPrimaryOrientation.getStartAfterPadding()) > 0) {
            int iScrollBy = startAfterPadding - scrollBy(startAfterPadding, recyclerView$Recycler, recyclerView$State);
            if (!z || iScrollBy <= 0) {
                return;
            }
            this.mPrimaryOrientation.offsetChildren(-iScrollBy);
        }
    }

    private void updateLayoutState(int i, RecyclerView$State recyclerView$State) {
        int totalSpace;
        int totalSpace2;
        int targetScrollPosition;
        boolean z = false;
        this.mLayoutState.mAvailable = 0;
        this.mLayoutState.mCurrentPosition = i;
        if (!isSmoothScrolling() || (targetScrollPosition = recyclerView$State.getTargetScrollPosition()) == -1) {
            totalSpace = 0;
            totalSpace2 = 0;
        } else {
            if (this.mShouldReverseLayout == (targetScrollPosition < i)) {
                totalSpace2 = this.mPrimaryOrientation.getTotalSpace();
                totalSpace = 0;
            } else {
                totalSpace = this.mPrimaryOrientation.getTotalSpace();
                totalSpace2 = 0;
            }
        }
        if (getClipToPadding()) {
            this.mLayoutState.mStartLine = this.mPrimaryOrientation.getStartAfterPadding() - totalSpace;
            this.mLayoutState.mEndLine = this.mPrimaryOrientation.getEndAfterPadding() + totalSpace2;
        } else {
            this.mLayoutState.mEndLine = this.mPrimaryOrientation.getEnd() + totalSpace2;
            this.mLayoutState.mStartLine = -totalSpace;
        }
        this.mLayoutState.mStopInFocusable = false;
        this.mLayoutState.mRecycle = true;
        LayoutState layoutState = this.mLayoutState;
        if (this.mPrimaryOrientation.getMode() == 0 && this.mPrimaryOrientation.getEnd() == 0) {
            z = true;
        }
        layoutState.mInfinite = z;
    }

    private void setLayoutStateDirection(int i) {
        this.mLayoutState.mLayoutDirection = i;
        this.mLayoutState.mItemDirection = this.mShouldReverseLayout != (i == -1) ? -1 : 1;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void offsetChildrenHorizontal(int i) {
        super.offsetChildrenHorizontal(i);
        for (int i2 = 0; i2 < this.mSpanCount; i2++) {
            this.mSpans[i2].onOffset(i);
        }
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void offsetChildrenVertical(int i) {
        super.offsetChildrenVertical(i);
        for (int i2 = 0; i2 < this.mSpanCount; i2++) {
            this.mSpans[i2].onOffset(i);
        }
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        handleUpdate(i, i2, 2);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        handleUpdate(i, i2, 1);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        this.mLazySpanLookup.clear();
        requestLayout();
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        handleUpdate(i, i2, 8);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        handleUpdate(i, i2, 4);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void handleUpdate(int i, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int lastChildPosition = this.mShouldReverseLayout ? getLastChildPosition() : getFirstChildPosition();
        if (i3 != 8) {
            i4 = i + i2;
        } else {
            if (i >= i2) {
                i5 = i + 1;
                i6 = i2;
                this.mLazySpanLookup.invalidateAfter(i6);
                if (i3 == 8) {
                    switch (i3) {
                        case 1:
                            this.mLazySpanLookup.offsetForAddition(i, i2);
                            break;
                        case 2:
                            this.mLazySpanLookup.offsetForRemoval(i, i2);
                            break;
                    }
                } else {
                    this.mLazySpanLookup.offsetForRemoval(i, 1);
                    this.mLazySpanLookup.offsetForAddition(i2, 1);
                }
                if (i5 > lastChildPosition) {
                    return;
                }
                if (i6 <= (this.mShouldReverseLayout ? getFirstChildPosition() : getLastChildPosition())) {
                    requestLayout();
                    return;
                }
                return;
            }
            i4 = i2 + 1;
        }
        i5 = i4;
        i6 = i;
        this.mLazySpanLookup.invalidateAfter(i6);
        if (i3 == 8) {
        }
        if (i5 > lastChildPosition) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r17v0, types: [android.support.v7.widget.StaggeredGridLayoutManager] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v6 */
    private int fill(RecyclerView$Recycler recyclerView$Recycler, LayoutState layoutState, RecyclerView$State recyclerView$State) {
        int i;
        int startAfterPadding;
        int maxEnd;
        StaggeredGridLayoutManager$Span nextSpan;
        int decoratedMeasurement;
        int i2;
        int decoratedMeasurement2;
        int decoratedMeasurement3;
        boolean z;
        boolean zAreAllStartsEqual;
        ?? r9 = 0;
        this.mRemainingSpans.set(0, this.mSpanCount, true);
        if (this.mLayoutState.mInfinite) {
            i = layoutState.mLayoutDirection == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        } else if (layoutState.mLayoutDirection == 1) {
            i = layoutState.mEndLine + layoutState.mAvailable;
        } else {
            i = layoutState.mStartLine - layoutState.mAvailable;
        }
        int i3 = i;
        updateAllRemainingSpans(layoutState.mLayoutDirection, i3);
        if (this.mShouldReverseLayout) {
            startAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
        } else {
            startAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
        }
        int i4 = startAfterPadding;
        ?? r0 = false;
        while (layoutState.hasMore(recyclerView$State) && (this.mLayoutState.mInfinite || !this.mRemainingSpans.isEmpty())) {
            View next = layoutState.next(recyclerView$Recycler);
            StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams) next.getLayoutParams();
            int viewLayoutPosition = staggeredGridLayoutManager$LayoutParams.getViewLayoutPosition();
            int span = this.mLazySpanLookup.getSpan(viewLayoutPosition);
            ?? r3 = span == -1 ? 1 : r9;
            if (r3 != 0) {
                nextSpan = staggeredGridLayoutManager$LayoutParams.mFullSpan ? this.mSpans[r9] : getNextSpan(layoutState);
                this.mLazySpanLookup.setSpan(viewLayoutPosition, nextSpan);
            } else {
                nextSpan = this.mSpans[span];
            }
            StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span = nextSpan;
            staggeredGridLayoutManager$LayoutParams.mSpan = staggeredGridLayoutManager$Span;
            if (layoutState.mLayoutDirection == 1) {
                addView(next);
            } else {
                addView(next, r9);
            }
            measureChildWithDecorationsAndMargin(next, staggeredGridLayoutManager$LayoutParams, r9);
            if (layoutState.mLayoutDirection == 1) {
                int maxEnd2 = staggeredGridLayoutManager$LayoutParams.mFullSpan ? getMaxEnd(i4) : staggeredGridLayoutManager$Span.getEndLine(i4);
                int decoratedMeasurement4 = this.mPrimaryOrientation.getDecoratedMeasurement(next) + maxEnd2;
                if (r3 != 0 && staggeredGridLayoutManager$LayoutParams.mFullSpan) {
                    StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItemCreateFullSpanItemFromEnd = createFullSpanItemFromEnd(maxEnd2);
                    staggeredGridLayoutManager$LazySpanLookup$FullSpanItemCreateFullSpanItemFromEnd.mGapDir = -1;
                    staggeredGridLayoutManager$LazySpanLookup$FullSpanItemCreateFullSpanItemFromEnd.mPosition = viewLayoutPosition;
                    this.mLazySpanLookup.addFullSpanItem(staggeredGridLayoutManager$LazySpanLookup$FullSpanItemCreateFullSpanItemFromEnd);
                }
                i2 = decoratedMeasurement4;
                decoratedMeasurement = maxEnd2;
            } else {
                int minStart = staggeredGridLayoutManager$LayoutParams.mFullSpan ? getMinStart(i4) : staggeredGridLayoutManager$Span.getStartLine(i4);
                decoratedMeasurement = minStart - this.mPrimaryOrientation.getDecoratedMeasurement(next);
                if (r3 != 0 && staggeredGridLayoutManager$LayoutParams.mFullSpan) {
                    StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItemCreateFullSpanItemFromStart = createFullSpanItemFromStart(minStart);
                    staggeredGridLayoutManager$LazySpanLookup$FullSpanItemCreateFullSpanItemFromStart.mGapDir = 1;
                    staggeredGridLayoutManager$LazySpanLookup$FullSpanItemCreateFullSpanItemFromStart.mPosition = viewLayoutPosition;
                    this.mLazySpanLookup.addFullSpanItem(staggeredGridLayoutManager$LazySpanLookup$FullSpanItemCreateFullSpanItemFromStart);
                }
                i2 = minStart;
            }
            if (staggeredGridLayoutManager$LayoutParams.mFullSpan && layoutState.mItemDirection == -1) {
                if (r3 != 0) {
                    this.mLaidOutInvalidFullSpan = true;
                } else {
                    if (layoutState.mLayoutDirection == 1) {
                        zAreAllStartsEqual = areAllEndsEqual();
                    } else {
                        zAreAllStartsEqual = areAllStartsEqual();
                    }
                    if (!zAreAllStartsEqual) {
                        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem fullSpanItem = this.mLazySpanLookup.getFullSpanItem(viewLayoutPosition);
                        if (fullSpanItem != null) {
                            fullSpanItem.mHasUnwantedGapAfter = true;
                        }
                        this.mLaidOutInvalidFullSpan = true;
                    }
                }
            }
            attachViewToSpans(next, staggeredGridLayoutManager$LayoutParams, layoutState);
            if (isLayoutRTL() && this.mOrientation == 1) {
                int endAfterPadding = staggeredGridLayoutManager$LayoutParams.mFullSpan ? this.mSecondaryOrientation.getEndAfterPadding() : this.mSecondaryOrientation.getEndAfterPadding() - (((this.mSpanCount - 1) - staggeredGridLayoutManager$Span.mIndex) * this.mSizePerSpan);
                decoratedMeasurement3 = endAfterPadding;
                decoratedMeasurement2 = endAfterPadding - this.mSecondaryOrientation.getDecoratedMeasurement(next);
            } else {
                int startAfterPadding2 = staggeredGridLayoutManager$LayoutParams.mFullSpan ? this.mSecondaryOrientation.getStartAfterPadding() : (staggeredGridLayoutManager$Span.mIndex * this.mSizePerSpan) + this.mSecondaryOrientation.getStartAfterPadding();
                decoratedMeasurement2 = startAfterPadding2;
                decoratedMeasurement3 = this.mSecondaryOrientation.getDecoratedMeasurement(next) + startAfterPadding2;
            }
            if (this.mOrientation == 1) {
                layoutDecoratedWithMargins(next, decoratedMeasurement2, decoratedMeasurement, decoratedMeasurement3, i2);
            } else {
                layoutDecoratedWithMargins(next, decoratedMeasurement, decoratedMeasurement2, i2, decoratedMeasurement3);
            }
            if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
                updateAllRemainingSpans(this.mLayoutState.mLayoutDirection, i3);
            } else {
                updateRemainingSpans(staggeredGridLayoutManager$Span, this.mLayoutState.mLayoutDirection, i3);
            }
            recycle(recyclerView$Recycler, this.mLayoutState);
            if (!this.mLayoutState.mStopInFocusable || !next.hasFocusable()) {
                z = false;
            } else if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
                this.mRemainingSpans.clear();
                z = false;
            } else {
                z = false;
                this.mRemainingSpans.set(staggeredGridLayoutManager$Span.mIndex, false);
            }
            r9 = z;
            r0 = true;
        }
        ?? r32 = r9;
        if (r0 == false) {
            recycle(recyclerView$Recycler, this.mLayoutState);
        }
        if (this.mLayoutState.mLayoutDirection == -1) {
            maxEnd = this.mPrimaryOrientation.getStartAfterPadding() - getMinStart(this.mPrimaryOrientation.getStartAfterPadding());
        } else {
            maxEnd = getMaxEnd(this.mPrimaryOrientation.getEndAfterPadding()) - this.mPrimaryOrientation.getEndAfterPadding();
        }
        if (maxEnd > 0) {
            return Math.min(layoutState.mAvailable, maxEnd);
        }
        return r32 == true ? 1 : 0;
    }

    private StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem createFullSpanItemFromEnd(int i) {
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = new StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem();
        staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapPerSpan = new int[this.mSpanCount];
        for (int i2 = 0; i2 < this.mSpanCount; i2++) {
            staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapPerSpan[i2] = i - this.mSpans[i2].getEndLine(i);
        }
        return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    }

    private StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem createFullSpanItemFromStart(int i) {
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = new StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem();
        staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapPerSpan = new int[this.mSpanCount];
        for (int i2 = 0; i2 < this.mSpanCount; i2++) {
            staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapPerSpan[i2] = this.mSpans[i2].getStartLine(i) - i;
        }
        return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    }

    private void attachViewToSpans(View view, StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams, LayoutState layoutState) {
        if (layoutState.mLayoutDirection == 1) {
            if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
                appendViewToAllSpans(view);
                return;
            } else {
                staggeredGridLayoutManager$LayoutParams.mSpan.appendToSpan(view);
                return;
            }
        }
        if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
            prependViewToAllSpans(view);
        } else {
            staggeredGridLayoutManager$LayoutParams.mSpan.prependToSpan(view);
        }
    }

    private void recycle(RecyclerView$Recycler recyclerView$Recycler, LayoutState layoutState) {
        int iMin;
        int iMin2;
        if (!layoutState.mRecycle || layoutState.mInfinite) {
            return;
        }
        if (layoutState.mAvailable == 0) {
            if (layoutState.mLayoutDirection == -1) {
                recycleFromEnd(recyclerView$Recycler, layoutState.mEndLine);
                return;
            } else {
                recycleFromStart(recyclerView$Recycler, layoutState.mStartLine);
                return;
            }
        }
        if (layoutState.mLayoutDirection == -1) {
            int maxStart = layoutState.mStartLine - getMaxStart(layoutState.mStartLine);
            if (maxStart < 0) {
                iMin2 = layoutState.mEndLine;
            } else {
                iMin2 = layoutState.mEndLine - Math.min(maxStart, layoutState.mAvailable);
            }
            recycleFromEnd(recyclerView$Recycler, iMin2);
            return;
        }
        int minEnd = getMinEnd(layoutState.mEndLine) - layoutState.mEndLine;
        if (minEnd < 0) {
            iMin = layoutState.mStartLine;
        } else {
            iMin = Math.min(minEnd, layoutState.mAvailable) + layoutState.mStartLine;
        }
        recycleFromStart(recyclerView$Recycler, iMin);
    }

    private void appendViewToAllSpans(View view) {
        for (int i = this.mSpanCount - 1; i >= 0; i--) {
            this.mSpans[i].appendToSpan(view);
        }
    }

    private void prependViewToAllSpans(View view) {
        for (int i = this.mSpanCount - 1; i >= 0; i--) {
            this.mSpans[i].prependToSpan(view);
        }
    }

    private void updateAllRemainingSpans(int i, int i2) {
        for (int i3 = 0; i3 < this.mSpanCount; i3++) {
            if (!this.mSpans[i3].mViews.isEmpty()) {
                updateRemainingSpans(this.mSpans[i3], i, i2);
            }
        }
    }

    private void updateRemainingSpans(StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span, int i, int i2) {
        int deletedSize = staggeredGridLayoutManager$Span.getDeletedSize();
        if (i == -1) {
            if (staggeredGridLayoutManager$Span.getStartLine() + deletedSize <= i2) {
                this.mRemainingSpans.set(staggeredGridLayoutManager$Span.mIndex, false);
            }
        } else if (staggeredGridLayoutManager$Span.getEndLine() - deletedSize >= i2) {
            this.mRemainingSpans.set(staggeredGridLayoutManager$Span.mIndex, false);
        }
    }

    private int getMaxStart(int i) {
        int startLine = this.mSpans[0].getStartLine(i);
        for (int i2 = 1; i2 < this.mSpanCount; i2++) {
            int startLine2 = this.mSpans[i2].getStartLine(i);
            if (startLine2 > startLine) {
                startLine = startLine2;
            }
        }
        return startLine;
    }

    private int getMinStart(int i) {
        int startLine = this.mSpans[0].getStartLine(i);
        for (int i2 = 1; i2 < this.mSpanCount; i2++) {
            int startLine2 = this.mSpans[i2].getStartLine(i);
            if (startLine2 < startLine) {
                startLine = startLine2;
            }
        }
        return startLine;
    }

    boolean areAllEndsEqual() {
        int endLine = this.mSpans[0].getEndLine(Integer.MIN_VALUE);
        for (int i = 1; i < this.mSpanCount; i++) {
            if (this.mSpans[i].getEndLine(Integer.MIN_VALUE) != endLine) {
                return false;
            }
        }
        return true;
    }

    boolean areAllStartsEqual() {
        int startLine = this.mSpans[0].getStartLine(Integer.MIN_VALUE);
        for (int i = 1; i < this.mSpanCount; i++) {
            if (this.mSpans[i].getStartLine(Integer.MIN_VALUE) != startLine) {
                return false;
            }
        }
        return true;
    }

    private int getMaxEnd(int i) {
        int endLine = this.mSpans[0].getEndLine(i);
        for (int i2 = 1; i2 < this.mSpanCount; i2++) {
            int endLine2 = this.mSpans[i2].getEndLine(i);
            if (endLine2 > endLine) {
                endLine = endLine2;
            }
        }
        return endLine;
    }

    private int getMinEnd(int i) {
        int endLine = this.mSpans[0].getEndLine(i);
        for (int i2 = 1; i2 < this.mSpanCount; i2++) {
            int endLine2 = this.mSpans[i2].getEndLine(i);
            if (endLine2 < endLine) {
                endLine = endLine2;
            }
        }
        return endLine;
    }

    private void recycleFromStart(RecyclerView$Recycler recyclerView$Recycler, int i) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.mPrimaryOrientation.getDecoratedEnd(childAt) > i || this.mPrimaryOrientation.getTransformedEndWithDecoration(childAt) > i) {
                return;
            }
            StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams) childAt.getLayoutParams();
            if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
                for (int i2 = 0; i2 < this.mSpanCount; i2++) {
                    if (this.mSpans[i2].mViews.size() == 1) {
                        return;
                    }
                }
                for (int i3 = 0; i3 < this.mSpanCount; i3++) {
                    this.mSpans[i3].popStart();
                }
            } else if (staggeredGridLayoutManager$LayoutParams.mSpan.mViews.size() == 1) {
                return;
            } else {
                staggeredGridLayoutManager$LayoutParams.mSpan.popStart();
            }
            removeAndRecycleView(childAt, recyclerView$Recycler);
        }
    }

    private void recycleFromEnd(RecyclerView$Recycler recyclerView$Recycler, int i) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.mPrimaryOrientation.getDecoratedStart(childAt) < i || this.mPrimaryOrientation.getTransformedStartWithDecoration(childAt) < i) {
                return;
            }
            StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams) childAt.getLayoutParams();
            if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
                for (int i2 = 0; i2 < this.mSpanCount; i2++) {
                    if (this.mSpans[i2].mViews.size() == 1) {
                        return;
                    }
                }
                for (int i3 = 0; i3 < this.mSpanCount; i3++) {
                    this.mSpans[i3].popEnd();
                }
            } else if (staggeredGridLayoutManager$LayoutParams.mSpan.mViews.size() == 1) {
                return;
            } else {
                staggeredGridLayoutManager$LayoutParams.mSpan.popEnd();
            }
            removeAndRecycleView(childAt, recyclerView$Recycler);
        }
    }

    private boolean preferLastSpan(int i) {
        if (this.mOrientation == 0) {
            return (i == -1) != this.mShouldReverseLayout;
        }
        return ((i == -1) == this.mShouldReverseLayout) == isLayoutRTL();
    }

    private StaggeredGridLayoutManager$Span getNextSpan(LayoutState layoutState) {
        int i;
        int i2;
        int i3 = -1;
        if (preferLastSpan(layoutState.mLayoutDirection)) {
            i = this.mSpanCount - 1;
            i2 = -1;
        } else {
            i = 0;
            i3 = this.mSpanCount;
            i2 = 1;
        }
        StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span = null;
        if (layoutState.mLayoutDirection == 1) {
            int i4 = Integer.MAX_VALUE;
            int startAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
            while (i != i3) {
                StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span2 = this.mSpans[i];
                int endLine = staggeredGridLayoutManager$Span2.getEndLine(startAfterPadding);
                if (endLine < i4) {
                    staggeredGridLayoutManager$Span = staggeredGridLayoutManager$Span2;
                    i4 = endLine;
                }
                i += i2;
            }
            return staggeredGridLayoutManager$Span;
        }
        int i5 = Integer.MIN_VALUE;
        int endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
        while (i != i3) {
            StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span3 = this.mSpans[i];
            int startLine = staggeredGridLayoutManager$Span3.getStartLine(endAfterPadding);
            if (startLine > i5) {
                staggeredGridLayoutManager$Span = staggeredGridLayoutManager$Span3;
                i5 = startLine;
            }
            i += i2;
        }
        return staggeredGridLayoutManager$Span;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        return scrollBy(i, recyclerView$Recycler, recyclerView$State);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        return scrollBy(i, recyclerView$Recycler, recyclerView$State);
    }

    private int calculateScrollDirectionForPosition(int i) {
        if (getChildCount() == 0) {
            return this.mShouldReverseLayout ? 1 : -1;
        }
        return (i < getFirstChildPosition()) != this.mShouldReverseLayout ? -1 : 1;
    }

    @Override // android.support.v7.widget.RecyclerView$SmoothScroller$ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i) {
        int iCalculateScrollDirectionForPosition = calculateScrollDirectionForPosition(i);
        PointF pointF = new PointF();
        if (iCalculateScrollDirectionForPosition == 0) {
            return null;
        }
        if (this.mOrientation == 0) {
            pointF.x = iCalculateScrollDirectionForPosition;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = iCalculateScrollDirectionForPosition;
        }
        return pointF;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView$State recyclerView$State, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void scrollToPosition(int i) {
        if (this.mPendingSavedState != null && this.mPendingSavedState.mAnchorPosition != i) {
            this.mPendingSavedState.invalidateAnchorPositionInfo();
        }
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i, int i2) {
        if (this.mPendingSavedState != null) {
            this.mPendingSavedState.invalidateAnchorPositionInfo();
        }
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = i2;
        requestLayout();
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView$State recyclerView$State, RecyclerView$LayoutManager$LayoutPrefetchRegistry recyclerView$LayoutManager$LayoutPrefetchRegistry) {
        int endLine;
        if (this.mOrientation != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        prepareLayoutStateForDelta(i, recyclerView$State);
        if (this.mPrefetchDistances == null || this.mPrefetchDistances.length < this.mSpanCount) {
            this.mPrefetchDistances = new int[this.mSpanCount];
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.mSpanCount; i4++) {
            if (this.mLayoutState.mItemDirection == -1) {
                endLine = this.mLayoutState.mStartLine - this.mSpans[i4].getStartLine(this.mLayoutState.mStartLine);
            } else {
                endLine = this.mSpans[i4].getEndLine(this.mLayoutState.mEndLine) - this.mLayoutState.mEndLine;
            }
            if (endLine >= 0) {
                this.mPrefetchDistances[i3] = endLine;
                i3++;
            }
        }
        Arrays.sort(this.mPrefetchDistances, 0, i3);
        for (int i5 = 0; i5 < i3 && this.mLayoutState.hasMore(recyclerView$State); i5++) {
            recyclerView$LayoutManager$LayoutPrefetchRegistry.addPosition(this.mLayoutState.mCurrentPosition, this.mPrefetchDistances[i5]);
            this.mLayoutState.mCurrentPosition += this.mLayoutState.mItemDirection;
        }
    }

    void prepareLayoutStateForDelta(int i, RecyclerView$State recyclerView$State) {
        int i2;
        int firstChildPosition;
        if (i > 0) {
            firstChildPosition = getLastChildPosition();
            i2 = 1;
        } else {
            i2 = -1;
            firstChildPosition = getFirstChildPosition();
        }
        this.mLayoutState.mRecycle = true;
        updateLayoutState(firstChildPosition, recyclerView$State);
        setLayoutStateDirection(i2);
        this.mLayoutState.mCurrentPosition = firstChildPosition + this.mLayoutState.mItemDirection;
        this.mLayoutState.mAvailable = Math.abs(i);
    }

    int scrollBy(int i, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        prepareLayoutStateForDelta(i, recyclerView$State);
        int iFill = fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State);
        if (this.mLayoutState.mAvailable >= iFill) {
            i = i < 0 ? -iFill : iFill;
        }
        this.mPrimaryOrientation.offsetChildren(-i);
        this.mLastLayoutFromEnd = this.mShouldReverseLayout;
        this.mLayoutState.mAvailable = 0;
        recycle(recyclerView$Recycler, this.mLayoutState);
        return i;
    }

    int getLastChildPosition() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    int getFirstChildPosition() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    private int findFirstReferenceChildPosition(int i) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            int position = getPosition(getChildAt(i2));
            if (position >= 0 && position < i) {
                return position;
            }
        }
        return 0;
    }

    private int findLastReferenceChildPosition(int i) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            int position = getPosition(getChildAt(childCount));
            if (position >= 0 && position < i) {
                return position;
            }
        }
        return 0;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public RecyclerView$LayoutParams generateDefaultLayoutParams() {
        if (this.mOrientation == 0) {
            return new StaggeredGridLayoutManager$LayoutParams(-2, -1);
        }
        return new StaggeredGridLayoutManager$LayoutParams(-1, -2);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public RecyclerView$LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new StaggeredGridLayoutManager$LayoutParams(context, attributeSet);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public RecyclerView$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams) {
            return new StaggeredGridLayoutManager$LayoutParams((ViewGroup$MarginLayoutParams) viewGroup$LayoutParams);
        }
        return new StaggeredGridLayoutManager$LayoutParams(viewGroup$LayoutParams);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public boolean checkLayoutParams(RecyclerView$LayoutParams recyclerView$LayoutParams) {
        return recyclerView$LayoutParams instanceof StaggeredGridLayoutManager$LayoutParams;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    @Nullable
    public View onFocusSearchFailed(View view, int i, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        View viewFindContainingItemView;
        int firstChildPosition;
        int iFindLastPartiallyVisibleItemPosition;
        int iFindLastPartiallyVisibleItemPosition2;
        int iFindLastPartiallyVisibleItemPosition3;
        View focusableViewAfter;
        if (getChildCount() == 0 || (viewFindContainingItemView = findContainingItemView(view)) == null) {
            return null;
        }
        resolveShouldLayoutReverse();
        int iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i);
        if (iConvertFocusDirectionToLayoutDirection == Integer.MIN_VALUE) {
            return null;
        }
        StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams) viewFindContainingItemView.getLayoutParams();
        boolean z = staggeredGridLayoutManager$LayoutParams.mFullSpan;
        StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span = staggeredGridLayoutManager$LayoutParams.mSpan;
        if (iConvertFocusDirectionToLayoutDirection == 1) {
            firstChildPosition = getLastChildPosition();
        } else {
            firstChildPosition = getFirstChildPosition();
        }
        updateLayoutState(firstChildPosition, recyclerView$State);
        setLayoutStateDirection(iConvertFocusDirectionToLayoutDirection);
        this.mLayoutState.mCurrentPosition = this.mLayoutState.mItemDirection + firstChildPosition;
        this.mLayoutState.mAvailable = (int) (0.33333334f * this.mPrimaryOrientation.getTotalSpace());
        this.mLayoutState.mStopInFocusable = true;
        this.mLayoutState.mRecycle = false;
        fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State);
        this.mLastLayoutFromEnd = this.mShouldReverseLayout;
        if (!z && (focusableViewAfter = staggeredGridLayoutManager$Span.getFocusableViewAfter(firstChildPosition, iConvertFocusDirectionToLayoutDirection)) != null && focusableViewAfter != viewFindContainingItemView) {
            return focusableViewAfter;
        }
        if (preferLastSpan(iConvertFocusDirectionToLayoutDirection)) {
            for (int i2 = this.mSpanCount - 1; i2 >= 0; i2--) {
                View focusableViewAfter2 = this.mSpans[i2].getFocusableViewAfter(firstChildPosition, iConvertFocusDirectionToLayoutDirection);
                if (focusableViewAfter2 != null && focusableViewAfter2 != viewFindContainingItemView) {
                    return focusableViewAfter2;
                }
            }
        } else {
            for (int i3 = 0; i3 < this.mSpanCount; i3++) {
                View focusableViewAfter3 = this.mSpans[i3].getFocusableViewAfter(firstChildPosition, iConvertFocusDirectionToLayoutDirection);
                if (focusableViewAfter3 != null && focusableViewAfter3 != viewFindContainingItemView) {
                    return focusableViewAfter3;
                }
            }
        }
        boolean z2 = (this.mReverseLayout ^ true) == (iConvertFocusDirectionToLayoutDirection == -1);
        if (!z) {
            if (z2) {
                iFindLastPartiallyVisibleItemPosition3 = staggeredGridLayoutManager$Span.findFirstPartiallyVisibleItemPosition();
            } else {
                iFindLastPartiallyVisibleItemPosition3 = staggeredGridLayoutManager$Span.findLastPartiallyVisibleItemPosition();
            }
            View viewFindViewByPosition = findViewByPosition(iFindLastPartiallyVisibleItemPosition3);
            if (viewFindViewByPosition != null && viewFindViewByPosition != viewFindContainingItemView) {
                return viewFindViewByPosition;
            }
        }
        if (preferLastSpan(iConvertFocusDirectionToLayoutDirection)) {
            for (int i4 = this.mSpanCount - 1; i4 >= 0; i4--) {
                if (i4 != staggeredGridLayoutManager$Span.mIndex) {
                    if (z2) {
                        iFindLastPartiallyVisibleItemPosition2 = this.mSpans[i4].findFirstPartiallyVisibleItemPosition();
                    } else {
                        iFindLastPartiallyVisibleItemPosition2 = this.mSpans[i4].findLastPartiallyVisibleItemPosition();
                    }
                    View viewFindViewByPosition2 = findViewByPosition(iFindLastPartiallyVisibleItemPosition2);
                    if (viewFindViewByPosition2 != null && viewFindViewByPosition2 != viewFindContainingItemView) {
                        return viewFindViewByPosition2;
                    }
                }
            }
        } else {
            for (int i5 = 0; i5 < this.mSpanCount; i5++) {
                if (z2) {
                    iFindLastPartiallyVisibleItemPosition = this.mSpans[i5].findFirstPartiallyVisibleItemPosition();
                } else {
                    iFindLastPartiallyVisibleItemPosition = this.mSpans[i5].findLastPartiallyVisibleItemPosition();
                }
                View viewFindViewByPosition3 = findViewByPosition(iFindLastPartiallyVisibleItemPosition);
                if (viewFindViewByPosition3 != null && viewFindViewByPosition3 != viewFindContainingItemView) {
                    return viewFindViewByPosition3;
                }
            }
        }
        return null;
    }

    private int convertFocusDirectionToLayoutDirection(int i) {
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
}
