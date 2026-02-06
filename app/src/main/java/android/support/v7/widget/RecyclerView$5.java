package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup$LayoutParams;

class RecyclerView$5 implements ChildHelper$Callback {
    final /* synthetic */ RecyclerView this$0;

    RecyclerView$5(RecyclerView recyclerView) {
        this.this$0 = recyclerView;
    }

    @Override // android.support.v7.widget.ChildHelper$Callback
    public int getChildCount() {
        return this.this$0.getChildCount();
    }

    @Override // android.support.v7.widget.ChildHelper$Callback
    public void addView(View view, int i) {
        this.this$0.addView(view, i);
        this.this$0.dispatchChildAttached(view);
    }

    @Override // android.support.v7.widget.ChildHelper$Callback
    public int indexOfChild(View view) {
        return this.this$0.indexOfChild(view);
    }

    @Override // android.support.v7.widget.ChildHelper$Callback
    public void removeViewAt(int i) {
        View childAt = this.this$0.getChildAt(i);
        if (childAt != null) {
            this.this$0.dispatchChildDetached(childAt);
            childAt.clearAnimation();
        }
        this.this$0.removeViewAt(i);
    }

    @Override // android.support.v7.widget.ChildHelper$Callback
    public View getChildAt(int i) {
        return this.this$0.getChildAt(i);
    }

    @Override // android.support.v7.widget.ChildHelper$Callback
    public void removeAllViews() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            this.this$0.dispatchChildDetached(childAt);
            childAt.clearAnimation();
        }
        this.this$0.removeAllViews();
    }

    @Override // android.support.v7.widget.ChildHelper$Callback
    public RecyclerView$ViewHolder getChildViewHolder(View view) {
        return RecyclerView.getChildViewHolderInt(view);
    }

    @Override // android.support.v7.widget.ChildHelper$Callback
    public void attachViewToParent(View view, int i, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                throw new IllegalArgumentException("Called attach on a child which is not detached: " + childViewHolderInt + this.this$0.exceptionLabel());
            }
            childViewHolderInt.clearTmpDetachFlag();
        }
        RecyclerView.access$000(this.this$0, view, i, viewGroup$LayoutParams);
    }

    @Override // android.support.v7.widget.ChildHelper$Callback
    public void detachViewFromParent(int i) {
        RecyclerView$ViewHolder childViewHolderInt;
        View childAt = getChildAt(i);
        if (childAt != null && (childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt)) != null) {
            if (childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                throw new IllegalArgumentException("called detach on an already detached child " + childViewHolderInt + this.this$0.exceptionLabel());
            }
            childViewHolderInt.addFlags(256);
        }
        RecyclerView.access$100(this.this$0, i);
    }

    @Override // android.support.v7.widget.ChildHelper$Callback
    public void onEnteredHiddenState(View view) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            childViewHolderInt.onEnteredHiddenState(this.this$0);
        }
    }

    @Override // android.support.v7.widget.ChildHelper$Callback
    public void onLeftHiddenState(View view) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            childViewHolderInt.onLeftHiddenState(this.this$0);
        }
    }
}
