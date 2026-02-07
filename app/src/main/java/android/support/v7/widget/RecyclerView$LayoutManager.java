package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat$CollectionInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
import android.support.v7.recyclerview.R$styleable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class RecyclerView$LayoutManager {
    ChildHelper mChildHelper;
    private int mHeight;
    private int mHeightMode;
    int mPrefetchMaxCountObserved;
    boolean mPrefetchMaxObservedInInitialPrefetch;
    RecyclerView mRecyclerView;

    @Nullable
    RecyclerView$SmoothScroller mSmoothScroller;
    private int mWidth;
    private int mWidthMode;
    private final ViewBoundsCheck$Callback mHorizontalBoundCheckCallback = new RecyclerView$LayoutManager$1(this);
    private final ViewBoundsCheck$Callback mVerticalBoundCheckCallback = new RecyclerView$LayoutManager$2(this);
    ViewBoundsCheck mHorizontalBoundCheck = new ViewBoundsCheck(this.mHorizontalBoundCheckCallback);
    ViewBoundsCheck mVerticalBoundCheck = new ViewBoundsCheck(this.mVerticalBoundCheckCallback);
    boolean mRequestedSimpleAnimations = false;
    boolean mIsAttachedToWindow = false;
    boolean mAutoMeasure = false;
    private boolean mMeasurementCacheEnabled = true;
    private boolean mItemPrefetchEnabled = true;

    public boolean canScrollHorizontally() {
        return false;
    }

    public boolean canScrollVertically() {
        return false;
    }

    public boolean checkLayoutParams(RecyclerView$LayoutParams recyclerView$LayoutParams) {
        return recyclerView$LayoutParams != null;
    }

    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView$State recyclerView$State, RecyclerView$LayoutManager$LayoutPrefetchRegistry recyclerView$LayoutManager$LayoutPrefetchRegistry) {
    }

    public void collectInitialPrefetchPositions(int i, RecyclerView$LayoutManager$LayoutPrefetchRegistry recyclerView$LayoutManager$LayoutPrefetchRegistry) {
    }

    public int computeHorizontalScrollExtent(@NonNull RecyclerView$State recyclerView$State) {
        return 0;
    }

    public int computeHorizontalScrollOffset(@NonNull RecyclerView$State recyclerView$State) {
        return 0;
    }

    public int computeHorizontalScrollRange(@NonNull RecyclerView$State recyclerView$State) {
        return 0;
    }

    public int computeVerticalScrollExtent(@NonNull RecyclerView$State recyclerView$State) {
        return 0;
    }

    public int computeVerticalScrollOffset(@NonNull RecyclerView$State recyclerView$State) {
        return 0;
    }

    public int computeVerticalScrollRange(@NonNull RecyclerView$State recyclerView$State) {
        return 0;
    }

    public abstract RecyclerView$LayoutParams generateDefaultLayoutParams();

    public int getBaseline() {
        return -1;
    }

    public int getSelectionModeForAccessibility(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State) {
        return 0;
    }

    public boolean isLayoutHierarchical(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State) {
        return false;
    }

    public void onAdapterChanged(@Nullable RecyclerView$Adapter recyclerView$Adapter, @Nullable RecyclerView$Adapter recyclerView$Adapter2) {
    }

    public boolean onAddFocusables(@NonNull RecyclerView recyclerView, @NonNull ArrayList<View> arrayList, int i, int i2) {
        return false;
    }

    @CallSuper
    public void onAttachedToWindow(RecyclerView recyclerView) {
    }

    @Deprecated
    public void onDetachedFromWindow(RecyclerView recyclerView) {
    }

    @Nullable
    public View onFocusSearchFailed(@NonNull View view, int i, @NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State) {
        return null;
    }

    @Nullable
    public View onInterceptFocusSearch(@NonNull View view, int i) {
        return null;
    }

    public void onItemsAdded(@NonNull RecyclerView recyclerView, int i, int i2) {
    }

    public void onItemsChanged(@NonNull RecyclerView recyclerView) {
    }

    public void onItemsMoved(@NonNull RecyclerView recyclerView, int i, int i2, int i3) {
    }

    public void onItemsRemoved(@NonNull RecyclerView recyclerView, int i, int i2) {
    }

    public void onItemsUpdated(@NonNull RecyclerView recyclerView, int i, int i2) {
    }

    public void onLayoutCompleted(RecyclerView$State recyclerView$State) {
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    @Nullable
    public Parcelable onSaveInstanceState() {
        return null;
    }

    public void onScrollStateChanged(int i) {
    }

    public boolean performAccessibilityActionForItem(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State, @NonNull View view, int i, @Nullable Bundle bundle) {
        return false;
    }

    public int scrollHorizontallyBy(int i, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        return 0;
    }

    public void scrollToPosition(int i) {
    }

    public int scrollVerticallyBy(int i, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        return 0;
    }

    boolean shouldMeasureTwice() {
        return false;
    }

    public boolean supportsPredictiveItemAnimations() {
        return false;
    }

    void setRecyclerView(RecyclerView recyclerView) {
        if (recyclerView == null) {
            this.mRecyclerView = null;
            this.mChildHelper = null;
            this.mWidth = 0;
            this.mHeight = 0;
        } else {
            this.mRecyclerView = recyclerView;
            this.mChildHelper = recyclerView.mChildHelper;
            this.mWidth = recyclerView.getWidth();
            this.mHeight = recyclerView.getHeight();
        }
        this.mWidthMode = 1073741824;
        this.mHeightMode = 1073741824;
    }

    void setMeasureSpecs(int i, int i2) {
        this.mWidth = View$MeasureSpec.getSize(i);
        this.mWidthMode = View$MeasureSpec.getMode(i);
        if (this.mWidthMode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
            this.mWidth = 0;
        }
        this.mHeight = View$MeasureSpec.getSize(i2);
        this.mHeightMode = View$MeasureSpec.getMode(i2);
        if (this.mHeightMode != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
            return;
        }
        this.mHeight = 0;
    }

    void setMeasuredDimensionFromChildren(int i, int i2) {
        int childCount = getChildCount();
        if (childCount == 0) {
            this.mRecyclerView.defaultOnMeasure(i, i2);
            return;
        }
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MIN_VALUE;
        int i5 = Integer.MIN_VALUE;
        int i6 = Integer.MAX_VALUE;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            Rect rect = this.mRecyclerView.mTempRect;
            getDecoratedBoundsWithMargins(childAt, rect);
            if (rect.left < i3) {
                i3 = rect.left;
            }
            if (rect.right > i4) {
                i4 = rect.right;
            }
            if (rect.top < i6) {
                i6 = rect.top;
            }
            if (rect.bottom > i5) {
                i5 = rect.bottom;
            }
        }
        this.mRecyclerView.mTempRect.set(i3, i6, i4, i5);
        setMeasuredDimension(this.mRecyclerView.mTempRect, i, i2);
    }

    public void setMeasuredDimension(Rect rect, int i, int i2) {
        setMeasuredDimension(chooseSize(i, rect.width() + getPaddingLeft() + getPaddingRight(), getMinimumWidth()), chooseSize(i2, rect.height() + getPaddingTop() + getPaddingBottom(), getMinimumHeight()));
    }

    public void requestLayout() {
        if (this.mRecyclerView != null) {
            this.mRecyclerView.requestLayout();
        }
    }

    public void assertInLayoutOrScroll(String str) {
        if (this.mRecyclerView != null) {
            this.mRecyclerView.assertInLayoutOrScroll(str);
        }
    }

    public static int chooseSize(int i, int i2, int i3) {
        int mode = View$MeasureSpec.getMode(i);
        int size = View$MeasureSpec.getSize(i);
        if (mode != Integer.MIN_VALUE) {
            return mode != 1073741824 ? Math.max(i2, i3) : size;
        }
        return Math.min(size, Math.max(i2, i3));
    }

    public void assertNotInLayoutOrScroll(String str) {
        if (this.mRecyclerView != null) {
            this.mRecyclerView.assertNotInLayoutOrScroll(str);
        }
    }

    @Deprecated
    public void setAutoMeasureEnabled(boolean z) {
        this.mAutoMeasure = z;
    }

    public boolean isAutoMeasureEnabled() {
        return this.mAutoMeasure;
    }

    public final void setItemPrefetchEnabled(boolean z) {
        if (z != this.mItemPrefetchEnabled) {
            this.mItemPrefetchEnabled = z;
            this.mPrefetchMaxCountObserved = 0;
            if (this.mRecyclerView != null) {
                this.mRecyclerView.mRecycler.updateViewCacheSize();
            }
        }
    }

    public final boolean isItemPrefetchEnabled() {
        return this.mItemPrefetchEnabled;
    }

    void dispatchAttachedToWindow(RecyclerView recyclerView) {
        this.mIsAttachedToWindow = true;
        onAttachedToWindow(recyclerView);
    }

    void dispatchDetachedFromWindow(RecyclerView recyclerView, RecyclerView$Recycler recyclerView$Recycler) {
        this.mIsAttachedToWindow = false;
        onDetachedFromWindow(recyclerView, recyclerView$Recycler);
    }

    public boolean isAttachedToWindow() {
        return this.mIsAttachedToWindow;
    }

    public void postOnAnimation(Runnable runnable) {
        if (this.mRecyclerView != null) {
            ViewCompat.postOnAnimation(this.mRecyclerView, runnable);
        }
    }

    public boolean removeCallbacks(Runnable runnable) {
        if (this.mRecyclerView != null) {
            return this.mRecyclerView.removeCallbacks(runnable);
        }
        return false;
    }

    @CallSuper
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView$Recycler recyclerView$Recycler) {
        onDetachedFromWindow(recyclerView);
    }

    public boolean getClipToPadding() {
        return this.mRecyclerView != null && this.mRecyclerView.mClipToPadding;
    }

    public void onLayoutChildren(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
    }

    public RecyclerView$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (viewGroup$LayoutParams instanceof RecyclerView$LayoutParams) {
            return new RecyclerView$LayoutParams((RecyclerView$LayoutParams) viewGroup$LayoutParams);
        }
        if (viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams) {
            return new RecyclerView$LayoutParams((ViewGroup$MarginLayoutParams) viewGroup$LayoutParams);
        }
        return new RecyclerView$LayoutParams(viewGroup$LayoutParams);
    }

    public RecyclerView$LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new RecyclerView$LayoutParams(context, attributeSet);
    }

    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView$State recyclerView$State, int i) {
        Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
    }

    public void startSmoothScroll(RecyclerView$SmoothScroller recyclerView$SmoothScroller) {
        if (this.mSmoothScroller != null && recyclerView$SmoothScroller != this.mSmoothScroller && this.mSmoothScroller.isRunning()) {
            this.mSmoothScroller.stop();
        }
        this.mSmoothScroller = recyclerView$SmoothScroller;
        this.mSmoothScroller.start(this.mRecyclerView, this);
    }

    public boolean isSmoothScrolling() {
        return this.mSmoothScroller != null && this.mSmoothScroller.isRunning();
    }

    public int getLayoutDirection() {
        return ViewCompat.getLayoutDirection(this.mRecyclerView);
    }

    public void endAnimation(View view) {
        if (this.mRecyclerView.mItemAnimator != null) {
            this.mRecyclerView.mItemAnimator.endAnimation(RecyclerView.getChildViewHolderInt(view));
        }
    }

    public void addDisappearingView(View view) {
        addDisappearingView(view, -1);
    }

    public void addDisappearingView(View view, int i) {
        addViewInt(view, i, true);
    }

    public void addView(View view) {
        addView(view, -1);
    }

    public void addView(View view, int i) {
        addViewInt(view, i, false);
    }

    private void addViewInt(View view, int i, boolean z) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (z || childViewHolderInt.isRemoved()) {
            this.mRecyclerView.mViewInfoStore.addToDisappearedInLayout(childViewHolderInt);
        } else {
            this.mRecyclerView.mViewInfoStore.removeFromDisappearedInLayout(childViewHolderInt);
        }
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        if (childViewHolderInt.wasReturnedFromScrap() || childViewHolderInt.isScrap()) {
            if (childViewHolderInt.isScrap()) {
                childViewHolderInt.unScrap();
            } else {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
            this.mChildHelper.attachViewToParent(view, i, view.getLayoutParams(), false);
        } else if (view.getParent() == this.mRecyclerView) {
            int iIndexOfChild = this.mChildHelper.indexOfChild(view);
            if (i == -1) {
                i = this.mChildHelper.getChildCount();
            }
            if (iIndexOfChild == -1) {
                throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.mRecyclerView.indexOfChild(view) + this.mRecyclerView.exceptionLabel());
            }
            if (iIndexOfChild != i) {
                this.mRecyclerView.mLayout.moveView(iIndexOfChild, i);
            }
        } else {
            this.mChildHelper.addView(view, i, false);
            recyclerView$LayoutParams.mInsetsDirty = true;
            if (this.mSmoothScroller != null && this.mSmoothScroller.isRunning()) {
                this.mSmoothScroller.onChildAttachedToWindow(view);
            }
        }
        if (recyclerView$LayoutParams.mPendingInvalidate) {
            childViewHolderInt.itemView.invalidate();
            recyclerView$LayoutParams.mPendingInvalidate = false;
        }
    }

    public void removeView(View view) {
        this.mChildHelper.removeView(view);
    }

    public void removeViewAt(int i) {
        if (getChildAt(i) != null) {
            this.mChildHelper.removeViewAt(i);
        }
    }

    public void removeAllViews() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            this.mChildHelper.removeViewAt(childCount);
        }
    }

    public int getPosition(@NonNull View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).getViewLayoutPosition();
    }

    public int getItemViewType(@NonNull View view) {
        return RecyclerView.getChildViewHolderInt(view).getItemViewType();
    }

    @Nullable
    public View findContainingItemView(@NonNull View view) {
        View viewFindContainingItemView;
        if (this.mRecyclerView == null || (viewFindContainingItemView = this.mRecyclerView.findContainingItemView(view)) == null || this.mChildHelper.isHidden(viewFindContainingItemView)) {
            return null;
        }
        return viewFindContainingItemView;
    }

    @Nullable
    public View findViewByPosition(int i) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
            if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i && !childViewHolderInt.shouldIgnore() && (this.mRecyclerView.mState.isPreLayout() || !childViewHolderInt.isRemoved())) {
                return childAt;
            }
        }
        return null;
    }

    public void detachView(@NonNull View view) {
        int iIndexOfChild = this.mChildHelper.indexOfChild(view);
        if (iIndexOfChild >= 0) {
            detachViewInternal(iIndexOfChild, view);
        }
    }

    public void detachViewAt(int i) {
        detachViewInternal(i, getChildAt(i));
    }

    private void detachViewInternal(int i, @NonNull View view) {
        this.mChildHelper.detachViewFromParent(i);
    }

    public void attachView(@NonNull View view, int i, RecyclerView$LayoutParams recyclerView$LayoutParams) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt.isRemoved()) {
            this.mRecyclerView.mViewInfoStore.addToDisappearedInLayout(childViewHolderInt);
        } else {
            this.mRecyclerView.mViewInfoStore.removeFromDisappearedInLayout(childViewHolderInt);
        }
        this.mChildHelper.attachViewToParent(view, i, recyclerView$LayoutParams, childViewHolderInt.isRemoved());
    }

    public void attachView(@NonNull View view, int i) {
        attachView(view, i, (RecyclerView$LayoutParams) view.getLayoutParams());
    }

    public void attachView(@NonNull View view) {
        attachView(view, -1);
    }

    public void removeDetachedView(@NonNull View view) {
        this.mRecyclerView.removeDetachedView(view, false);
    }

    public void moveView(int i, int i2) {
        View childAt = getChildAt(i);
        if (childAt == null) {
            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.mRecyclerView.toString());
        }
        detachViewAt(i);
        attachView(childAt, i2);
    }

    public void detachAndScrapView(@NonNull View view, @NonNull RecyclerView$Recycler recyclerView$Recycler) {
        scrapOrRecycleView(recyclerView$Recycler, this.mChildHelper.indexOfChild(view), view);
    }

    public void detachAndScrapViewAt(int i, @NonNull RecyclerView$Recycler recyclerView$Recycler) {
        scrapOrRecycleView(recyclerView$Recycler, i, getChildAt(i));
    }

    public void removeAndRecycleView(@NonNull View view, @NonNull RecyclerView$Recycler recyclerView$Recycler) {
        removeView(view);
        recyclerView$Recycler.recycleView(view);
    }

    public void removeAndRecycleViewAt(int i, @NonNull RecyclerView$Recycler recyclerView$Recycler) {
        View childAt = getChildAt(i);
        removeViewAt(i);
        recyclerView$Recycler.recycleView(childAt);
    }

    public int getChildCount() {
        if (this.mChildHelper != null) {
            return this.mChildHelper.getChildCount();
        }
        return 0;
    }

    @Nullable
    public View getChildAt(int i) {
        if (this.mChildHelper != null) {
            return this.mChildHelper.getChildAt(i);
        }
        return null;
    }

    public int getWidthMode() {
        return this.mWidthMode;
    }

    public int getHeightMode() {
        return this.mHeightMode;
    }

    @Px
    public int getWidth() {
        return this.mWidth;
    }

    @Px
    public int getHeight() {
        return this.mHeight;
    }

    @Px
    public int getPaddingLeft() {
        if (this.mRecyclerView != null) {
            return this.mRecyclerView.getPaddingLeft();
        }
        return 0;
    }

    @Px
    public int getPaddingTop() {
        if (this.mRecyclerView != null) {
            return this.mRecyclerView.getPaddingTop();
        }
        return 0;
    }

    @Px
    public int getPaddingRight() {
        if (this.mRecyclerView != null) {
            return this.mRecyclerView.getPaddingRight();
        }
        return 0;
    }

    @Px
    public int getPaddingBottom() {
        if (this.mRecyclerView != null) {
            return this.mRecyclerView.getPaddingBottom();
        }
        return 0;
    }

    @Px
    public int getPaddingStart() {
        if (this.mRecyclerView != null) {
            return ViewCompat.getPaddingStart(this.mRecyclerView);
        }
        return 0;
    }

    @Px
    public int getPaddingEnd() {
        if (this.mRecyclerView != null) {
            return ViewCompat.getPaddingEnd(this.mRecyclerView);
        }
        return 0;
    }

    public boolean isFocused() {
        return this.mRecyclerView != null && this.mRecyclerView.isFocused();
    }

    public boolean hasFocus() {
        return this.mRecyclerView != null && this.mRecyclerView.hasFocus();
    }

    @Nullable
    public View getFocusedChild() {
        View focusedChild;
        if (this.mRecyclerView == null || (focusedChild = this.mRecyclerView.getFocusedChild()) == null || this.mChildHelper.isHidden(focusedChild)) {
            return null;
        }
        return focusedChild;
    }

    public int getItemCount() {
        RecyclerView$Adapter adapter = this.mRecyclerView != null ? this.mRecyclerView.getAdapter() : null;
        if (adapter != null) {
            return adapter.getItemCount();
        }
        return 0;
    }

    public void offsetChildrenHorizontal(@Px int i) {
        if (this.mRecyclerView != null) {
            this.mRecyclerView.offsetChildrenHorizontal(i);
        }
    }

    public void offsetChildrenVertical(@Px int i) {
        if (this.mRecyclerView != null) {
            this.mRecyclerView.offsetChildrenVertical(i);
        }
    }

    public void ignoreView(@NonNull View view) {
        if (view.getParent() != this.mRecyclerView || this.mRecyclerView.indexOfChild(view) == -1) {
            throw new IllegalArgumentException("View should be fully attached to be ignored" + this.mRecyclerView.exceptionLabel());
        }
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        childViewHolderInt.addFlags(128);
        this.mRecyclerView.mViewInfoStore.removeViewHolder(childViewHolderInt);
    }

    public void stopIgnoringView(@NonNull View view) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        childViewHolderInt.stopIgnoring();
        childViewHolderInt.resetInternal();
        childViewHolderInt.addFlags(4);
    }

    public void detachAndScrapAttachedViews(@NonNull RecyclerView$Recycler recyclerView$Recycler) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            scrapOrRecycleView(recyclerView$Recycler, childCount, getChildAt(childCount));
        }
    }

    private void scrapOrRecycleView(RecyclerView$Recycler recyclerView$Recycler, int i, View view) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt.shouldIgnore()) {
            return;
        }
        if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !this.mRecyclerView.mAdapter.hasStableIds()) {
            removeViewAt(i);
            recyclerView$Recycler.recycleViewHolderInternal(childViewHolderInt);
        } else {
            detachViewAt(i);
            recyclerView$Recycler.scrapView(view);
            this.mRecyclerView.mViewInfoStore.onViewDetached(childViewHolderInt);
        }
    }

    void removeAndRecycleScrapInt(RecyclerView$Recycler recyclerView$Recycler) {
        int scrapCount = recyclerView$Recycler.getScrapCount();
        for (int i = scrapCount - 1; i >= 0; i--) {
            View scrapViewAt = recyclerView$Recycler.getScrapViewAt(i);
            RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(scrapViewAt);
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.setIsRecyclable(false);
                if (childViewHolderInt.isTmpDetached()) {
                    this.mRecyclerView.removeDetachedView(scrapViewAt, false);
                }
                if (this.mRecyclerView.mItemAnimator != null) {
                    this.mRecyclerView.mItemAnimator.endAnimation(childViewHolderInt);
                }
                childViewHolderInt.setIsRecyclable(true);
                recyclerView$Recycler.quickRecycleScrapView(scrapViewAt);
            }
        }
        recyclerView$Recycler.clearScrap();
        if (scrapCount > 0) {
            this.mRecyclerView.invalidate();
        }
    }

    public void measureChild(@NonNull View view, int i, int i2) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
        int i3 = i + itemDecorInsetsForChild.left + itemDecorInsetsForChild.right;
        int i4 = i2 + itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom;
        int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + i3, recyclerView$LayoutParams.width, canScrollHorizontally());
        int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + i4, recyclerView$LayoutParams.height, canScrollVertically());
        if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, recyclerView$LayoutParams)) {
            view.measure(childMeasureSpec, childMeasureSpec2);
        }
    }

    boolean shouldReMeasureChild(View view, int i, int i2, RecyclerView$LayoutParams recyclerView$LayoutParams) {
        return (this.mMeasurementCacheEnabled && isMeasurementUpToDate(view.getMeasuredWidth(), i, recyclerView$LayoutParams.width) && isMeasurementUpToDate(view.getMeasuredHeight(), i2, recyclerView$LayoutParams.height)) ? false : true;
    }

    boolean shouldMeasureChild(View view, int i, int i2, RecyclerView$LayoutParams recyclerView$LayoutParams) {
        return (!view.isLayoutRequested() && this.mMeasurementCacheEnabled && isMeasurementUpToDate(view.getWidth(), i, recyclerView$LayoutParams.width) && isMeasurementUpToDate(view.getHeight(), i2, recyclerView$LayoutParams.height)) ? false : true;
    }

    public boolean isMeasurementCacheEnabled() {
        return this.mMeasurementCacheEnabled;
    }

    public void setMeasurementCacheEnabled(boolean z) {
        this.mMeasurementCacheEnabled = z;
    }

    private static boolean isMeasurementUpToDate(int i, int i2, int i3) {
        int mode = View$MeasureSpec.getMode(i2);
        int size = View$MeasureSpec.getSize(i2);
        if (i3 > 0 && i != i3) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i;
        }
        return true;
    }

    public void measureChildWithMargins(@NonNull View view, int i, int i2) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
        int i3 = i + itemDecorInsetsForChild.left + itemDecorInsetsForChild.right;
        int i4 = i2 + itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom;
        int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + recyclerView$LayoutParams.leftMargin + recyclerView$LayoutParams.rightMargin + i3, recyclerView$LayoutParams.width, canScrollHorizontally());
        int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + recyclerView$LayoutParams.topMargin + recyclerView$LayoutParams.bottomMargin + i4, recyclerView$LayoutParams.height, canScrollVertically());
        if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, recyclerView$LayoutParams)) {
            view.measure(childMeasureSpec, childMeasureSpec2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
    
        if (r3 >= 0) goto L5;
     */
    @Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int getChildMeasureSpec(int i, int i2, int i3, boolean z) {
        int i4 = i - i2;
        int i5 = 0;
        int iMax = Math.max(0, i4);
        if (!z) {
            if (i3 >= 0) {
                iMax = i3;
            } else if (i3 != -1) {
                if (i3 == -2) {
                    i5 = Integer.MIN_VALUE;
                } else {
                    iMax = 0;
                }
            }
            i5 = 1073741824;
        }
        return View$MeasureSpec.makeMeasureSpec(iMax, i5);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int getChildMeasureSpec(int i, int i2, int i3, int i4, boolean z) {
        int i5;
        int i6 = i - i3;
        int i7 = 0;
        int iMax = Math.max(0, i6);
        if (z) {
            if (i4 >= 0) {
                iMax = i4;
                i7 = 1073741824;
            } else if (i4 == -1) {
                if (i2 == Integer.MIN_VALUE || (i2 != 0 && i2 == 1073741824)) {
                    i5 = iMax;
                } else {
                    i2 = 0;
                    i5 = 0;
                }
                i7 = i2;
                iMax = i5;
            } else {
                iMax = 0;
            }
        } else if (i4 < 0) {
            if (i4 == -1) {
                i7 = i2;
            } else if (i4 == -2) {
                if (i2 == Integer.MIN_VALUE || i2 == 1073741824) {
                    i7 = Integer.MIN_VALUE;
                }
            }
        }
        return View$MeasureSpec.makeMeasureSpec(iMax, i7);
    }

    public int getDecoratedMeasuredWidth(@NonNull View view) {
        Rect rect = ((RecyclerView$LayoutParams) view.getLayoutParams()).mDecorInsets;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    public int getDecoratedMeasuredHeight(@NonNull View view) {
        Rect rect = ((RecyclerView$LayoutParams) view.getLayoutParams()).mDecorInsets;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    public void layoutDecorated(@NonNull View view, int i, int i2, int i3, int i4) {
        Rect rect = ((RecyclerView$LayoutParams) view.getLayoutParams()).mDecorInsets;
        view.layout(i + rect.left, i2 + rect.top, i3 - rect.right, i4 - rect.bottom);
    }

    public void layoutDecoratedWithMargins(@NonNull View view, int i, int i2, int i3, int i4) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        Rect rect = recyclerView$LayoutParams.mDecorInsets;
        view.layout(i + rect.left + recyclerView$LayoutParams.leftMargin, i2 + rect.top + recyclerView$LayoutParams.topMargin, (i3 - rect.right) - recyclerView$LayoutParams.rightMargin, (i4 - rect.bottom) - recyclerView$LayoutParams.bottomMargin);
    }

    public void getTransformedBoundingBox(@NonNull View view, boolean z, @NonNull Rect rect) {
        Matrix matrix;
        if (z) {
            Rect rect2 = ((RecyclerView$LayoutParams) view.getLayoutParams()).mDecorInsets;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        } else {
            rect.set(0, 0, view.getWidth(), view.getHeight());
        }
        if (this.mRecyclerView != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.mRecyclerView.mTempRectF;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public void getDecoratedBoundsWithMargins(@NonNull View view, @NonNull Rect rect) {
        RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
    }

    public int getDecoratedLeft(@NonNull View view) {
        return view.getLeft() - getLeftDecorationWidth(view);
    }

    public int getDecoratedTop(@NonNull View view) {
        return view.getTop() - getTopDecorationHeight(view);
    }

    public int getDecoratedRight(@NonNull View view) {
        return view.getRight() + getRightDecorationWidth(view);
    }

    public int getDecoratedBottom(@NonNull View view) {
        return view.getBottom() + getBottomDecorationHeight(view);
    }

    public void calculateItemDecorationsForChild(@NonNull View view, @NonNull Rect rect) {
        if (this.mRecyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(this.mRecyclerView.getItemDecorInsetsForChild(view));
        }
    }

    public int getTopDecorationHeight(@NonNull View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).mDecorInsets.top;
    }

    public int getBottomDecorationHeight(@NonNull View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).mDecorInsets.bottom;
    }

    public int getLeftDecorationWidth(@NonNull View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).mDecorInsets.left;
    }

    public int getRightDecorationWidth(@NonNull View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).mDecorInsets.right;
    }

    private int[] getChildRectangleOnScreenScrollAmount(RecyclerView recyclerView, View view, Rect rect, boolean z) {
        int[] iArr = new int[2];
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        int left = (view.getLeft() + rect.left) - view.getScrollX();
        int top = (view.getTop() + rect.top) - view.getScrollY();
        int iWidth = rect.width() + left;
        int iHeight = rect.height() + top;
        int i = left - paddingLeft;
        int iMin = Math.min(0, i);
        int i2 = top - paddingTop;
        int iMin2 = Math.min(0, i2);
        int i3 = iWidth - width;
        int iMax = Math.max(0, i3);
        int iMax2 = Math.max(0, iHeight - height);
        if (getLayoutDirection() != 1) {
            if (iMin == 0) {
                iMin = Math.min(i, iMax);
            }
            iMax = iMin;
        } else if (iMax == 0) {
            iMax = Math.max(iMin, i3);
        }
        if (iMin2 == 0) {
            iMin2 = Math.min(i2, iMax2);
        }
        iArr[0] = iMax;
        iArr[1] = iMin2;
        return iArr;
    }

    public boolean requestChildRectangleOnScreen(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z) {
        return requestChildRectangleOnScreen(recyclerView, view, rect, z, false);
    }

    public boolean requestChildRectangleOnScreen(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z, boolean z2) {
        int[] childRectangleOnScreenScrollAmount = getChildRectangleOnScreenScrollAmount(recyclerView, view, rect, z);
        int i = childRectangleOnScreenScrollAmount[0];
        int i2 = childRectangleOnScreenScrollAmount[1];
        if ((z2 && !isFocusedChildVisibleAfterScrolling(recyclerView, i, i2)) || (i == 0 && i2 == 0)) {
            return false;
        }
        if (z) {
            recyclerView.scrollBy(i, i2);
        } else {
            recyclerView.smoothScrollBy(i, i2);
        }
        return true;
    }

    public boolean isViewPartiallyVisible(@NonNull View view, boolean z, boolean z2) {
        boolean z3 = this.mHorizontalBoundCheck.isViewWithinBoundFlags(view, 24579) && this.mVerticalBoundCheck.isViewWithinBoundFlags(view, 24579);
        return z ? z3 : !z3;
    }

    private boolean isFocusedChildVisibleAfterScrolling(RecyclerView recyclerView, int i, int i2) {
        View focusedChild = recyclerView.getFocusedChild();
        if (focusedChild == null) {
            return false;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        Rect rect = this.mRecyclerView.mTempRect;
        getDecoratedBoundsWithMargins(focusedChild, rect);
        return rect.left - i < width && rect.right - i > paddingLeft && rect.top - i2 < height && rect.bottom - i2 > paddingTop;
    }

    @Deprecated
    public boolean onRequestChildFocus(@NonNull RecyclerView recyclerView, @NonNull View view, @Nullable View view2) {
        return isSmoothScrolling() || recyclerView.isComputingLayout();
    }

    public boolean onRequestChildFocus(@NonNull RecyclerView recyclerView, @NonNull RecyclerView$State recyclerView$State, @NonNull View view, @Nullable View view2) {
        return onRequestChildFocus(recyclerView, view, view2);
    }

    public void onItemsUpdated(@NonNull RecyclerView recyclerView, int i, int i2, @Nullable Object obj) {
        onItemsUpdated(recyclerView, i, i2);
    }

    public void onMeasure(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State, int i, int i2) {
        this.mRecyclerView.defaultOnMeasure(i, i2);
    }

    public void setMeasuredDimension(int i, int i2) {
        RecyclerView.access$300(this.mRecyclerView, i, i2);
    }

    @Px
    public int getMinimumWidth() {
        return ViewCompat.getMinimumWidth(this.mRecyclerView);
    }

    @Px
    public int getMinimumHeight() {
        return ViewCompat.getMinimumHeight(this.mRecyclerView);
    }

    void stopSmoothScroller() {
        if (this.mSmoothScroller != null) {
            this.mSmoothScroller.stop();
        }
    }

    void onSmoothScrollerStopped(RecyclerView$SmoothScroller recyclerView$SmoothScroller) {
        if (this.mSmoothScroller == recyclerView$SmoothScroller) {
            this.mSmoothScroller = null;
        }
    }

    public void removeAndRecycleAllViews(@NonNull RecyclerView$Recycler recyclerView$Recycler) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (!RecyclerView.getChildViewHolderInt(getChildAt(childCount)).shouldIgnore()) {
                removeAndRecycleViewAt(childCount, recyclerView$Recycler);
            }
        }
    }

    void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        onInitializeAccessibilityNodeInfo(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, accessibilityNodeInfoCompat);
    }

    public void onInitializeAccessibilityNodeInfo(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (this.mRecyclerView.canScrollVertically(-1) || this.mRecyclerView.canScrollHorizontally(-1)) {
            accessibilityNodeInfoCompat.addAction(8192);
            accessibilityNodeInfoCompat.setScrollable(true);
        }
        if (this.mRecyclerView.canScrollVertically(1) || this.mRecyclerView.canScrollHorizontally(1)) {
            accessibilityNodeInfoCompat.addAction(4096);
            accessibilityNodeInfoCompat.setScrollable(true);
        }
        accessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat$CollectionInfoCompat.obtain(getRowCountForAccessibility(recyclerView$Recycler, recyclerView$State), getColumnCountForAccessibility(recyclerView$Recycler, recyclerView$State), isLayoutHierarchical(recyclerView$Recycler, recyclerView$State), getSelectionModeForAccessibility(recyclerView$Recycler, recyclerView$State)));
    }

    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        onInitializeAccessibilityEvent(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, accessibilityEvent);
    }

    public void onInitializeAccessibilityEvent(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State, @NonNull AccessibilityEvent accessibilityEvent) {
        if (this.mRecyclerView == null || accessibilityEvent == null) {
            return;
        }
        boolean z = true;
        if (!this.mRecyclerView.canScrollVertically(1) && !this.mRecyclerView.canScrollVertically(-1) && !this.mRecyclerView.canScrollHorizontally(-1) && !this.mRecyclerView.canScrollHorizontally(1)) {
            z = false;
        }
        accessibilityEvent.setScrollable(z);
        if (this.mRecyclerView.mAdapter != null) {
            accessibilityEvent.setItemCount(this.mRecyclerView.mAdapter.getItemCount());
        }
    }

    void onInitializeAccessibilityNodeInfoForItem(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt == null || childViewHolderInt.isRemoved() || this.mChildHelper.isHidden(childViewHolderInt.itemView)) {
            return;
        }
        onInitializeAccessibilityNodeInfoForItem(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, view, accessibilityNodeInfoCompat);
    }

    public void onInitializeAccessibilityNodeInfoForItem(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State, @NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat$CollectionItemInfoCompat.obtain(canScrollVertically() ? getPosition(view) : 0, 1, canScrollHorizontally() ? getPosition(view) : 0, 1, false, false));
    }

    public void requestSimpleAnimationsInNextLayout() {
        this.mRequestedSimpleAnimations = true;
    }

    public int getRowCountForAccessibility(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State) {
        if (this.mRecyclerView == null || this.mRecyclerView.mAdapter == null || !canScrollVertically()) {
            return 1;
        }
        return this.mRecyclerView.mAdapter.getItemCount();
    }

    public int getColumnCountForAccessibility(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State) {
        if (this.mRecyclerView == null || this.mRecyclerView.mAdapter == null || !canScrollHorizontally()) {
            return 1;
        }
        return this.mRecyclerView.mAdapter.getItemCount();
    }

    boolean performAccessibilityAction(int i, @Nullable Bundle bundle) {
        return performAccessibilityAction(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, i, bundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0073 A[PHI: r2
      0x0073: PHI (r2v10 int) = (r2v6 int), (r2v16 int) binds: [B:22:0x0062, B:15:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean performAccessibilityAction(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State, int i, @Nullable Bundle bundle) {
        int height;
        int width;
        if (this.mRecyclerView == null) {
            return false;
        }
        if (i == 4096) {
            height = this.mRecyclerView.canScrollVertically(1) ? (getHeight() - getPaddingTop()) - getPaddingBottom() : 0;
            if (this.mRecyclerView.canScrollHorizontally(1)) {
                width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            }
        } else if (i != 8192) {
            height = 0;
            width = 0;
        } else {
            height = this.mRecyclerView.canScrollVertically(-1) ? -((getHeight() - getPaddingTop()) - getPaddingBottom()) : 0;
            width = this.mRecyclerView.canScrollHorizontally(-1) ? -((getWidth() - getPaddingLeft()) - getPaddingRight()) : 0;
        }
        if (height == 0 && width == 0) {
            return false;
        }
        this.mRecyclerView.smoothScrollBy(width, height);
        return true;
    }

    boolean performAccessibilityActionForItem(@NonNull View view, int i, @Nullable Bundle bundle) {
        return performAccessibilityActionForItem(this.mRecyclerView.mRecycler, this.mRecyclerView.mState, view, i, bundle);
    }

    public static RecyclerView$LayoutManager$Properties getProperties(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        RecyclerView$LayoutManager$Properties recyclerView$LayoutManager$Properties = new RecyclerView$LayoutManager$Properties();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RecyclerView, i, i2);
        recyclerView$LayoutManager$Properties.orientation = typedArrayObtainStyledAttributes.getInt(R$styleable.RecyclerView_android_orientation, 1);
        recyclerView$LayoutManager$Properties.spanCount = typedArrayObtainStyledAttributes.getInt(R$styleable.RecyclerView_spanCount, 1);
        recyclerView$LayoutManager$Properties.reverseLayout = typedArrayObtainStyledAttributes.getBoolean(R$styleable.RecyclerView_reverseLayout, false);
        recyclerView$LayoutManager$Properties.stackFromEnd = typedArrayObtainStyledAttributes.getBoolean(R$styleable.RecyclerView_stackFromEnd, false);
        typedArrayObtainStyledAttributes.recycle();
        return recyclerView$LayoutManager$Properties;
    }

    void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
        setMeasureSpecs(View$MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View$MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
    }

    boolean hasFlexibleChildInBothOrientations() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ViewGroup$LayoutParams layoutParams = getChildAt(i).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                return true;
            }
        }
        return false;
    }
}
