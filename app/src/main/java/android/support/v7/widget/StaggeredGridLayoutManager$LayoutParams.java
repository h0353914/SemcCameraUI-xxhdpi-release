package android.support.v7.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;

/* JADX INFO: loaded from: classes.dex */
public class StaggeredGridLayoutManager$LayoutParams extends RecyclerView$LayoutParams {
    public static final int INVALID_SPAN_ID = -1;
    boolean mFullSpan;
    StaggeredGridLayoutManager$Span mSpan;

    public StaggeredGridLayoutManager$LayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public StaggeredGridLayoutManager$LayoutParams(int i, int i2) {
        super(i, i2);
    }

    public StaggeredGridLayoutManager$LayoutParams(ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        super(viewGroup$MarginLayoutParams);
    }

    public StaggeredGridLayoutManager$LayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super(viewGroup$LayoutParams);
    }

    public StaggeredGridLayoutManager$LayoutParams(RecyclerView$LayoutParams recyclerView$LayoutParams) {
        super(recyclerView$LayoutParams);
    }

    public void setFullSpan(boolean z) {
        this.mFullSpan = z;
    }

    public boolean isFullSpan() {
        return this.mFullSpan;
    }

    public final int getSpanIndex() {
        if (this.mSpan == null) {
            return -1;
        }
        return this.mSpan.mIndex;
    }
}
