package android.support.v7.widget;

import android.support.annotation.Nullable;

public abstract class RecyclerView$AdapterDataObserver {
    public void onChanged() {
    }

    public void onItemRangeChanged(int i, int i2) {
    }

    public void onItemRangeInserted(int i, int i2) {
    }

    public void onItemRangeMoved(int i, int i2, int i3) {
    }

    public void onItemRangeRemoved(int i, int i2) {
    }

    public void onItemRangeChanged(int i, int i2, @Nullable Object obj) {
        onItemRangeChanged(i, i2);
    }
}
