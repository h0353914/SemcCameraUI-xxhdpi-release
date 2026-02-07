package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class SimpleItemAnimator extends RecyclerView$ItemAnimator {
    private static final boolean DEBUG = false;
    private static final String TAG = "SimpleItemAnimator";
    boolean mSupportsChangeAnimations = true;

    public abstract boolean animateAdd(RecyclerView$ViewHolder recyclerView$ViewHolder);

    public abstract boolean animateChange(RecyclerView$ViewHolder recyclerView$ViewHolder, RecyclerView$ViewHolder recyclerView$ViewHolder2, int i, int i2, int i3, int i4);

    public abstract boolean animateMove(RecyclerView$ViewHolder recyclerView$ViewHolder, int i, int i2, int i3, int i4);

    public abstract boolean animateRemove(RecyclerView$ViewHolder recyclerView$ViewHolder);

    public void onAddFinished(RecyclerView$ViewHolder recyclerView$ViewHolder) {
    }

    public void onAddStarting(RecyclerView$ViewHolder recyclerView$ViewHolder) {
    }

    public void onChangeFinished(RecyclerView$ViewHolder recyclerView$ViewHolder, boolean z) {
    }

    public void onChangeStarting(RecyclerView$ViewHolder recyclerView$ViewHolder, boolean z) {
    }

    public void onMoveFinished(RecyclerView$ViewHolder recyclerView$ViewHolder) {
    }

    public void onMoveStarting(RecyclerView$ViewHolder recyclerView$ViewHolder) {
    }

    public void onRemoveFinished(RecyclerView$ViewHolder recyclerView$ViewHolder) {
    }

    public void onRemoveStarting(RecyclerView$ViewHolder recyclerView$ViewHolder) {
    }

    public boolean getSupportsChangeAnimations() {
        return this.mSupportsChangeAnimations;
    }

    public void setSupportsChangeAnimations(boolean z) {
        this.mSupportsChangeAnimations = z;
    }

    @Override // android.support.v7.widget.RecyclerView$ItemAnimator
    public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return !this.mSupportsChangeAnimations || recyclerView$ViewHolder.isInvalid();
    }

    @Override // android.support.v7.widget.RecyclerView$ItemAnimator
    public boolean animateDisappearance(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2) {
        int i = recyclerView$ItemAnimator$ItemHolderInfo.left;
        int i2 = recyclerView$ItemAnimator$ItemHolderInfo.top;
        View view = recyclerView$ViewHolder.itemView;
        int left = recyclerView$ItemAnimator$ItemHolderInfo2 == null ? view.getLeft() : recyclerView$ItemAnimator$ItemHolderInfo2.left;
        int top = recyclerView$ItemAnimator$ItemHolderInfo2 == null ? view.getTop() : recyclerView$ItemAnimator$ItemHolderInfo2.top;
        if (!recyclerView$ViewHolder.isRemoved() && (i != left || i2 != top)) {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            return animateMove(recyclerView$ViewHolder, i, i2, left, top);
        }
        return animateRemove(recyclerView$ViewHolder);
    }

    @Override // android.support.v7.widget.RecyclerView$ItemAnimator
    public boolean animateAppearance(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2) {
        if (recyclerView$ItemAnimator$ItemHolderInfo != null && (recyclerView$ItemAnimator$ItemHolderInfo.left != recyclerView$ItemAnimator$ItemHolderInfo2.left || recyclerView$ItemAnimator$ItemHolderInfo.top != recyclerView$ItemAnimator$ItemHolderInfo2.top)) {
            return animateMove(recyclerView$ViewHolder, recyclerView$ItemAnimator$ItemHolderInfo.left, recyclerView$ItemAnimator$ItemHolderInfo.top, recyclerView$ItemAnimator$ItemHolderInfo2.left, recyclerView$ItemAnimator$ItemHolderInfo2.top);
        }
        return animateAdd(recyclerView$ViewHolder);
    }

    @Override // android.support.v7.widget.RecyclerView$ItemAnimator
    public boolean animatePersistence(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2) {
        if (recyclerView$ItemAnimator$ItemHolderInfo.left != recyclerView$ItemAnimator$ItemHolderInfo2.left || recyclerView$ItemAnimator$ItemHolderInfo.top != recyclerView$ItemAnimator$ItemHolderInfo2.top) {
            return animateMove(recyclerView$ViewHolder, recyclerView$ItemAnimator$ItemHolderInfo.left, recyclerView$ItemAnimator$ItemHolderInfo.top, recyclerView$ItemAnimator$ItemHolderInfo2.left, recyclerView$ItemAnimator$ItemHolderInfo2.top);
        }
        dispatchMoveFinished(recyclerView$ViewHolder);
        return false;
    }

    @Override // android.support.v7.widget.RecyclerView$ItemAnimator
    public boolean animateChange(@NonNull RecyclerView$ViewHolder recyclerView$ViewHolder, @NonNull RecyclerView$ViewHolder recyclerView$ViewHolder2, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo2) {
        int i;
        int i2;
        int i3 = recyclerView$ItemAnimator$ItemHolderInfo.left;
        int i4 = recyclerView$ItemAnimator$ItemHolderInfo.top;
        if (recyclerView$ViewHolder2.shouldIgnore()) {
            int i5 = recyclerView$ItemAnimator$ItemHolderInfo.left;
            i2 = recyclerView$ItemAnimator$ItemHolderInfo.top;
            i = i5;
        } else {
            i = recyclerView$ItemAnimator$ItemHolderInfo2.left;
            i2 = recyclerView$ItemAnimator$ItemHolderInfo2.top;
        }
        return animateChange(recyclerView$ViewHolder, recyclerView$ViewHolder2, i3, i4, i, i2);
    }

    public final void dispatchRemoveFinished(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        onRemoveFinished(recyclerView$ViewHolder);
        dispatchAnimationFinished(recyclerView$ViewHolder);
    }

    public final void dispatchMoveFinished(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        onMoveFinished(recyclerView$ViewHolder);
        dispatchAnimationFinished(recyclerView$ViewHolder);
    }

    public final void dispatchAddFinished(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        onAddFinished(recyclerView$ViewHolder);
        dispatchAnimationFinished(recyclerView$ViewHolder);
    }

    public final void dispatchChangeFinished(RecyclerView$ViewHolder recyclerView$ViewHolder, boolean z) {
        onChangeFinished(recyclerView$ViewHolder, z);
        dispatchAnimationFinished(recyclerView$ViewHolder);
    }

    public final void dispatchRemoveStarting(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        onRemoveStarting(recyclerView$ViewHolder);
    }

    public final void dispatchMoveStarting(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        onMoveStarting(recyclerView$ViewHolder);
    }

    public final void dispatchAddStarting(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        onAddStarting(recyclerView$ViewHolder);
    }

    public final void dispatchChangeStarting(RecyclerView$ViewHolder recyclerView$ViewHolder, boolean z) {
        onChangeStarting(recyclerView$ViewHolder, z);
    }
}
