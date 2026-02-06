package android.support.v7.util;

import java.lang.reflect.Array;

public class TileList$Tile<T> {
    public int mItemCount;
    public final T[] mItems;
    TileList$Tile<T> mNext;
    public int mStartPosition;

    public TileList$Tile(Class<T> cls, int i) {
        this.mItems = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i));
    }

    boolean containsPosition(int i) {
        return this.mStartPosition <= i && i < this.mStartPosition + this.mItemCount;
    }

    T getByPosition(int i) {
        return this.mItems[i - this.mStartPosition];
    }
}
