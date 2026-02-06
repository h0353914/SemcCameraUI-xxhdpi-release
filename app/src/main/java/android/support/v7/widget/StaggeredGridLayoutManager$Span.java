package android.support.v7.widget;

import android.view.View;
import java.util.ArrayList;

class StaggeredGridLayoutManager$Span {
    static final int INVALID_LINE = Integer.MIN_VALUE;
    final int mIndex;
    final /* synthetic */ StaggeredGridLayoutManager this$0;
    ArrayList<View> mViews = new ArrayList<>();
    int mCachedStart = Integer.MIN_VALUE;
    int mCachedEnd = Integer.MIN_VALUE;
    int mDeletedSize = 0;

    StaggeredGridLayoutManager$Span(StaggeredGridLayoutManager staggeredGridLayoutManager, int i) {
        this.this$0 = staggeredGridLayoutManager;
        this.mIndex = i;
    }

    int getStartLine(int i) {
        if (this.mCachedStart != Integer.MIN_VALUE) {
            return this.mCachedStart;
        }
        if (this.mViews.size() == 0) {
            return i;
        }
        calculateCachedStart();
        return this.mCachedStart;
    }

    void calculateCachedStart() {
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem fullSpanItem;
        View view = this.mViews.get(0);
        StaggeredGridLayoutManager$LayoutParams layoutParams = getLayoutParams(view);
        this.mCachedStart = this.this$0.mPrimaryOrientation.getDecoratedStart(view);
        if (layoutParams.mFullSpan && (fullSpanItem = this.this$0.mLazySpanLookup.getFullSpanItem(layoutParams.getViewLayoutPosition())) != null && fullSpanItem.mGapDir == -1) {
            this.mCachedStart -= fullSpanItem.getGapForSpan(this.mIndex);
        }
    }

    int getStartLine() {
        if (this.mCachedStart != Integer.MIN_VALUE) {
            return this.mCachedStart;
        }
        calculateCachedStart();
        return this.mCachedStart;
    }

    int getEndLine(int i) {
        if (this.mCachedEnd != Integer.MIN_VALUE) {
            return this.mCachedEnd;
        }
        if (this.mViews.size() == 0) {
            return i;
        }
        calculateCachedEnd();
        return this.mCachedEnd;
    }

    void calculateCachedEnd() {
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem fullSpanItem;
        View view = this.mViews.get(this.mViews.size() - 1);
        StaggeredGridLayoutManager$LayoutParams layoutParams = getLayoutParams(view);
        this.mCachedEnd = this.this$0.mPrimaryOrientation.getDecoratedEnd(view);
        if (layoutParams.mFullSpan && (fullSpanItem = this.this$0.mLazySpanLookup.getFullSpanItem(layoutParams.getViewLayoutPosition())) != null && fullSpanItem.mGapDir == 1) {
            this.mCachedEnd += fullSpanItem.getGapForSpan(this.mIndex);
        }
    }

    int getEndLine() {
        if (this.mCachedEnd != Integer.MIN_VALUE) {
            return this.mCachedEnd;
        }
        calculateCachedEnd();
        return this.mCachedEnd;
    }

