package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import java.util.Arrays;

public class GridLayoutManager extends LinearLayoutManager {
    private static final boolean DEBUG = false;
    public static final int DEFAULT_SPAN_COUNT = -1;
    private static final String TAG = "GridLayoutManager";
    int[] mCachedBorders;
    final Rect mDecorInsets;
    boolean mPendingSpanCountChange;
    final SparseIntArray mPreLayoutSpanIndexCache;
    final SparseIntArray mPreLayoutSpanSizeCache;
    View[] mSet;
    int mSpanCount;
    GridLayoutManager$SpanSizeLookup mSpanSizeLookup;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new GridLayoutManager$DefaultSpanSizeLookup();
        this.mDecorInsets = new Rect();
        setSpanCount(getProperties(context, attributeSet, i, i2).spanCount);
    }

    public GridLayoutManager(Context context, int i) {
        super(context);
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new GridLayoutManager$DefaultSpanSizeLookup();
        this.mDecorInsets = new Rect();
        setSpanCount(i);
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i2, z);
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new GridLayoutManager$DefaultSpanSizeLookup();
        this.mDecorInsets = new Rect();
        setSpanCount(i);
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    public void setStackFromEnd(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.setStackFromEnd(false);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int getRowCountForAccessibility(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (this.mOrientation == 0) {
            return this.mSpanCount;
        }
        if (recyclerView$State.getItemCount() < 1) {
            return 0;
        }
        return getSpanGroupIndex(recyclerView$Recycler, recyclerView$State, recyclerView$State.getItemCount() - 1) + 1;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public int getColumnCountForAccessibility(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (this.mOrientation == 1) {
            return this.mSpanCount;
        }
        if (recyclerView$State.getItemCount() < 1) {
            return 0;
        }
        return getSpanGroupIndex(recyclerView$Recycler, recyclerView$State, recyclerView$State.getItemCount() - 1) + 1;
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof GridLayoutManager$LayoutParams)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, accessibilityNodeInfoCompat);
            return;
        }
        GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams = (GridLayoutManager$LayoutParams) layoutParams;
        int spanGroupIndex = getSpanGroupIndex(recyclerView$Recycler, recyclerView$State, gridLayoutManager$LayoutParams.getViewLayoutPosition());
        if (this.mOrientation == 0) {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat$CollectionItemInfoCompat.obtain(gridLayoutManager$LayoutParams.getSpanIndex(), gridLayoutManager$LayoutParams.getSpanSize(), spanGroupIndex, 1, this.mSpanCount > 1 && gridLayoutManager$LayoutParams.getSpanSize() == this.mSpanCount, false));
        } else {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat$CollectionItemInfoCompat.obtain(spanGroupIndex, 1, gridLayoutManager$LayoutParams.getSpanIndex(), gridLayoutManager$LayoutParams.getSpanSize(), this.mSpanCount > 1 && gridLayoutManager$LayoutParams.getSpanSize() == this.mSpanCount, false));
        }
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView$LayoutManager
    public void onLayoutChildren(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (recyclerView$State.isPreLayout()) {
            cachePreLayoutSpanMapping();
        }
        super.onLayoutChildren(recyclerView$Recycler, recyclerView$State);
        clearPreLayoutSpanMappingCache();
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView$LayoutManager
    public void onLayoutCompleted(RecyclerView$State recyclerView$State) {
        super.onLayoutCompleted(recyclerView$State);
        this.mPendingSpanCountChange = false;
    }

    private void clearPreLayoutSpanMappingCache() {
        this.mPreLayoutSpanSizeCache.clear();
        this.mPreLayoutSpanIndexCache.clear();
    }

    private void cachePreLayoutSpanMapping() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams = (GridLayoutManager$LayoutParams) getChildAt(i).getLayoutParams();
            int viewLayoutPosition = gridLayoutManager$LayoutParams.getViewLayoutPosition();
            this.mPreLayoutSpanSizeCache.put(viewLayoutPosition, gridLayoutManager$LayoutParams.getSpanSize());
            this.mPreLayoutSpanIndexCache.put(viewLayoutPosition, gridLayoutManager$LayoutParams.getSpanIndex());
        }
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView$LayoutManager
    public RecyclerView$LayoutParams generateDefaultLayoutParams() {
        if (this.mOrientation == 0) {
            return new GridLayoutManager$LayoutParams(-2, -1);
        }
        return new GridLayoutManager$LayoutParams(-1, -2);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public RecyclerView$LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new GridLayoutManager$LayoutParams(context, attributeSet);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public RecyclerView$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams) {
            return new GridLayoutManager$LayoutParams((ViewGroup$MarginLayoutParams) viewGroup$LayoutParams);
        }
        return new GridLayoutManager$LayoutParams(viewGroup$LayoutParams);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public boolean checkLayoutParams(RecyclerView$LayoutParams recyclerView$LayoutParams) {
        return recyclerView$LayoutParams instanceof GridLayoutManager$LayoutParams;
    }

    public void setSpanSizeLookup(GridLayoutManager$SpanSizeLookup gridLayoutManager$SpanSizeLookup) {
        this.mSpanSizeLookup = gridLayoutManager$SpanSizeLookup;
    }

    public GridLayoutManager$SpanSizeLookup getSpanSizeLookup() {
        return this.mSpanSizeLookup;
    }

    private void updateMeasurements() {
        int height;
        if (getOrientation() == 1) {
            height = (getWidth() - getPaddingRight()) - getPaddingLeft();
        } else {
            height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        }
        calculateItemBorders(height);
    }

    @Override // android.support.v7.widget.RecyclerView$LayoutManager
    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int iChooseSize;
        int iChooseSize2;
        if (this.mCachedBorders == null) {
            super.setMeasuredDimension(rect, i, i2);
        }
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.mOrientation == 1) {
            iChooseSize2 = chooseSize(i2, rect.height() + paddingTop, getMinimumHeight());
            iChooseSize = chooseSize(i, this.mCachedBorders[this.mCachedBorders.length - 1] + paddingLeft, getMinimumWidth());
        } else {
            iChooseSize = chooseSize(i, rect.width() + paddingLeft, getMinimumWidth());
            iChooseSize2 = chooseSize(i2, this.mCachedBorders[this.mCachedBorders.length - 1] + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    private void calculateItemBorders(int i) {
        this.mCachedBorders = calculateItemBorders(this.mCachedBorders, this.mSpanCount, i);
    }

    static int[] calculateItemBorders(int[] iArr, int i, int i2) {
        int i3;
        if (iArr == null || iArr.length != i + 1 || iArr[iArr.length - 1] != i2) {
            iArr = new int[i + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i2 / i;
        int i6 = i2 % i;
        int i7 = 0;
        for (int i8 = 1; i8 <= i; i8++) {
            i4 += i6;
            if (i4 <= 0 || i - i4 >= i6) {
                i3 = i5;
            } else {
                i3 = i5 + 1;
                i4 -= i;
            }
            i7 += i3;
            iArr[i8] = i7;
        }
        return iArr;
    }

    int getSpaceForSpanRange(int i, int i2) {
        if (this.mOrientation == 1 && isLayoutRTL()) {
            return this.mCachedBorders[this.mSpanCount - i] - this.mCachedBorders[(this.mSpanCount - i) - i2];
        }
        return this.mCachedBorders[i2 + i] - this.mCachedBorders[i];
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    void onAnchorReady(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo, int i) {
        super.onAnchorReady(recyclerView$Recycler, recyclerView$State, linearLayoutManager$AnchorInfo, i);
        updateMeasurements();
        if (recyclerView$State.getItemCount() > 0 && !recyclerView$State.isPreLayout()) {
            ensureAnchorIsInCorrectSpan(recyclerView$Recycler, recyclerView$State, linearLayoutManager$AnchorInfo, i);
        }
        ensureViewSet();
    }

    private void ensureViewSet() {
        if (this.mSet == null || this.mSet.length != this.mSpanCount) {
            this.mSet = new View[this.mSpanCount];
        }
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView$LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        updateMeasurements();
        ensureViewSet();
        return super.scrollHorizontallyBy(i, recyclerView$Recycler, recyclerView$State);
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView$LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        updateMeasurements();
        ensureViewSet();
        return super.scrollVerticallyBy(i, recyclerView$Recycler, recyclerView$State);
    }

    private void ensureAnchorIsInCorrectSpan(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo, int i) {
        boolean z = i == 1;
        int spanIndex = getSpanIndex(recyclerView$Recycler, recyclerView$State, linearLayoutManager$AnchorInfo.mPosition);
        if (z) {
            while (spanIndex > 0 && linearLayoutManager$AnchorInfo.mPosition > 0) {
                linearLayoutManager$AnchorInfo.mPosition--;
                spanIndex = getSpanIndex(recyclerView$Recycler, recyclerView$State, linearLayoutManager$AnchorInfo.mPosition);
            }
            return;
        }
        int itemCount = recyclerView$State.getItemCount() - 1;
        int i2 = linearLayoutManager$AnchorInfo.mPosition;
        while (i2 < itemCount) {
            int i3 = i2 + 1;
            int spanIndex2 = getSpanIndex(recyclerView$Recycler, recyclerView$State, i3);
            if (spanIndex2 <= spanIndex) {
                break;
            }
            i2 = i3;
            spanIndex = spanIndex2;
        }
        linearLayoutManager$AnchorInfo.mPosition = i2;
    }

    @Override // android.support.v7.widget.LinearLayoutManager
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
            if (position >= 0 && position < i3 && getSpanIndex(recyclerView$Recycler, recyclerView$State, position) == 0) {
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

    private int getSpanGroupIndex(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, int i) {
        if (!recyclerView$State.isPreLayout()) {
            return this.mSpanSizeLookup.getSpanGroupIndex(i, this.mSpanCount);
        }
        int iConvertPreLayoutPositionToPostLayout = recyclerView$Recycler.convertPreLayoutPositionToPostLayout(i);
        if (iConvertPreLayoutPositionToPostLayout == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
            return 0;
        }
        return this.mSpanSizeLookup.getSpanGroupIndex(iConvertPreLayoutPositionToPostLayout, this.mSpanCount);
    }

    private int getSpanIndex(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, int i) {
        if (!recyclerView$State.isPreLayout()) {
            return this.mSpanSizeLookup.getCachedSpanIndex(i, this.mSpanCount);
        }
        int i2 = this.mPreLayoutSpanIndexCache.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int iConvertPreLayoutPositionToPostLayout = recyclerView$Recycler.convertPreLayoutPositionToPostLayout(i);
        if (iConvertPreLayoutPositionToPostLayout == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
            return 0;
        }
        return this.mSpanSizeLookup.getCachedSpanIndex(iConvertPreLayoutPositionToPostLayout, this.mSpanCount);
    }

    private int getSpanSize(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, int i) {
        if (!recyclerView$State.isPreLayout()) {
            return this.mSpanSizeLookup.getSpanSize(i);
        }
        int i2 = this.mPreLayoutSpanSizeCache.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int iConvertPreLayoutPositionToPostLayout = recyclerView$Recycler.convertPreLayoutPositionToPostLayout(i);
        if (iConvertPreLayoutPositionToPostLayout == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
            return 1;
        }
        return this.mSpanSizeLookup.getSpanSize(iConvertPreLayoutPositionToPostLayout);
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    void collectPrefetchPositionsForLayoutState(RecyclerView$State recyclerView$State, LinearLayoutManager$LayoutState linearLayoutManager$LayoutState, RecyclerView$LayoutManager$LayoutPrefetchRegistry recyclerView$LayoutManager$LayoutPrefetchRegistry) {
        int spanSize = this.mSpanCount;
        for (int i = 0; i < this.mSpanCount && linearLayoutManager$LayoutState.hasMore(recyclerView$State) && spanSize > 0; i++) {
            int i2 = linearLayoutManager$LayoutState.mCurrentPosition;
            recyclerView$LayoutManager$LayoutPrefetchRegistry.addPosition(i2, Math.max(0, linearLayoutManager$LayoutState.mScrollingOffset));
            spanSize -= this.mSpanSizeLookup.getSpanSize(i2);
            linearLayoutManager$LayoutState.mCurrentPosition += linearLayoutManager$LayoutState.mItemDirection;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:99:0x021c  */
    @Override // android.support.v7.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void layoutChunk(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, LinearLayoutManager$LayoutState linearLayoutManager$LayoutState, LinearLayoutManager$LayoutChunkResult linearLayoutManager$LayoutChunkResult) {
        int paddingLeft;
        int decoratedMeasurementInOther;
        int paddingTop;
        int decoratedMeasurementInOther2;
        int decoratedMeasurementInOther3;
        int i;
        int iMakeMeasureSpec;
        int childMeasureSpec;
        boolean z;
        View next;
        int modeInOther = this.mOrientationHelper.getModeInOther();
        boolean z2 = modeInOther != 1073741824;
        int i2 = getChildCount() > 0 ? this.mCachedBorders[this.mSpanCount] : 0;
        if (z2) {
            updateMeasurements();
        }
        boolean z3 = linearLayoutManager$LayoutState.mItemDirection == 1;
        int spanIndex = this.mSpanCount;
        if (!z3) {
            spanIndex = getSpanIndex(recyclerView$Recycler, recyclerView$State, linearLayoutManager$LayoutState.mCurrentPosition) + getSpanSize(recyclerView$Recycler, recyclerView$State, linearLayoutManager$LayoutState.mCurrentPosition);
        }
        int i3 = 0;
        int i4 = 0;
        while (i4 < this.mSpanCount && linearLayoutManager$LayoutState.hasMore(recyclerView$State) && spanIndex > 0) {
            int i5 = linearLayoutManager$LayoutState.mCurrentPosition;
            int spanSize = getSpanSize(recyclerView$Recycler, recyclerView$State, i5);
            if (spanSize > this.mSpanCount) {
                throw new IllegalArgumentException("Item at position " + i5 + " requires " + spanSize + " spans but GridLayoutManager has only " + this.mSpanCount + " spans.");
            }
            spanIndex -= spanSize;
            if (spanIndex < 0 || (next = linearLayoutManager$LayoutState.next(recyclerView$Recycler)) == null) {
                break;
            }
            i3 += spanSize;
            this.mSet[i4] = next;
            i4++;
        }
        if (i4 == 0) {
            linearLayoutManager$LayoutChunkResult.mFinished = true;
            return;
        }
        float f = 0.0f;
        int i6 = i4;
        assignSpans(recyclerView$Recycler, recyclerView$State, i4, i3, z3);
        int i7 = 0;
        for (int i8 = 0; i8 < i6; i8++) {
            View view = this.mSet[i8];
            if (linearLayoutManager$LayoutState.mScrapList != null) {
                z = false;
                if (z3) {
                    addDisappearingView(view);
                } else {
                    addDisappearingView(view, 0);
                }
            } else if (z3) {
                addView(view);
                z = false;
            } else {
                z = false;
                addView(view, 0);
            }
            calculateItemDecorationsForChild(view, this.mDecorInsets);
            measureChild(view, modeInOther, z);
            int decoratedMeasurement = this.mOrientationHelper.getDecoratedMeasurement(view);
            if (decoratedMeasurement > i7) {
                i7 = decoratedMeasurement;
            }
            float decoratedMeasurementInOther4 = (1.0f * this.mOrientationHelper.getDecoratedMeasurementInOther(view)) / ((GridLayoutManager$LayoutParams) view.getLayoutParams()).mSpanSize;
            if (decoratedMeasurementInOther4 > f) {
                f = decoratedMeasurementInOther4;
            }
        }
        if (z2) {
            guessMeasurement(f, i2);
            i7 = 0;
            for (int i9 = 0; i9 < i6; i9++) {
                View view2 = this.mSet[i9];
                measureChild(view2, 1073741824, true);
                int decoratedMeasurement2 = this.mOrientationHelper.getDecoratedMeasurement(view2);
                if (decoratedMeasurement2 > i7) {
                    i7 = decoratedMeasurement2;
                }
            }
        }
        for (int i10 = 0; i10 < i6; i10++) {
            View view3 = this.mSet[i10];
            if (this.mOrientationHelper.getDecoratedMeasurement(view3) != i7) {
                GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams = (GridLayoutManager$LayoutParams) view3.getLayoutParams();
                Rect rect = gridLayoutManager$LayoutParams.mDecorInsets;
                int i11 = rect.top + rect.bottom + gridLayoutManager$LayoutParams.topMargin + gridLayoutManager$LayoutParams.bottomMargin;
                int i12 = rect.left + rect.right + gridLayoutManager$LayoutParams.leftMargin + gridLayoutManager$LayoutParams.rightMargin;
                int spaceForSpanRange = getSpaceForSpanRange(gridLayoutManager$LayoutParams.mSpanIndex, gridLayoutManager$LayoutParams.mSpanSize);
                if (this.mOrientation == 1) {
                    int childMeasureSpec2 = getChildMeasureSpec(spaceForSpanRange, 1073741824, i12, gridLayoutManager$LayoutParams.width, false);
                    childMeasureSpec = View$MeasureSpec.makeMeasureSpec(i7 - i11, 1073741824);
                    iMakeMeasureSpec = childMeasureSpec2;
                } else {
                    iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(i7 - i12, 1073741824);
                    childMeasureSpec = getChildMeasureSpec(spaceForSpanRange, 1073741824, i11, gridLayoutManager$LayoutParams.height, false);
                }
                measureChildWithDecorationsAndMargin(view3, iMakeMeasureSpec, childMeasureSpec, true);
            }
        }
        int i13 = 0;
        linearLayoutManager$LayoutChunkResult.mConsumed = i7;
        if (this.mOrientation == 1) {
            if (linearLayoutManager$LayoutState.mLayoutDirection == -1) {
                int i14 = linearLayoutManager$LayoutState.mOffset;
                decoratedMeasurementInOther2 = i14;
                paddingTop = i14 - i7;
            } else {
                int i15 = linearLayoutManager$LayoutState.mOffset;
                paddingTop = i15;
                decoratedMeasurementInOther2 = i7 + i15;
            }
            paddingLeft = 0;
            decoratedMeasurementInOther = 0;
        } else if (linearLayoutManager$LayoutState.mLayoutDirection == -1) {
            int i16 = linearLayoutManager$LayoutState.mOffset;
            int i17 = i16 - i7;
            paddingTop = 0;
            decoratedMeasurementInOther2 = 0;
            decoratedMeasurementInOther = i16;
            paddingLeft = i17;
        } else {
            paddingLeft = linearLayoutManager$LayoutState.mOffset;
            decoratedMeasurementInOther = i7 + paddingLeft;
            paddingTop = 0;
            decoratedMeasurementInOther2 = 0;
        }
        while (i13 < i6) {
            View view4 = this.mSet[i13];
            GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams2 = (GridLayoutManager$LayoutParams) view4.getLayoutParams();
            if (this.mOrientation == 1) {
                if (isLayoutRTL()) {
                    int paddingLeft2 = getPaddingLeft() + this.mCachedBorders[this.mSpanCount - gridLayoutManager$LayoutParams2.mSpanIndex];
                    i = paddingLeft2;
                    decoratedMeasurementInOther3 = paddingLeft2 - this.mOrientationHelper.getDecoratedMeasurementInOther(view4);
                    int i18 = paddingTop;
                    int i19 = decoratedMeasurementInOther2;
                    layoutDecoratedWithMargins(view4, decoratedMeasurementInOther3, i18, i, i19);
                    if (!gridLayoutManager$LayoutParams2.isItemRemoved() || gridLayoutManager$LayoutParams2.isItemChanged()) {
                        linearLayoutManager$LayoutChunkResult.mIgnoreConsumed = true;
                    }
                    linearLayoutManager$LayoutChunkResult.mFocusable |= view4.hasFocusable();
                    i13++;
                    paddingLeft = decoratedMeasurementInOther3;
                    paddingTop = i18;
                    decoratedMeasurementInOther = i;
                    decoratedMeasurementInOther2 = i19;
                } else {
                    paddingLeft = getPaddingLeft() + this.mCachedBorders[gridLayoutManager$LayoutParams2.mSpanIndex];
                    decoratedMeasurementInOther = this.mOrientationHelper.getDecoratedMeasurementInOther(view4) + paddingLeft;
                }
            } else {
                paddingTop = getPaddingTop() + this.mCachedBorders[gridLayoutManager$LayoutParams2.mSpanIndex];
                decoratedMeasurementInOther2 = this.mOrientationHelper.getDecoratedMeasurementInOther(view4) + paddingTop;
            }
            decoratedMeasurementInOther3 = paddingLeft;
            i = decoratedMeasurementInOther;
            int i182 = paddingTop;
            int i192 = decoratedMeasurementInOther2;
            layoutDecoratedWithMargins(view4, decoratedMeasurementInOther3, i182, i, i192);
            if (!gridLayoutManager$LayoutParams2.isItemRemoved()) {
                linearLayoutManager$LayoutChunkResult.mIgnoreConsumed = true;
            }
            linearLayoutManager$LayoutChunkResult.mFocusable |= view4.hasFocusable();
            i13++;
            paddingLeft = decoratedMeasurementInOther3;
            paddingTop = i182;
            decoratedMeasurementInOther = i;
            decoratedMeasurementInOther2 = i192;
        }
        Arrays.fill(this.mSet, (Object) null);
    }

    private void measureChild(View view, int i, boolean z) {
        int childMeasureSpec;
        int childMeasureSpec2;
        GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams = (GridLayoutManager$LayoutParams) view.getLayoutParams();
        Rect rect = gridLayoutManager$LayoutParams.mDecorInsets;
        int i2 = rect.top + rect.bottom + gridLayoutManager$LayoutParams.topMargin + gridLayoutManager$LayoutParams.bottomMargin;
        int i3 = rect.left + rect.right + gridLayoutManager$LayoutParams.leftMargin + gridLayoutManager$LayoutParams.rightMargin;
        int spaceForSpanRange = getSpaceForSpanRange(gridLayoutManager$LayoutParams.mSpanIndex, gridLayoutManager$LayoutParams.mSpanSize);
        if (this.mOrientation == 1) {
            childMeasureSpec2 = getChildMeasureSpec(spaceForSpanRange, i, i3, gridLayoutManager$LayoutParams.width, false);
            childMeasureSpec = getChildMeasureSpec(this.mOrientationHelper.getTotalSpace(), getHeightMode(), i2, gridLayoutManager$LayoutParams.height, true);
        } else {
            int childMeasureSpec3 = getChildMeasureSpec(spaceForSpanRange, i, i2, gridLayoutManager$LayoutParams.height, false);
            int childMeasureSpec4 = getChildMeasureSpec(this.mOrientationHelper.getTotalSpace(), getWidthMode(), i3, gridLayoutManager$LayoutParams.width, true);
            childMeasureSpec = childMeasureSpec3;
            childMeasureSpec2 = childMeasureSpec4;
        }
        measureChildWithDecorationsAndMargin(view, childMeasureSpec2, childMeasureSpec, z);
    }

    private void guessMeasurement(float f, int i) {
        calculateItemBorders(Math.max(Math.round(f * this.mSpanCount), i));
    }

    private void measureChildWithDecorationsAndMargin(View view, int i, int i2, boolean z) {
        boolean zShouldMeasureChild;
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        if (z) {
            zShouldMeasureChild = shouldReMeasureChild(view, i, i2, recyclerView$LayoutParams);
        } else {
            zShouldMeasureChild = shouldMeasureChild(view, i, i2, recyclerView$LayoutParams);
        }
        if (zShouldMeasureChild) {
            view.measure(i, i2);
        }
    }

    private void assignSpans(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, int i, int i2, boolean z) {
        int i3;
        int i4;
        int i5 = -1;
        int i6 = 0;
        if (z) {
            i4 = 1;
            i5 = i;
            i3 = 0;
        } else {
            i3 = i - 1;
            i4 = -1;
        }
        while (i3 != i5) {
            View view = this.mSet[i3];
            GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams = (GridLayoutManager$LayoutParams) view.getLayoutParams();
            gridLayoutManager$LayoutParams.mSpanSize = getSpanSize(recyclerView$Recycler, recyclerView$State, getPosition(view));
            gridLayoutManager$LayoutParams.mSpanIndex = i6;
            i6 += gridLayoutManager$LayoutParams.mSpanSize;
            i3 += i4;
        }
    }

    public int getSpanCount() {
        return this.mSpanCount;
    }

    public void setSpanCount(int i) {
        if (i == this.mSpanCount) {
            return;
        }
        this.mPendingSpanCountChange = true;
        if (i < 1) {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
        }
        this.mSpanCount = i;
        this.mSpanSizeLookup.invalidateSpanIndexCache();
        requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x00d8, code lost:
    
        if (r13 == (r2 > r8)) goto L48;
     */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0104  */
    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView$LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View onFocusSearchFailed(View view, int i, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        int childCount;
        int i2;
        int childCount2;
        View view2;
        int i3;
        int i4;
        View view3;
        int i5;
        int i6;
        boolean z;
        RecyclerView$Recycler recyclerView$Recycler2 = recyclerView$Recycler;
        RecyclerView$State recyclerView$State2 = recyclerView$State;
        View viewFindContainingItemView = findContainingItemView(view);
        View view4 = null;
        if (viewFindContainingItemView == null) {
            return null;
        }
        GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams = (GridLayoutManager$LayoutParams) viewFindContainingItemView.getLayoutParams();
        int i7 = gridLayoutManager$LayoutParams.mSpanIndex;
        int i8 = gridLayoutManager$LayoutParams.mSpanIndex + gridLayoutManager$LayoutParams.mSpanSize;
        if (super.onFocusSearchFailed(view, i, recyclerView$Recycler, recyclerView$State) == null) {
            return null;
        }
        if ((convertFocusDirectionToLayoutDirection(i) == 1) != this.mShouldReverseLayout) {
            childCount2 = getChildCount() - 1;
            childCount = -1;
            i2 = -1;
        } else {
            childCount = getChildCount();
            i2 = 1;
            childCount2 = 0;
        }
        boolean z2 = this.mOrientation == 1 && isLayoutRTL();
        int spanGroupIndex = getSpanGroupIndex(recyclerView$Recycler2, recyclerView$State2, childCount2);
        int i9 = -1;
        int i10 = -1;
        int iMin = 0;
        int iMin2 = 0;
        View view5 = null;
        while (childCount2 != childCount) {
            int spanGroupIndex2 = getSpanGroupIndex(recyclerView$Recycler2, recyclerView$State2, childCount2);
            View childAt = getChildAt(childCount2);
            if (childAt == viewFindContainingItemView) {
                break;
            }
            if (!childAt.hasFocusable() || spanGroupIndex2 == spanGroupIndex) {
                GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams2 = (GridLayoutManager$LayoutParams) childAt.getLayoutParams();
                int i11 = gridLayoutManager$LayoutParams2.mSpanIndex;
                view2 = viewFindContainingItemView;
                i3 = childCount;
                int i12 = gridLayoutManager$LayoutParams2.mSpanIndex + gridLayoutManager$LayoutParams2.mSpanSize;
                if (childAt.hasFocusable() && i11 == i7 && i12 == i8) {
                    return childAt;
                }
                if (!(childAt.hasFocusable() && view4 == null) && (childAt.hasFocusable() || view5 != null)) {
                    int iMin3 = Math.min(i12, i8) - Math.max(i11, i7);
                    if (childAt.hasFocusable()) {
                        if (iMin3 <= iMin) {
                            if (iMin3 == iMin) {
                            }
                        }
                        i4 = i9;
                        view3 = view5;
                        i5 = iMin2;
                        i6 = i10;
                        z = true;
                        if (!z) {
                            if (childAt.hasFocusable()) {
                                int i13 = gridLayoutManager$LayoutParams2.mSpanIndex;
                                iMin = Math.min(i12, i8) - Math.max(i11, i7);
                                iMin2 = i5;
                                i10 = i6;
                                view5 = view3;
                                i9 = i13;
                                view4 = childAt;
                            } else {
                                int i14 = gridLayoutManager$LayoutParams2.mSpanIndex;
                                view5 = childAt;
                                iMin2 = Math.min(i12, i8) - Math.max(i11, i7);
                                i10 = i14;
                                i9 = i4;
                            }
                        }
                    } else {
                        if (view4 == null) {
                            i4 = i9;
                            view3 = view5;
                            if (isViewPartiallyVisible(childAt, false, true)) {
                                i5 = iMin2;
                                if (iMin3 > i5) {
                                    i6 = i10;
                                } else {
                                    if (iMin3 == i5) {
                                        i6 = i10;
                                        if (z2 == (i11 > i6)) {
                                        }
                                        if (!z) {
                                        }
                                    }
                                    z = false;
                                    if (!z) {
                                    }
                                }
                                z = true;
                                if (!z) {
                                }
                            }
                            i6 = i10;
                            z = false;
                            if (!z) {
                            }
                        }
                        i5 = iMin2;
                        i6 = i10;
                        z = false;
                        if (!z) {
                        }
                    }
                    i4 = i9;
                    view3 = view5;
                    i5 = iMin2;
                    i6 = i10;
                    z = false;
                    if (!z) {
                    }
                } else {
                    i4 = i9;
                    view3 = view5;
                    i5 = iMin2;
                    i6 = i10;
                    z = true;
                    if (!z) {
                    }
                }
                childCount2 += i2;
                viewFindContainingItemView = view2;
                childCount = i3;
                recyclerView$Recycler2 = recyclerView$Recycler;
                recyclerView$State2 = recyclerView$State;
            } else {
                if (view4 != null) {
                    break;
                }
                view2 = viewFindContainingItemView;
                i4 = i9;
                view3 = view5;
                i3 = childCount;
                i5 = iMin2;
                i6 = i10;
            }
            iMin2 = i5;
            i10 = i6;
            i9 = i4;
            view5 = view3;
            childCount2 += i2;
            viewFindContainingItemView = view2;
            childCount = i3;
            recyclerView$Recycler2 = recyclerView$Recycler;
            recyclerView$State2 = recyclerView$State;
        }
        return view4 != null ? view4 : view5;
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView$LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && !this.mPendingSpanCountChange;
    }
}
