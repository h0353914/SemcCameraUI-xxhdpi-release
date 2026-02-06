package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class RecyclerView$Recycler {
    static final int DEFAULT_CACHE_SIZE = 2;
    RecyclerView$RecycledViewPool mRecyclerPool;
    private RecyclerView$ViewCacheExtension mViewCacheExtension;
    final /* synthetic */ RecyclerView this$0;
    final ArrayList<RecyclerView$ViewHolder> mAttachedScrap = new ArrayList<>();
    ArrayList<RecyclerView$ViewHolder> mChangedScrap = null;
    final ArrayList<RecyclerView$ViewHolder> mCachedViews = new ArrayList<>();
    private final List<RecyclerView$ViewHolder> mUnmodifiableAttachedScrap = Collections.unmodifiableList(this.mAttachedScrap);
    private int mRequestedCacheMax = 2;
    int mViewCacheMax = 2;

    public RecyclerView$Recycler(RecyclerView recyclerView) {
        this.this$0 = recyclerView;
    }

    public void clear() {
        this.mAttachedScrap.clear();
        recycleAndClearCachedViews();
    }

    public void setViewCacheSize(int i) {
        this.mRequestedCacheMax = i;
        updateViewCacheSize();
    }

    void updateViewCacheSize() {
        this.mViewCacheMax = this.mRequestedCacheMax + (this.this$0.mLayout != null ? this.this$0.mLayout.mPrefetchMaxCountObserved : 0);
        for (int size = this.mCachedViews.size() - 1; size >= 0 && this.mCachedViews.size() > this.mViewCacheMax; size--) {
            recycleCachedViewAt(size);
        }
    }

    @NonNull
    public List<RecyclerView$ViewHolder> getScrapList() {
        return this.mUnmodifiableAttachedScrap;
    }

    boolean validateViewHolderForOffsetPosition(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        if (recyclerView$ViewHolder.isRemoved()) {
            return this.this$0.mState.isPreLayout();
        }
        if (recyclerView$ViewHolder.mPosition < 0 || recyclerView$ViewHolder.mPosition >= this.this$0.mAdapter.getItemCount()) {
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + recyclerView$ViewHolder + this.this$0.exceptionLabel());
        }
        if (this.this$0.mState.isPreLayout() || this.this$0.mAdapter.getItemViewType(recyclerView$ViewHolder.mPosition) == recyclerView$ViewHolder.getItemViewType()) {
            return !this.this$0.mAdapter.hasStableIds() || recyclerView$ViewHolder.getItemId() == this.this$0.mAdapter.getItemId(recyclerView$ViewHolder.mPosition);
        }
        return false;
    }

    private boolean tryBindViewHolderByDeadline(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, int i, int i2, long j) {
        recyclerView$ViewHolder.mOwnerRecyclerView = this.this$0;
        int itemViewType = recyclerView$ViewHolder.getItemViewType();
        long nanoTime = this.this$0.getNanoTime();
        if (j != Long.MAX_VALUE && !this.mRecyclerPool.willBindInTime(itemViewType, nanoTime, j)) {
            return false;
        }
        this.this$0.mAdapter.bindViewHolder(recyclerView$ViewHolder, i);
        this.mRecyclerPool.factorInBindTime(recyclerView$ViewHolder.getItemViewType(), this.this$0.getNanoTime() - nanoTime);
        attachAccessibilityDelegateOnBind(recyclerView$ViewHolder);
        if (!this.this$0.mState.isPreLayout()) {
            return true;
        }
        recyclerView$ViewHolder.mPreLayoutPosition = i2;
        return true;
    }

    public void bindViewToPosition(@NonNull View view, int i) {
        RecyclerView$LayoutParams recyclerView$LayoutParams;
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt == null) {
            throw new IllegalArgumentException("The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter" + this.this$0.exceptionLabel());
        }
        int iFindPositionOffset = this.this$0.mAdapterHelper.findPositionOffset(i);
        if (iFindPositionOffset < 0 || iFindPositionOffset >= this.this$0.mAdapter.getItemCount()) {
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i + "(offset:" + iFindPositionOffset + ").state:" + this.this$0.mState.getItemCount() + this.this$0.exceptionLabel());
        }
        tryBindViewHolderByDeadline(childViewHolderInt, iFindPositionOffset, i, Long.MAX_VALUE);
        ViewGroup$LayoutParams layoutParams = childViewHolderInt.itemView.getLayoutParams();
        if (layoutParams == null) {
            recyclerView$LayoutParams = (RecyclerView$LayoutParams) this.this$0.generateDefaultLayoutParams();
            childViewHolderInt.itemView.setLayoutParams(recyclerView$LayoutParams);
        } else if (!this.this$0.checkLayoutParams(layoutParams)) {
            recyclerView$LayoutParams = (RecyclerView$LayoutParams) this.this$0.generateLayoutParams(layoutParams);
            childViewHolderInt.itemView.setLayoutParams(recyclerView$LayoutParams);
        } else {
            recyclerView$LayoutParams = (RecyclerView$LayoutParams) layoutParams;
        }
        recyclerView$LayoutParams.mInsetsDirty = true;
        recyclerView$LayoutParams.mViewHolder = childViewHolderInt;
        recyclerView$LayoutParams.mPendingInvalidate = childViewHolderInt.itemView.getParent() == null;
    }

    public int convertPreLayoutPositionToPostLayout(int i) {
        if (i >= 0 && i < this.this$0.mState.getItemCount()) {
            return !this.this$0.mState.isPreLayout() ? i : this.this$0.mAdapterHelper.findPositionOffset(i);
        }
        throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + this.this$0.mState.getItemCount() + this.this$0.exceptionLabel());
    }

    @NonNull
    public View getViewForPosition(int i) {
        return getViewForPosition(i, false);
    }

    View getViewForPosition(int i, boolean z) {
        return tryGetViewHolderForPositionByDeadline(i, z, Long.MAX_VALUE).itemView;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0232 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x018c A[PHI: r1 r4
      0x018c: PHI (r1v12 android.support.v7.widget.RecyclerView$ViewHolder) = (r1v11 android.support.v7.widget.RecyclerView$ViewHolder), (r1v31 android.support.v7.widget.RecyclerView$ViewHolder) binds: [B:29:0x005f, B:59:0x0106] A[DONT_GENERATE, DONT_INLINE]
      0x018c: PHI (r4v3 boolean) = (r4v2 boolean), (r4v7 boolean) binds: [B:29:0x005f, B:59:0x0106] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0208  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    RecyclerView$ViewHolder tryGetViewHolderForPositionByDeadline(int i, boolean z, long j) {
        RecyclerView$ViewHolder recycledView;
        boolean z2;
        RecyclerView$ViewHolder recyclerView$ViewHolder;
        boolean z3;
        boolean zTryBindViewHolderByDeadline;
        ViewGroup$LayoutParams layoutParams;
        RecyclerView$LayoutParams recyclerView$LayoutParams;
        RecyclerView recyclerViewFindNestedRecyclerView;
        View viewForPositionAndType;
        if (i < 0 || i >= this.this$0.mState.getItemCount()) {
            throw new IndexOutOfBoundsException("Invalid item position " + i + "(" + i + "). Item count:" + this.this$0.mState.getItemCount() + this.this$0.exceptionLabel());
        }
        if (this.this$0.mState.isPreLayout()) {
            recycledView = getChangedScrapViewForPosition(i);
            if (recycledView != null) {
                z2 = true;
            }
            if (recycledView == null && (recycledView = getScrapOrHiddenOrCachedHolderForPosition(i, z)) != null) {
                if (validateViewHolderForOffsetPosition(recycledView)) {
                    if (!z) {
                        recycledView.addFlags(4);
                        if (recycledView.isScrap()) {
                            this.this$0.removeDetachedView(recycledView.itemView, false);
                            recycledView.unScrap();
                        } else if (recycledView.wasReturnedFromScrap()) {
                            recycledView.clearReturnedFromScrapFlag();
                        }
                        recycleViewHolderInternal(recycledView);
                    }
                    recycledView = null;
                } else {
                    z2 = true;
                }
            }
            if (recycledView != null) {
                recyclerView$ViewHolder = recycledView;
            } else {
                int iFindPositionOffset = this.this$0.mAdapterHelper.findPositionOffset(i);
                if (iFindPositionOffset < 0 || iFindPositionOffset >= this.this$0.mAdapter.getItemCount()) {
                    throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i + "(offset:" + iFindPositionOffset + ").state:" + this.this$0.mState.getItemCount() + this.this$0.exceptionLabel());
                }
                int itemViewType = this.this$0.mAdapter.getItemViewType(iFindPositionOffset);
                if (this.this$0.mAdapter.hasStableIds() && (recycledView = getScrapOrCachedViewForId(this.this$0.mAdapter.getItemId(iFindPositionOffset), itemViewType, z)) != null) {
                    recycledView.mPosition = iFindPositionOffset;
                    z2 = true;
                }
                if (recycledView == null && this.mViewCacheExtension != null && (viewForPositionAndType = this.mViewCacheExtension.getViewForPositionAndType(this, i, itemViewType)) != null) {
                    recycledView = this.this$0.getChildViewHolder(viewForPositionAndType);
                    if (recycledView == null) {
                        throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder" + this.this$0.exceptionLabel());
                    }
                    if (recycledView.shouldIgnore()) {
                        throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view." + this.this$0.exceptionLabel());
                    }
                }
                if (recycledView == null && (recycledView = getRecycledViewPool().getRecycledView(itemViewType)) != null) {
                    recycledView.resetInternal();
                    if (RecyclerView.FORCE_INVALIDATE_DISPLAY_LIST) {
                        invalidateDisplayListInt(recycledView);
                    }
                }
                if (recycledView == null) {
                    long nanoTime = this.this$0.getNanoTime();
                    if (j != Long.MAX_VALUE && !this.mRecyclerPool.willCreateInTime(itemViewType, nanoTime, j)) {
                        return null;
                    }
                    RecyclerView$ViewHolder recyclerView$ViewHolderCreateViewHolder = this.this$0.mAdapter.createViewHolder(this.this$0, itemViewType);
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK && (recyclerViewFindNestedRecyclerView = RecyclerView.findNestedRecyclerView(recyclerView$ViewHolderCreateViewHolder.itemView)) != null) {
                        recyclerView$ViewHolderCreateViewHolder.mNestedRecyclerView = new WeakReference<>(recyclerViewFindNestedRecyclerView);
                    }
                    this.mRecyclerPool.factorInCreateTime(itemViewType, this.this$0.getNanoTime() - nanoTime);
                    recyclerView$ViewHolder = recyclerView$ViewHolderCreateViewHolder;
                }
            }
            z3 = z2;
            if (z3 && !this.this$0.mState.isPreLayout() && recyclerView$ViewHolder.hasAnyOfTheFlags(8192)) {
                recyclerView$ViewHolder.setFlags(0, 8192);
                if (this.this$0.mState.mRunSimpleAnimations) {
                    this.this$0.recordAnimationInfoIfBouncedHiddenView(recyclerView$ViewHolder, this.this$0.mItemAnimator.recordPreLayoutInformation(this.this$0.mState, recyclerView$ViewHolder, RecyclerView$ItemAnimator.buildAdapterChangeFlagsForAnimations(recyclerView$ViewHolder) | 4096, recyclerView$ViewHolder.getUnmodifiedPayloads()));
                }
            }
            if (!this.this$0.mState.isPreLayout() && recyclerView$ViewHolder.isBound()) {
                recyclerView$ViewHolder.mPreLayoutPosition = i;
            } else {
                if (recyclerView$ViewHolder.isBound() || recyclerView$ViewHolder.needsUpdate() || recyclerView$ViewHolder.isInvalid()) {
                    zTryBindViewHolderByDeadline = tryBindViewHolderByDeadline(recyclerView$ViewHolder, this.this$0.mAdapterHelper.findPositionOffset(i), i, j);
                }
                layoutParams = recyclerView$ViewHolder.itemView.getLayoutParams();
                if (layoutParams == null) {
                    recyclerView$LayoutParams = (RecyclerView$LayoutParams) this.this$0.generateDefaultLayoutParams();
                    recyclerView$ViewHolder.itemView.setLayoutParams(recyclerView$LayoutParams);
                } else if (!this.this$0.checkLayoutParams(layoutParams)) {
                    recyclerView$LayoutParams = (RecyclerView$LayoutParams) this.this$0.generateLayoutParams(layoutParams);
                    recyclerView$ViewHolder.itemView.setLayoutParams(recyclerView$LayoutParams);
                } else {
                    recyclerView$LayoutParams = (RecyclerView$LayoutParams) layoutParams;
                }
                recyclerView$LayoutParams.mViewHolder = recyclerView$ViewHolder;
                recyclerView$LayoutParams.mPendingInvalidate = z3 && zTryBindViewHolderByDeadline;
                return recyclerView$ViewHolder;
            }
            zTryBindViewHolderByDeadline = false;
            layoutParams = recyclerView$ViewHolder.itemView.getLayoutParams();
            if (layoutParams == null) {
            }
            recyclerView$LayoutParams.mViewHolder = recyclerView$ViewHolder;
            recyclerView$LayoutParams.mPendingInvalidate = z3 && zTryBindViewHolderByDeadline;
            return recyclerView$ViewHolder;
        }
        recycledView = null;
        z2 = false;
        if (recycledView == null) {
            if (validateViewHolderForOffsetPosition(recycledView)) {
            }
        }
        if (recycledView != null) {
        }
        z3 = z2;
        if (z3) {
            recyclerView$ViewHolder.setFlags(0, 8192);
            if (this.this$0.mState.mRunSimpleAnimations) {
            }
        }
        if (!this.this$0.mState.isPreLayout()) {
            if (recyclerView$ViewHolder.isBound()) {
            }
            zTryBindViewHolderByDeadline = tryBindViewHolderByDeadline(recyclerView$ViewHolder, this.this$0.mAdapterHelper.findPositionOffset(i), i, j);
        }
        layoutParams = recyclerView$ViewHolder.itemView.getLayoutParams();
        if (layoutParams == null) {
        }
        recyclerView$LayoutParams.mViewHolder = recyclerView$ViewHolder;
        recyclerView$LayoutParams.mPendingInvalidate = z3 && zTryBindViewHolderByDeadline;
        return recyclerView$ViewHolder;
    }

    private void attachAccessibilityDelegateOnBind(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        if (this.this$0.isAccessibilityEnabled()) {
            View view = recyclerView$ViewHolder.itemView;
            if (ViewCompat.getImportantForAccessibility(view) == 0) {
                ViewCompat.setImportantForAccessibility(view, 1);
            }
            if (ViewCompat.hasAccessibilityDelegate(view)) {
                return;
            }
            recyclerView$ViewHolder.addFlags(16384);
            ViewCompat.setAccessibilityDelegate(view, this.this$0.mAccessibilityDelegate.getItemDelegate());
        }
    }

    private void invalidateDisplayListInt(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        if (recyclerView$ViewHolder.itemView instanceof ViewGroup) {
            invalidateDisplayListInt((ViewGroup) recyclerView$ViewHolder.itemView, false);
        }
    }

    private void invalidateDisplayListInt(ViewGroup viewGroup, boolean z) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt instanceof ViewGroup) {
                invalidateDisplayListInt((ViewGroup) childAt, true);
            }
        }
        if (z) {
            if (viewGroup.getVisibility() == 4) {
                viewGroup.setVisibility(0);
                viewGroup.setVisibility(4);
            } else {
                int visibility = viewGroup.getVisibility();
                viewGroup.setVisibility(4);
                viewGroup.setVisibility(visibility);
            }
        }
    }

    public void recycleView(@NonNull View view) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt.isTmpDetached()) {
            this.this$0.removeDetachedView(view, false);
        }
        if (childViewHolderInt.isScrap()) {
            childViewHolderInt.unScrap();
        } else if (childViewHolderInt.wasReturnedFromScrap()) {
            childViewHolderInt.clearReturnedFromScrapFlag();
        }
        recycleViewHolderInternal(childViewHolderInt);
    }

    void recycleViewInternal(View view) {
        recycleViewHolderInternal(RecyclerView.getChildViewHolderInt(view));
    }

    void recycleAndClearCachedViews() {
        for (int size = this.mCachedViews.size() - 1; size >= 0; size--) {
            recycleCachedViewAt(size);
        }
        this.mCachedViews.clear();
        if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
            this.this$0.mPrefetchRegistry.clearPrefetchPositions();
        }
    }

    void recycleCachedViewAt(int i) {
        addViewHolderToRecycledViewPool(this.mCachedViews.get(i), true);
        this.mCachedViews.remove(i);
    }

    void recycleViewHolderInternal(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        boolean z;
        if (recyclerView$ViewHolder.isScrap() || recyclerView$ViewHolder.itemView.getParent() != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Scrapped or attached views may not be recycled. isScrap:");
            sb.append(recyclerView$ViewHolder.isScrap());
            sb.append(" isAttached:");
            sb.append(recyclerView$ViewHolder.itemView.getParent() != null);
            sb.append(this.this$0.exceptionLabel());
            throw new IllegalArgumentException(sb.toString());
        }
        if (recyclerView$ViewHolder.isTmpDetached()) {
            throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + recyclerView$ViewHolder + this.this$0.exceptionLabel());
        }
        if (recyclerView$ViewHolder.shouldIgnore()) {
            throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + this.this$0.exceptionLabel());
        }
        boolean zDoesTransientStatePreventRecycling = recyclerView$ViewHolder.doesTransientStatePreventRecycling();
        if ((this.this$0.mAdapter != null && zDoesTransientStatePreventRecycling && this.this$0.mAdapter.onFailedToRecycleView(recyclerView$ViewHolder)) || recyclerView$ViewHolder.isRecyclable()) {
            if (this.mViewCacheMax <= 0 || recyclerView$ViewHolder.hasAnyOfTheFlags(526)) {
                z = false;
            } else {
                int size = this.mCachedViews.size();
                if (size >= this.mViewCacheMax && size > 0) {
                    recycleCachedViewAt(0);
                    size--;
                }
                if (RecyclerView.ALLOW_THREAD_GAP_WORK && size > 0 && !this.this$0.mPrefetchRegistry.lastPrefetchIncludedPosition(recyclerView$ViewHolder.mPosition)) {
                    int i = size - 1;
                    while (i >= 0) {
                        if (!this.this$0.mPrefetchRegistry.lastPrefetchIncludedPosition(this.mCachedViews.get(i).mPosition)) {
                            break;
                        } else {
                            i--;
                        }
                    }
                    size = i + 1;
                }
                this.mCachedViews.add(size, recyclerView$ViewHolder);
                z = true;
            }
            if (!z) {
                addViewHolderToRecycledViewPool(recyclerView$ViewHolder, true);
                z = true;
            }
        } else {
            z = false;
        }
        this.this$0.mViewInfoStore.removeViewHolder(recyclerView$ViewHolder);
        if (z || z || !zDoesTransientStatePreventRecycling) {
            return;
        }
        recyclerView$ViewHolder.mOwnerRecyclerView = null;
    }

    void addViewHolderToRecycledViewPool(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, boolean z) {
        RecyclerView.clearNestedRecyclerViewIfNotNested(recyclerView$ViewHolder);
        if (recyclerView$ViewHolder.hasAnyOfTheFlags(16384)) {
            recyclerView$ViewHolder.setFlags(0, 16384);
            ViewCompat.setAccessibilityDelegate(recyclerView$ViewHolder.itemView, null);
        }
        if (z) {
            dispatchViewRecycled(recyclerView$ViewHolder);
        }
        recyclerView$ViewHolder.mOwnerRecyclerView = null;
        getRecycledViewPool().putRecycledView(recyclerView$ViewHolder);
    }

    void quickRecycleScrapView(View view) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        childViewHolderInt.mScrapContainer = null;
        childViewHolderInt.mInChangeScrap = false;
        childViewHolderInt.clearReturnedFromScrapFlag();
        recycleViewHolderInternal(childViewHolderInt);
    }

    void scrapView(View view) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt.hasAnyOfTheFlags(12) || !childViewHolderInt.isUpdated() || this.this$0.canReuseUpdatedViewHolder(childViewHolderInt)) {
            if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !this.this$0.mAdapter.hasStableIds()) {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + this.this$0.exceptionLabel());
            }
            childViewHolderInt.setScrapContainer(this, false);
            this.mAttachedScrap.add(childViewHolderInt);
            return;
        }
        if (this.mChangedScrap == null) {
            this.mChangedScrap = new ArrayList<>();
        }
        childViewHolderInt.setScrapContainer(this, true);
        this.mChangedScrap.add(childViewHolderInt);
    }

    void unscrapView(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        if (recyclerView$ViewHolder.mInChangeScrap) {
            this.mChangedScrap.remove(recyclerView$ViewHolder);
        } else {
            this.mAttachedScrap.remove(recyclerView$ViewHolder);
        }
        recyclerView$ViewHolder.mScrapContainer = null;
        recyclerView$ViewHolder.mInChangeScrap = false;
        recyclerView$ViewHolder.clearReturnedFromScrapFlag();
    }

    int getScrapCount() {
        return this.mAttachedScrap.size();
    }

    View getScrapViewAt(int i) {
        return this.mAttachedScrap.get(i).itemView;
    }

    void clearScrap() {
        this.mAttachedScrap.clear();
        if (this.mChangedScrap != null) {
            this.mChangedScrap.clear();
        }
    }

    RecyclerView$ViewHolder getChangedScrapViewForPosition(int i) {
        int size;
        int iFindPositionOffset;
        if (this.mChangedScrap == null || (size = this.mChangedScrap.size()) == 0) {
            return null;
        }
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView$ViewHolder recyclerView$ViewHolder = this.mChangedScrap.get(i2);
            if (!recyclerView$ViewHolder.wasReturnedFromScrap() && recyclerView$ViewHolder.getLayoutPosition() == i) {
                recyclerView$ViewHolder.addFlags(32);
                return recyclerView$ViewHolder;
            }
        }
        if (this.this$0.mAdapter.hasStableIds() && (iFindPositionOffset = this.this$0.mAdapterHelper.findPositionOffset(i)) > 0 && iFindPositionOffset < this.this$0.mAdapter.getItemCount()) {
            long itemId = this.this$0.mAdapter.getItemId(iFindPositionOffset);
            for (int i3 = 0; i3 < size; i3++) {
                RecyclerView$ViewHolder recyclerView$ViewHolder2 = this.mChangedScrap.get(i3);
                if (!recyclerView$ViewHolder2.wasReturnedFromScrap() && recyclerView$ViewHolder2.getItemId() == itemId) {
                    recyclerView$ViewHolder2.addFlags(32);
                    return recyclerView$ViewHolder2;
                }
            }
        }
        return null;
    }

    RecyclerView$ViewHolder getScrapOrHiddenOrCachedHolderForPosition(int i, boolean z) {
        View viewFindHiddenNonRemovedView;
        int size = this.mAttachedScrap.size();
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView$ViewHolder recyclerView$ViewHolder = this.mAttachedScrap.get(i2);
            if (!recyclerView$ViewHolder.wasReturnedFromScrap() && recyclerView$ViewHolder.getLayoutPosition() == i && !recyclerView$ViewHolder.isInvalid() && (this.this$0.mState.mInPreLayout || !recyclerView$ViewHolder.isRemoved())) {
                recyclerView$ViewHolder.addFlags(32);
                return recyclerView$ViewHolder;
            }
        }
        if (!z && (viewFindHiddenNonRemovedView = this.this$0.mChildHelper.findHiddenNonRemovedView(i)) != null) {
            RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(viewFindHiddenNonRemovedView);
            this.this$0.mChildHelper.unhide(viewFindHiddenNonRemovedView);
            int iIndexOfChild = this.this$0.mChildHelper.indexOfChild(viewFindHiddenNonRemovedView);
            if (iIndexOfChild == -1) {
                throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + childViewHolderInt + this.this$0.exceptionLabel());
            }
            this.this$0.mChildHelper.detachViewFromParent(iIndexOfChild);
            scrapView(viewFindHiddenNonRemovedView);
            childViewHolderInt.addFlags(8224);
            return childViewHolderInt;
        }
        int size2 = this.mCachedViews.size();
        for (int i3 = 0; i3 < size2; i3++) {
            RecyclerView$ViewHolder recyclerView$ViewHolder2 = this.mCachedViews.get(i3);
            if (!recyclerView$ViewHolder2.isInvalid() && recyclerView$ViewHolder2.getLayoutPosition() == i) {
                if (!z) {
                    this.mCachedViews.remove(i3);
                }
                return recyclerView$ViewHolder2;
            }
        }
        return null;
    }

    RecyclerView$ViewHolder getScrapOrCachedViewForId(long j, int i, boolean z) {
        for (int size = this.mAttachedScrap.size() - 1; size >= 0; size--) {
            RecyclerView$ViewHolder recyclerView$ViewHolder = this.mAttachedScrap.get(size);
            if (recyclerView$ViewHolder.getItemId() == j && !recyclerView$ViewHolder.wasReturnedFromScrap()) {
                if (i == recyclerView$ViewHolder.getItemViewType()) {
                    recyclerView$ViewHolder.addFlags(32);
                    if (recyclerView$ViewHolder.isRemoved() && !this.this$0.mState.isPreLayout()) {
                        recyclerView$ViewHolder.setFlags(2, 14);
                    }
                    return recyclerView$ViewHolder;
                }
                if (!z) {
                    this.mAttachedScrap.remove(size);
                    this.this$0.removeDetachedView(recyclerView$ViewHolder.itemView, false);
                    quickRecycleScrapView(recyclerView$ViewHolder.itemView);
                }
            }
        }
        int size2 = this.mCachedViews.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                return null;
            }
            RecyclerView$ViewHolder recyclerView$ViewHolder2 = this.mCachedViews.get(size2);
            if (recyclerView$ViewHolder2.getItemId() == j) {
                if (i == recyclerView$ViewHolder2.getItemViewType()) {
                    if (!z) {
                        this.mCachedViews.remove(size2);
                    }
                    return recyclerView$ViewHolder2;
                }
                if (!z) {
                    recycleCachedViewAt(size2);
                    return null;
                }
            }
        }
    }

    void dispatchViewRecycled(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        if (this.this$0.mRecyclerListener != null) {
            this.this$0.mRecyclerListener.onViewRecycled(recyclerView$ViewHolder);
        }
        if (this.this$0.mAdapter != null) {
            this.this$0.mAdapter.onViewRecycled(recyclerView$ViewHolder);
        }
        if (this.this$0.mState != null) {
            this.this$0.mViewInfoStore.removeViewHolder(recyclerView$ViewHolder);
        }
    }

    void onAdapterChanged(RecyclerView$Adapter recyclerView$Adapter, RecyclerView$Adapter recyclerView$Adapter2, boolean z) {
        clear();
        getRecycledViewPool().onAdapterChanged(recyclerView$Adapter, recyclerView$Adapter2, z);
    }

    void offsetPositionRecordsForMove(int i, int i2) {
        int i3;
        int i4;
        int i5;
        if (i < i2) {
            i3 = i2;
            i4 = -1;
            i5 = i;
        } else {
            i3 = i;
            i4 = 1;
            i5 = i2;
        }
        int size = this.mCachedViews.size();
        for (int i6 = 0; i6 < size; i6++) {
            RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCachedViews.get(i6);
            if (recyclerView$ViewHolder != null && recyclerView$ViewHolder.mPosition >= i5 && recyclerView$ViewHolder.mPosition <= i3) {
                if (recyclerView$ViewHolder.mPosition == i) {
                    recyclerView$ViewHolder.offsetPosition(i2 - i, false);
                } else {
                    recyclerView$ViewHolder.offsetPosition(i4, false);
                }
            }
        }
    }

    void offsetPositionRecordsForInsert(int i, int i2) {
        int size = this.mCachedViews.size();
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCachedViews.get(i3);
            if (recyclerView$ViewHolder != null && recyclerView$ViewHolder.mPosition >= i) {
                recyclerView$ViewHolder.offsetPosition(i2, true);
            }
        }
    }

    void offsetPositionRecordsForRemove(int i, int i2, boolean z) {
        int i3 = i + i2;
        for (int size = this.mCachedViews.size() - 1; size >= 0; size--) {
            RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCachedViews.get(size);
            if (recyclerView$ViewHolder != null) {
                if (recyclerView$ViewHolder.mPosition >= i3) {
                    recyclerView$ViewHolder.offsetPosition(-i2, z);
                } else if (recyclerView$ViewHolder.mPosition >= i) {
                    recyclerView$ViewHolder.addFlags(8);
                    recycleCachedViewAt(size);
                }
            }
        }
    }

    void setViewCacheExtension(RecyclerView$ViewCacheExtension recyclerView$ViewCacheExtension) {
        this.mViewCacheExtension = recyclerView$ViewCacheExtension;
    }

    void setRecycledViewPool(RecyclerView$RecycledViewPool recyclerView$RecycledViewPool) {
        if (this.mRecyclerPool != null) {
            this.mRecyclerPool.detach();
        }
        this.mRecyclerPool = recyclerView$RecycledViewPool;
        if (this.mRecyclerPool == null || this.this$0.getAdapter() == null) {
            return;
        }
        this.mRecyclerPool.attach();
    }

    RecyclerView$RecycledViewPool getRecycledViewPool() {
        if (this.mRecyclerPool == null) {
            this.mRecyclerPool = new RecyclerView$RecycledViewPool();
        }
        return this.mRecyclerPool;
    }

    void viewRangeUpdate(int i, int i2) {
        int i3;
        int i4 = i2 + i;
        for (int size = this.mCachedViews.size() - 1; size >= 0; size--) {
            RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCachedViews.get(size);
            if (recyclerView$ViewHolder != null && (i3 = recyclerView$ViewHolder.mPosition) >= i && i3 < i4) {
                recyclerView$ViewHolder.addFlags(2);
                recycleCachedViewAt(size);
            }
        }
    }

    void markKnownViewsInvalid() {
        int size = this.mCachedViews.size();
        for (int i = 0; i < size; i++) {
            RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCachedViews.get(i);
            if (recyclerView$ViewHolder != null) {
                recyclerView$ViewHolder.addFlags(6);
                recyclerView$ViewHolder.addChangePayload(null);
            }
        }
        if (this.this$0.mAdapter == null || !this.this$0.mAdapter.hasStableIds()) {
            recycleAndClearCachedViews();
        }
    }

    void clearOldPositions() {
        int size = this.mCachedViews.size();
        for (int i = 0; i < size; i++) {
            this.mCachedViews.get(i).clearOldPosition();
        }
        int size2 = this.mAttachedScrap.size();
        for (int i2 = 0; i2 < size2; i2++) {
            this.mAttachedScrap.get(i2).clearOldPosition();
        }
        if (this.mChangedScrap != null) {
            int size3 = this.mChangedScrap.size();
            for (int i3 = 0; i3 < size3; i3++) {
                this.mChangedScrap.get(i3).clearOldPosition();
            }
        }
    }

    void markItemDecorInsetsDirty() {
        int size = this.mCachedViews.size();
        for (int i = 0; i < size; i++) {
            RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) this.mCachedViews.get(i).itemView.getLayoutParams();
            if (recyclerView$LayoutParams != null) {
                recyclerView$LayoutParams.mInsetsDirty = true;
            }
        }
    }
}
