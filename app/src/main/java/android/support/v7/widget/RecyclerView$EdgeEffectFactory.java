package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.widget.EdgeEffect;

public class RecyclerView$EdgeEffectFactory {
    public static final int DIRECTION_BOTTOM = 3;
    public static final int DIRECTION_LEFT = 0;
    public static final int DIRECTION_RIGHT = 2;
    public static final int DIRECTION_TOP = 1;

    @NonNull
    protected EdgeEffect createEdgeEffect(@NonNull RecyclerView recyclerView, int i) {
        return new EdgeEffect(recyclerView.getContext());
    }
}
