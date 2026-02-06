package android.support.v7.widget;

import android.view.View;

class RecyclerView$LayoutManager$1 implements ViewBoundsCheck$Callback {
    final /* synthetic */ RecyclerView$LayoutManager this$0;

    RecyclerView$LayoutManager$1(RecyclerView$LayoutManager recyclerView$LayoutManager) {
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
        return this.this$0.getPaddingLeft();
    }

    @Override // android.support.v7.widget.ViewBoundsCheck$Callback
    public int getParentEnd() {
        return this.this$0.getWidth() - this.this$0.getPaddingRight();
    }

    @Override // android.support.v7.widget.ViewBoundsCheck$Callback
    public int getChildStart(View view) {
        return this.this$0.getDecoratedLeft(view) - ((RecyclerView$LayoutParams) view.getLayoutParams()).leftMargin;
    }

    @Override // android.support.v7.widget.ViewBoundsCheck$Callback
    public int getChildEnd(View view) {
        return this.this$0.getDecoratedRight(view) + ((RecyclerView$LayoutParams) view.getLayoutParams()).rightMargin;
    }
}
