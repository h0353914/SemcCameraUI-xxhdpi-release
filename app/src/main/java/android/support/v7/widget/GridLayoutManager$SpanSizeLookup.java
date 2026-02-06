package android.support.v7.widget;

import android.util.SparseIntArray;

public abstract class GridLayoutManager$SpanSizeLookup {
    final SparseIntArray mSpanIndexCache = new SparseIntArray();
    private boolean mCacheSpanIndices = false;

    public abstract int getSpanSize(int i);

    public void setSpanIndexCacheEnabled(boolean z) {
        this.mCacheSpanIndices = z;
    }

    public void invalidateSpanIndexCache() {
        this.mSpanIndexCache.clear();
    }

    public boolean isSpanIndexCacheEnabled() {
        return this.mCacheSpanIndices;
    }

    int getCachedSpanIndex(int i, int i2) {
        if (!this.mCacheSpanIndices) {
            return getSpanIndex(i, i2);
        }
        int i3 = this.mSpanIndexCache.get(i, -1);
        if (i3 != -1) {
            return i3;
        }
        int spanIndex = getSpanIndex(i, i2);
        this.mSpanIndexCache.put(i, spanIndex);
        return spanIndex;
    }

    public int getSpanIndex(int i, int i2) {
        int i3;
        int spanSize;
        int iFindReferenceIndexFromCache;
        int spanSize2 = getSpanSize(i);
        if (spanSize2 == i2) {
            return 0;
        }
        if (!this.mCacheSpanIndices || this.mSpanIndexCache.size() <= 0 || (iFindReferenceIndexFromCache = findReferenceIndexFromCache(i)) < 0) {
            i3 = 0;
            spanSize = 0;
        } else {
            spanSize = this.mSpanIndexCache.get(iFindReferenceIndexFromCache) + getSpanSize(iFindReferenceIndexFromCache);
            i3 = iFindReferenceIndexFromCache + 1;
        }
        while (i3 < i) {
            int spanSize3 = getSpanSize(i3);
            spanSize += spanSize3;
            if (spanSize == i2) {
                spanSize = 0;
            } else if (spanSize > i2) {
                spanSize = spanSize3;
            }
            i3++;
        }
        if (spanSize2 + spanSize <= i2) {
            return spanSize;
        }
        return 0;
    }

    int findReferenceIndexFromCache(int i) {
        int size = this.mSpanIndexCache.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            if (this.mSpanIndexCache.keyAt(i3) < i) {
                i2 = i3 + 1;
            } else {
                size = i3 - 1;
            }
        }
        int i4 = i2 - 1;
        if (i4 < 0 || i4 >= this.mSpanIndexCache.size()) {
            return -1;
        }
        return this.mSpanIndexCache.keyAt(i4);
    }

    public int getSpanGroupIndex(int i, int i2) {
        int spanSize = getSpanSize(i);
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            int spanSize2 = getSpanSize(i5);
            i3 += spanSize2;
            if (i3 == i2) {
                i4++;
                i3 = 0;
            } else if (i3 > i2) {
                i4++;
                i3 = spanSize2;
            }
        }
        return i3 + spanSize > i2 ? i4 + 1 : i4;
    }
}
