package android.support.v7.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.view.View;

public abstract class RecyclerView$ItemDecoration {
    @Deprecated
    public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
    }

    @Deprecated
    public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
    }

    public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView$State recyclerView$State) {
        onDraw(canvas, recyclerView);
    }

    public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView$State recyclerView$State) {
        onDrawOver(canvas, recyclerView);
    }

    @Deprecated
    public void getItemOffsets(@NonNull Rect rect, int i, @NonNull RecyclerView recyclerView) {
        rect.set(0, 0, 0, 0);
    }

    public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView$State recyclerView$State) {
        getItemOffsets(rect, ((RecyclerView$LayoutParams) view.getLayoutParams()).getViewLayoutPosition(), recyclerView);
    }
}
