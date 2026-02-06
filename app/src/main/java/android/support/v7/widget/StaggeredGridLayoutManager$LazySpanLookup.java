package android.support.v7.widget;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

class StaggeredGridLayoutManager$LazySpanLookup {
    private static final int MIN_SIZE = 10;
    int[] mData;
    List<StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> mFullSpanItems;

    StaggeredGridLayoutManager$LazySpanLookup() {
    }

    int forceInvalidateAfter(int i) {
        if (this.mFullSpanItems != null) {
            for (int size = this.mFullSpanItems.size() - 1; size >= 0; size--) {
                if (this.mFullSpanItems.get(size).mPosition >= i) {
                    this.mFullSpanItems.remove(size);
                }
            }
        }
        return invalidateAfter(i);
    }

    int invalidateAfter(int i) {
        if (this.mData == null || i >= this.mData.length) {
            return -1;
        }
        int iInvalidateFullSpansAfter = invalidateFullSpansAfter(i);
        if (iInvalidateFullSpansAfter == -1) {
            Arrays.fill(this.mData, i, this.mData.length, -1);
            return this.mData.length;
        }
        int i2 = iInvalidateFullSpansAfter + 1;
        Arrays.fill(this.mData, i, i2, -1);
        return i2;
    }

    int getSpan(int i) {
        if (this.mData == null || i >= this.mData.length) {
            return -1;
        }
        return this.mData[i];
    }

    void setSpan(int i, StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span) {
        ensureSize(i);
        this.mData[i] = staggeredGridLayoutManager$Span.mIndex;
    }

    int sizeForPosition(int i) {
        int length = this.mData.length;
        while (length <= i) {
            length *= 2;
        }
        return length;
    }

    void ensureSize(int i) {
        if (this.mData == null) {
            this.mData = new int[Math.max(i, 10) + 1];
            Arrays.fill(this.mData, -1);
        } else if (i >= this.mData.length) {
            int[] iArr = this.mData;
            this.mData = new int[sizeForPosition(i)];
            System.arraycopy(iArr, 0, this.mData, 0, iArr.length);
            Arrays.fill(this.mData, iArr.length, this.mData.length, -1);
        }
    }

    void clear() {
        if (this.mData != null) {
            Arrays.fill(this.mData, -1);
        }
        this.mFullSpanItems = null;
    }

    void offsetForRemoval(int i, int i2) {
        if (this.mData == null || i >= this.mData.length) {
            return;
        }
        int i3 = i + i2;
        ensureSize(i3);
        System.arraycopy(this.mData, i3, this.mData, i, (this.mData.length - i) - i2);
        Arrays.fill(this.mData, this.mData.length - i2, this.mData.length, -1);
        offsetFullSpansForRemoval(i, i2);
    }

    private void offsetFullSpansForRemoval(int i, int i2) {
        if (this.mFullSpanItems == null) {
            return;
        }
        int i3 = i + i2;
        for (int size = this.mFullSpanItems.size() - 1; size >= 0; size--) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = this.mFullSpanItems.get(size);
            if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition >= i) {
                if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition < i3) {
                    this.mFullSpanItems.remove(size);
                } else {
                    staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition -= i2;
                }
            }
        }
    }

    void offsetForAddition(int i, int i2) {
        if (this.mData == null || i >= this.mData.length) {
            return;
        }
        int i3 = i + i2;
        ensureSize(i3);
        System.arraycopy(this.mData, i, this.mData, i3, (this.mData.length - i) - i2);
        Arrays.fill(this.mData, i, i3, -1);
        offsetFullSpansForAddition(i, i2);
    }

    private void offsetFullSpansForAddition(int i, int i2) {
        if (this.mFullSpanItems == null) {
            return;
        }
        for (int size = this.mFullSpanItems.size() - 1; size >= 0; size--) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = this.mFullSpanItems.get(size);
            if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition >= i) {
                staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition += i2;
            }
        }
    }

    private int invalidateFullSpansAfter(int i) {
        if (this.mFullSpanItems == null) {
            return -1;
        }
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem fullSpanItem = getFullSpanItem(i);
        if (fullSpanItem != null) {
            this.mFullSpanItems.remove(fullSpanItem);
        }
        int size = this.mFullSpanItems.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            }
            if (this.mFullSpanItems.get(i2).mPosition >= i) {
                break;
            }
            i2++;
        }
        if (i2 == -1) {
            return -1;
        }
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = this.mFullSpanItems.get(i2);
        this.mFullSpanItems.remove(i2);
        return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition;
    }

    public void addFullSpanItem(StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem) {
        if (this.mFullSpanItems == null) {
            this.mFullSpanItems = new ArrayList();
        }
        int size = this.mFullSpanItems.size();
        for (int i = 0; i < size; i++) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem2 = this.mFullSpanItems.get(i);
            if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem2.mPosition == staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition) {
                this.mFullSpanItems.remove(i);
            }
            if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem2.mPosition >= staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition) {
                this.mFullSpanItems.add(i, staggeredGridLayoutManager$LazySpanLookup$FullSpanItem);
                return;
            }
        }
        this.mFullSpanItems.add(staggeredGridLayoutManager$LazySpanLookup$FullSpanItem);
    }

    public StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem getFullSpanItem(int i) {
        if (this.mFullSpanItems == null) {
            return null;
        }
        for (int size = this.mFullSpanItems.size() - 1; size >= 0; size--) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = this.mFullSpanItems.get(size);
            if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition == i) {
                return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
            }
        }
        return null;
    }

    public StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem getFirstFullSpanItemInRange(int i, int i2, int i3, boolean z) {
        if (this.mFullSpanItems == null) {
            return null;
        }
        int size = this.mFullSpanItems.size();
        for (int i4 = 0; i4 < size; i4++) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = this.mFullSpanItems.get(i4);
            if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition >= i2) {
                return null;
            }
            if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition >= i && (i3 == 0 || staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapDir == i3 || (z && staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mHasUnwantedGapAfter))) {
                return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
            }
        }
        return null;
    }
}
