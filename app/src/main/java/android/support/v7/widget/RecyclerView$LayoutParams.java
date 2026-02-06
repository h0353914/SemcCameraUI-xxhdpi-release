package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;

public class RecyclerView$LayoutParams extends ViewGroup$MarginLayoutParams {
    final Rect mDecorInsets;
    boolean mInsetsDirty;
    boolean mPendingInvalidate;
    RecyclerView$ViewHolder mViewHolder;

    public RecyclerView$LayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDecorInsets = new Rect();
        this.mInsetsDirty = true;
        this.mPendingInvalidate = false;
    }

    public RecyclerView$LayoutParams(int i, int i2) {
        super(i, i2);
        this.mDecorInsets = new Rect();
        this.mInsetsDirty = true;
        this.mPendingInvalidate = false;
    }

    public RecyclerView$LayoutParams(ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        super(viewGroup$MarginLayoutParams);
        this.mDecorInsets = new Rect();
        this.mInsetsDirty = true;
        this.mPendingInvalidate = false;
    }

    public RecyclerView$LayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super(viewGroup$LayoutParams);
        this.mDecorInsets = new Rect();
        this.mInsetsDirty = true;
        this.mPendingInvalidate = false;
    }

    public RecyclerView$LayoutParams(RecyclerView$LayoutParams recyclerView$LayoutParams) {
        super((ViewGroup$LayoutParams) recyclerView$LayoutParams);
        this.mDecorInsets = new Rect();
        this.mInsetsDirty = true;
        this.mPendingInvalidate = false;
    }

    public boolean viewNeedsUpdate() {
        return this.mViewHolder.needsUpdate();
    }

    public boolean isViewInvalid() {
        return this.mViewHolder.isInvalid();
    }

    public boolean isItemRemoved() {
        return this.mViewHolder.isRemoved();
    }

    public boolean isItemChanged() {
        return this.mViewHolder.isUpdated();
    }

    @Deprecated
    public int getViewPosition() {
        return this.mViewHolder.getPosition();
    }

    public int getViewLayoutPosition() {
        return this.mViewHolder.getLayoutPosition();
    }

    public int getViewAdapterPosition() {
        return this.mViewHolder.getAdapterPosition();
    }
}
