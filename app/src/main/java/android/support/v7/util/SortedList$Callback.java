package android.support.v7.util;

import android.support.annotation.Nullable;
import java.util.Comparator;

public abstract class SortedList$Callback<T2> implements Comparator<T2>, ListUpdateCallback {
    public abstract boolean areContentsTheSame(T2 t2, T2 t22);

    public abstract boolean areItemsTheSame(T2 t2, T2 t22);

    @Override // java.util.Comparator
    public abstract int compare(T2 t2, T2 t22);

    @Nullable
    public Object getChangePayload(T2 t2, T2 t22) {
        return null;
    }

    public abstract void onChanged(int i, int i2);

    public void onChanged(int i, int i2, Object obj) {
        onChanged(i, i2);
    }
}
