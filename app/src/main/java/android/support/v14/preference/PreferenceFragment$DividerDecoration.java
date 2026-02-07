package android.support.v14.preference;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.preference.PreferenceViewHolder;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView$ItemDecoration;
import android.support.v7.widget.RecyclerView$State;
import android.support.v7.widget.RecyclerView$ViewHolder;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class PreferenceFragment$DividerDecoration extends RecyclerView$ItemDecoration {
    private boolean mAllowDividerAfterLastItem = true;
    private Drawable mDivider;
    private int mDividerHeight;
    final /* synthetic */ PreferenceFragment this$0;

    PreferenceFragment$DividerDecoration(PreferenceFragment preferenceFragment) {
        this.this$0 = preferenceFragment;
    }

    @Override // android.support.v7.widget.RecyclerView$ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView$State recyclerView$State) {
        if (this.mDivider == null) {
            return;
        }
        int childCount = recyclerView.getChildCount();
        int width = recyclerView.getWidth();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            if (shouldDrawDividerBelow(childAt, recyclerView)) {
                int y = ((int) childAt.getY()) + childAt.getHeight();
                this.mDivider.setBounds(0, y, width, this.mDividerHeight + y);
                this.mDivider.draw(canvas);
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView$ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView$State recyclerView$State) {
        if (shouldDrawDividerBelow(view, recyclerView)) {
            rect.bottom = this.mDividerHeight;
        }
    }

    private boolean shouldDrawDividerBelow(View view, RecyclerView recyclerView) {
        RecyclerView$ViewHolder childViewHolder = recyclerView.getChildViewHolder(view);
        if (!((childViewHolder instanceof PreferenceViewHolder) && ((PreferenceViewHolder) childViewHolder).isDividerAllowedBelow())) {
            return false;
        }
        boolean z = this.mAllowDividerAfterLastItem;
        int iIndexOfChild = recyclerView.indexOfChild(view);
        if (iIndexOfChild >= recyclerView.getChildCount() - 1) {
            return z;
        }
        RecyclerView$ViewHolder childViewHolder2 = recyclerView.getChildViewHolder(recyclerView.getChildAt(iIndexOfChild + 1));
        return (childViewHolder2 instanceof PreferenceViewHolder) && ((PreferenceViewHolder) childViewHolder2).isDividerAllowedAbove();
    }

    public void setDivider(Drawable drawable) {
        if (drawable != null) {
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerHeight = 0;
        }
        this.mDivider = drawable;
        this.this$0.mList.invalidateItemDecorations();
    }

    public void setDividerHeight(int i) {
        this.mDividerHeight = i;
        this.this$0.mList.invalidateItemDecorations();
    }

    public void setAllowDividerAfterLastItem(boolean z) {
        this.mAllowDividerAfterLastItem = z;
    }
}