    void prependToSpan(View view) {
        StaggeredGridLayoutManager$LayoutParams layoutParams = getLayoutParams(view);
        layoutParams.mSpan = this;
        this.mViews.add(0, view);
        this.mCachedStart = Integer.MIN_VALUE;
        if (this.mViews.size() == 1) {
            this.mCachedEnd = Integer.MIN_VALUE;
        }
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            this.mDeletedSize += this.this$0.mPrimaryOrientation.getDecoratedMeasurement(view);
        }
    }

    void appendToSpan(View view) {
        StaggeredGridLayoutManager$LayoutParams layoutParams = getLayoutParams(view);
        layoutParams.mSpan = this;
        this.mViews.add(view);
        this.mCachedEnd = Integer.MIN_VALUE;
        if (this.mViews.size() == 1) {
            this.mCachedStart = Integer.MIN_VALUE;
        }
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            this.mDeletedSize += this.this$0.mPrimaryOrientation.getDecoratedMeasurement(view);
        }
    }

    void cacheReferenceLineAndClear(boolean z, int i) {
        int startLine;
        if (z) {
            startLine = getEndLine(Integer.MIN_VALUE);
        } else {
            startLine = getStartLine(Integer.MIN_VALUE);
        }
        clear();
        if (startLine == Integer.MIN_VALUE) {
            return;
        }
        if (!z || startLine >= this.this$0.mPrimaryOrientation.getEndAfterPadding()) {
            if (z || startLine <= this.this$0.mPrimaryOrientation.getStartAfterPadding()) {
                if (i != Integer.MIN_VALUE) {
                    startLine += i;
                }
                this.mCachedEnd = startLine;
                this.mCachedStart = startLine;
            }
        }
    }

    void clear() {
        this.mViews.clear();
        invalidateCache();
        this.mDeletedSize = 0;
    }

    void invalidateCache() {
        this.mCachedStart = Integer.MIN_VALUE;
        this.mCachedEnd = Integer.MIN_VALUE;
    }

    void setLine(int i) {
        this.mCachedStart = i;
        this.mCachedEnd = i;
    }

    void popEnd() {
        int size = this.mViews.size();
        View viewRemove = this.mViews.remove(size - 1);
        StaggeredGridLayoutManager$LayoutParams layoutParams = getLayoutParams(viewRemove);
        layoutParams.mSpan = null;
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            this.mDeletedSize -= this.this$0.mPrimaryOrientation.getDecoratedMeasurement(viewRemove);
        }
        if (size == 1) {
            this.mCachedStart = Integer.MIN_VALUE;
        }
        this.mCachedEnd = Integer.MIN_VALUE;
    }

    void popStart() {
        View viewRemove = this.mViews.remove(0);
        StaggeredGridLayoutManager$LayoutParams layoutParams = getLayoutParams(viewRemove);
        layoutParams.mSpan = null;
        if (this.mViews.size() == 0) {
            this.mCachedEnd = Integer.MIN_VALUE;
        }
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            this.mDeletedSize -= this.this$0.mPrimaryOrientation.getDecoratedMeasurement(viewRemove);
        }
        this.mCachedStart = Integer.MIN_VALUE;
    }

    public int getDeletedSize() {
        return this.mDeletedSize;
    }

    StaggeredGridLayoutManager$LayoutParams getLayoutParams(View view) {
        return (StaggeredGridLayoutManager$LayoutParams) view.getLayoutParams();
    }

    void onOffset(int i) {
        if (this.mCachedStart != Integer.MIN_VALUE) {
            this.mCachedStart += i;
        }
        if (this.mCachedEnd != Integer.MIN_VALUE) {
            this.mCachedEnd += i;
        }
    }

    public int findFirstVisibleItemPosition() {
        if (this.this$0.mReverseLayout) {
            return findOneVisibleChild(this.mViews.size() - 1, -1, false);
        }
        return findOneVisibleChild(0, this.mViews.size(), false);
    }

    public int findFirstPartiallyVisibleItemPosition() {
        if (this.this$0.mReverseLayout) {
            return findOnePartiallyVisibleChild(this.mViews.size() - 1, -1, true);
        }
        return findOnePartiallyVisibleChild(0, this.mViews.size(), true);
    }

    public int findFirstCompletelyVisibleItemPosition() {
        if (this.this$0.mReverseLayout) {
            return findOneVisibleChild(this.mViews.size() - 1, -1, true);
        }
        return findOneVisibleChild(0, this.mViews.size(), true);
    }

    public int findLastVisibleItemPosition() {
        if (this.this$0.mReverseLayout) {
            return findOneVisibleChild(0, this.mViews.size(), false);
        }
        return findOneVisibleChild(this.mViews.size() - 1, -1, false);
    }

    public int findLastPartiallyVisibleItemPosition() {
        if (this.this$0.mReverseLayout) {
            return findOnePartiallyVisibleChild(0, this.mViews.size(), true);
        }
        return findOnePartiallyVisibleChild(this.mViews.size() - 1, -1, true);
    }

    public int findLastCompletelyVisibleItemPosition() {
        if (this.this$0.mReverseLayout) {
            return findOneVisibleChild(0, this.mViews.size(), true);
        }
        return findOneVisibleChild(this.mViews.size() - 1, -1, true);
    }

    int findOnePartiallyOrCompletelyVisibleChild(int i, int i2, boolean z, boolean z2, boolean z3) {
        int startAfterPadding = this.this$0.mPrimaryOrientation.getStartAfterPadding();
        int endAfterPadding = this.this$0.mPrimaryOrientation.getEndAfterPadding();
        int i3 = i2 > i ? 1 : -1;
        while (i != i2) {
            View view = this.mViews.get(i);
            int decoratedStart = this.this$0.mPrimaryOrientation.getDecoratedStart(view);
            int decoratedEnd = this.this$0.mPrimaryOrientation.getDecoratedEnd(view);
            boolean z4 = false;
            boolean z5 = !z3 ? decoratedStart >= endAfterPadding : decoratedStart > endAfterPadding;
            if (!z3 ? decoratedEnd > startAfterPadding : decoratedEnd >= startAfterPadding) {
                z4 = true;
            }
            if (z5 && z4) {
                if (z && z2) {
                    if (decoratedStart >= startAfterPadding && decoratedEnd <= endAfterPadding) {
                        return this.this$0.getPosition(view);
                    }
                } else {
                    if (z2) {
                        return this.this$0.getPosition(view);
                    }
                    if (decoratedStart < startAfterPadding || decoratedEnd > endAfterPadding) {
                        return this.this$0.getPosition(view);
                    }
                }
            }
            i += i3;
        }
        return -1;
    }

    int findOneVisibleChild(int i, int i2, boolean z) {
        return findOnePartiallyOrCompletelyVisibleChild(i, i2, z, true, false);
    }

    int findOnePartiallyVisibleChild(int i, int i2, boolean z) {
        return findOnePartiallyOrCompletelyVisibleChild(i, i2, false, false, z);
    }

    public View getFocusableViewAfter(int i, int i2) {
        View view = null;
        if (i2 == -1) {
            int size = this.mViews.size();
            int i3 = 0;
            while (i3 < size) {
                View view2 = this.mViews.get(i3);
                if ((this.this$0.mReverseLayout && this.this$0.getPosition(view2) <= i) || ((!this.this$0.mReverseLayout && this.this$0.getPosition(view2) >= i) || !view2.hasFocusable())) {
                    break;
                }
                i3++;
                view = view2;
            }
        } else {
            int size2 = this.mViews.size() - 1;
            while (size2 >= 0) {
                View view3 = this.mViews.get(size2);
                if ((this.this$0.mReverseLayout && this.this$0.getPosition(view3) >= i) || ((!this.this$0.mReverseLayout && this.this$0.getPosition(view3) <= i) || !view3.hasFocusable())) {
                    break;
                }
                size2--;
                view = view3;
            }
        }
        return view;
    }
}
