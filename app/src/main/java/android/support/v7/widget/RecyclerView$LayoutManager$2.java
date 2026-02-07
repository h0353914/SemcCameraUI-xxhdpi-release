package android.support.v7.widget;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class RecyclerView$LayoutManager$2 implements ViewBoundsCheck$Callback {
    final /* synthetic */ RecyclerView$LayoutManager this$0;

    RecyclerView$LayoutManager$2(RecyclerView$LayoutManager recyclerView$LayoutManager) {
        this.this$0 = recyclerView$LayoutManager;
    }

    @Override // android.support.v7.widget.ViewBoundsCheck$Callback
    public int getChildCount() {
        return this.this$0.getChildCount();
    }

    @Override // android.support.v7.widget.ViewBoundsCheck$Callback
    public View getParent() {
        return this.this$0.mRecyclerView;
    }

    @Override // android.support.v7.widget.ViewBoundsCheck$Callback
    public View getChildAt(int i) {
        return this.this$0.getChildAt(i);
    }

    @Override // android.support.v7.widget.ViewBoundsCheck$Callback
    public int getParentStart() {
        return this.this$0.getPaddingTop();
    }

    @Override // android.support.v7.widget.ViewBoundsCheck$Callback
    public int getParentEnd() {
        return this.this$0.getHeight() - this.this$0.getPaddingBottom();
    }

    @Override // android.support.v7.widget.ViewBoundsCheck$Callback
    public int getChildStart(View view) {
        return this.this$0.getDecoratedTop(view) - ((RecyclerView$LayoutParams) view.getLayoutParams()).topMargin;
    }

    @Override // android.support.v7.widget.ViewBoundsCheck$Callback
    public int getChildEnd(View view) {
        return this.this$0.getDecoratedBottom(view) + ((RecyclerView$LayoutParams) view.getLayoutParams()).bottomMargin;
    }
}
