package android.support.v4.widget;

import android.graphics.Rect;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class FocusStrategy$SequentialComparator<T> implements Comparator<T> {
    private final FocusStrategy$BoundsAdapter<T> mAdapter;
    private final boolean mIsLayoutRtl;
    private final Rect mTemp1 = new Rect();
    private final Rect mTemp2 = new Rect();

    FocusStrategy$SequentialComparator(boolean z, FocusStrategy$BoundsAdapter<T> focusStrategy$BoundsAdapter) {
        this.mIsLayoutRtl = z;
        this.mAdapter = focusStrategy$BoundsAdapter;
    }

    @Override // java.util.Comparator
    public int compare(T t, T t2) {
        Rect rect = this.mTemp1;
        Rect rect2 = this.mTemp2;
        this.mAdapter.obtainBounds(t, rect);
        this.mAdapter.obtainBounds(t2, rect2);
        if (rect.top < rect2.top) {
            return -1;
        }
        if (rect.top > rect2.top) {
            return 1;
        }
        if (rect.left < rect2.left) {
            return this.mIsLayoutRtl ? 1 : -1;
        }
        if (rect.left > rect2.left) {
            return this.mIsLayoutRtl ? -1 : 1;
        }
        if (rect.bottom < rect2.bottom) {
            return -1;
        }
        if (rect.bottom > rect2.bottom) {
            return 1;
        }
        if (rect.right < rect2.right) {
            return this.mIsLayoutRtl ? 1 : -1;
        }
        if (rect.right > rect2.right) {
            return this.mIsLayoutRtl ? -1 : 1;
        }
        return 0;
    }
}
