package android.support.v7.util;

import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.support.v7.widget.RecyclerView$Adapter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class DiffUtil$DiffResult {
    private static final int FLAG_CHANGED = 2;
    private static final int FLAG_IGNORE = 16;
    private static final int FLAG_MASK = 31;
    private static final int FLAG_MOVED_CHANGED = 4;
    private static final int FLAG_MOVED_NOT_CHANGED = 8;
    private static final int FLAG_NOT_CHANGED = 1;
    private static final int FLAG_OFFSET = 5;
    public static final int NO_POSITION = -1;
    private final DiffUtil$Callback mCallback;
    private final boolean mDetectMoves;
    private final int[] mNewItemStatuses;
    private final int mNewListSize;
    private final int[] mOldItemStatuses;
    private final int mOldListSize;
    private final List<DiffUtil$Snake> mSnakes;

    DiffUtil$DiffResult(DiffUtil$Callback diffUtil$Callback, List<DiffUtil$Snake> list, int[] iArr, int[] iArr2, boolean z) {
        this.mSnakes = list;
        this.mOldItemStatuses = iArr;
        this.mNewItemStatuses = iArr2;
        Arrays.fill(this.mOldItemStatuses, 0);
        Arrays.fill(this.mNewItemStatuses, 0);
        this.mCallback = diffUtil$Callback;
        this.mOldListSize = diffUtil$Callback.getOldListSize();
        this.mNewListSize = diffUtil$Callback.getNewListSize();
        this.mDetectMoves = z;
        addRootSnake();
        findMatchingItems();
    }

    private void addRootSnake() {
        DiffUtil$Snake diffUtil$Snake = this.mSnakes.isEmpty() ? null : this.mSnakes.get(0);
        if (diffUtil$Snake != null && diffUtil$Snake.x == 0 && diffUtil$Snake.y == 0) {
            return;
        }
        DiffUtil$Snake diffUtil$Snake2 = new DiffUtil$Snake();
        diffUtil$Snake2.x = 0;
        diffUtil$Snake2.y = 0;
        diffUtil$Snake2.removal = false;
        diffUtil$Snake2.size = 0;
        diffUtil$Snake2.reverse = false;
        this.mSnakes.add(0, diffUtil$Snake2);
    }

    private void findMatchingItems() {
        int i = this.mOldListSize;
        int i2 = this.mNewListSize;
        for (int size = this.mSnakes.size() - 1; size >= 0; size--) {
            DiffUtil$Snake diffUtil$Snake = this.mSnakes.get(size);
            int i3 = diffUtil$Snake.x + diffUtil$Snake.size;
            int i4 = diffUtil$Snake.y + diffUtil$Snake.size;
            if (this.mDetectMoves) {
                while (i > i3) {
                    findAddition(i, i2, size);
                    i--;
                }
                while (i2 > i4) {
                    findRemoval(i, i2, size);
                    i2--;
                }
            }
            for (int i5 = 0; i5 < diffUtil$Snake.size; i5++) {
                int i6 = diffUtil$Snake.x + i5;
                int i7 = diffUtil$Snake.y + i5;
                int i8 = this.mCallback.areContentsTheSame(i6, i7) ? 1 : 2;
                this.mOldItemStatuses[i6] = (i7 << 5) | i8;
                this.mNewItemStatuses[i7] = (i6 << 5) | i8;
            }
            i = diffUtil$Snake.x;
            i2 = diffUtil$Snake.y;
        }
    }

    private void findAddition(int i, int i2, int i3) {
        if (this.mOldItemStatuses[i - 1] != 0) {
            return;
        }
        findMatchingItem(i, i2, i3, false);
    }

    private void findRemoval(int i, int i2, int i3) {
        if (this.mNewItemStatuses[i2 - 1] != 0) {
            return;
        }
        findMatchingItem(i, i2, i3, true);
    }

    public int convertOldPositionToNew(@IntRange(from = 0) int i) {
        if (i < 0 || i >= this.mOldItemStatuses.length) {
            throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + i + ", old list size = " + this.mOldItemStatuses.length);
        }
        int i2 = this.mOldItemStatuses[i];
        if ((i2 & 31) == 0) {
            return -1;
        }
        return i2 >> 5;
    }

    public int convertNewPositionToOld(@IntRange(from = 0) int i) {
        if (i < 0 || i >= this.mNewItemStatuses.length) {
            throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + i + ", new list size = " + this.mNewItemStatuses.length);
        }
        int i2 = this.mNewItemStatuses[i];
        if ((i2 & 31) == 0) {
            return -1;
        }
        return i2 >> 5;
    }

    private boolean findMatchingItem(int i, int i2, int i3, boolean z) {
        int i4;
        int i5;
        int i6;
        if (z) {
            i2--;
            i4 = i;
            i5 = i2;
        } else {
            i4 = i - 1;
            i5 = i4;
        }
        while (i3 >= 0) {
            DiffUtil$Snake diffUtil$Snake = this.mSnakes.get(i3);
            int i7 = diffUtil$Snake.x + diffUtil$Snake.size;
            int i8 = diffUtil$Snake.y + diffUtil$Snake.size;
            if (z) {
                for (int i9 = i4 - 1; i9 >= i7; i9--) {
                    if (this.mCallback.areItemsTheSame(i9, i5)) {
                        i6 = this.mCallback.areContentsTheSame(i9, i5) ? 8 : 4;
                        this.mNewItemStatuses[i5] = (i9 << 5) | 16;
                        this.mOldItemStatuses[i9] = (i5 << 5) | i6;
                        return true;
                    }
                }
            } else {
                for (int i10 = i2 - 1; i10 >= i8; i10--) {
                    if (this.mCallback.areItemsTheSame(i5, i10)) {
                        i6 = this.mCallback.areContentsTheSame(i5, i10) ? 8 : 4;
                        int i11 = i - 1;
                        this.mOldItemStatuses[i11] = (i10 << 5) | 16;
                        this.mNewItemStatuses[i10] = (i11 << 5) | i6;
                        return true;
                    }
                }
            }
            i4 = diffUtil$Snake.x;
            i2 = diffUtil$Snake.y;
            i3--;
        }
        return false;
    }

    public void dispatchUpdatesTo(@NonNull RecyclerView$Adapter recyclerView$Adapter) {
        dispatchUpdatesTo(new AdapterListUpdateCallback(recyclerView$Adapter));
    }

    public void dispatchUpdatesTo(@NonNull ListUpdateCallback listUpdateCallback) {
        BatchingListUpdateCallback batchingListUpdateCallback;
        if (listUpdateCallback instanceof BatchingListUpdateCallback) {
            batchingListUpdateCallback = (BatchingListUpdateCallback) listUpdateCallback;
        } else {
            batchingListUpdateCallback = new BatchingListUpdateCallback(listUpdateCallback);
        }
        List<DiffUtil$PostponedUpdate> arrayList = new ArrayList<>();
        int i = this.mOldListSize;
        int i2 = this.mNewListSize;
        for (int size = this.mSnakes.size() - 1; size >= 0; size--) {
            DiffUtil$Snake diffUtil$Snake = this.mSnakes.get(size);
            int i3 = diffUtil$Snake.size;
            int i4 = diffUtil$Snake.x + i3;
            int i5 = diffUtil$Snake.y + i3;
            if (i4 < i) {
                dispatchRemovals(arrayList, batchingListUpdateCallback, i4, i - i4, i4);
            }
            if (i5 < i2) {
                dispatchAdditions(arrayList, batchingListUpdateCallback, i4, i2 - i5, i5);
            }
            for (int i6 = i3 - 1; i6 >= 0; i6--) {
                if ((this.mOldItemStatuses[diffUtil$Snake.x + i6] & 31) == 2) {
                    batchingListUpdateCallback.onChanged(diffUtil$Snake.x + i6, 1, this.mCallback.getChangePayload(diffUtil$Snake.x + i6, diffUtil$Snake.y + i6));
                }
            }
            i = diffUtil$Snake.x;
            i2 = diffUtil$Snake.y;
        }
        batchingListUpdateCallback.dispatchLastEvent();
    }

    private static DiffUtil$PostponedUpdate removePostponedUpdate(List<DiffUtil$PostponedUpdate> list, int i, boolean z) {
        int size = list.size() - 1;
        while (size >= 0) {
            DiffUtil$PostponedUpdate diffUtil$PostponedUpdate = list.get(size);
            if (diffUtil$PostponedUpdate.posInOwnerList == i && diffUtil$PostponedUpdate.removal == z) {
                list.remove(size);
                while (size < list.size()) {
                    list.get(size).currentPos += z ? 1 : -1;
                    size++;
                }
                return diffUtil$PostponedUpdate;
            }
            size--;
        }
        return null;
    }

    private void dispatchAdditions(List<DiffUtil$PostponedUpdate> list, ListUpdateCallback listUpdateCallback, int i, int i2, int i3) {
        if (!this.mDetectMoves) {
            listUpdateCallback.onInserted(i, i2);
            return;
        }
        for (int i4 = i2 - 1; i4 >= 0; i4--) {
            int i5 = i3 + i4;
            int i6 = this.mNewItemStatuses[i5] & 31;
            if (i6 == 0) {
                listUpdateCallback.onInserted(i, 1);
                Iterator<DiffUtil$PostponedUpdate> it = list.iterator();
                while (it.hasNext()) {
                    it.next().currentPos++;
                }
            } else if (i6 == 4 || i6 == 8) {
                int i7 = this.mNewItemStatuses[i5] >> 5;
                listUpdateCallback.onMoved(removePostponedUpdate(list, i7, true).currentPos, i);
                if (i6 == 4) {
                    listUpdateCallback.onChanged(i, 1, this.mCallback.getChangePayload(i7, i5));
                }
            } else if (i6 == 16) {
                list.add(new DiffUtil$PostponedUpdate(i5, i, false));
            } else {
                throw new IllegalStateException("unknown flag for pos " + i5 + " " + Long.toBinaryString(i6));
            }
        }
    }

    private void dispatchRemovals(List<DiffUtil$PostponedUpdate> list, ListUpdateCallback listUpdateCallback, int i, int i2, int i3) {
        if (!this.mDetectMoves) {
            listUpdateCallback.onRemoved(i, i2);
            return;
        }
        for (int i4 = i2 - 1; i4 >= 0; i4--) {
            int i5 = i3 + i4;
            int i6 = this.mOldItemStatuses[i5] & 31;
            if (i6 == 0) {
                listUpdateCallback.onRemoved(i + i4, 1);
                Iterator<DiffUtil$PostponedUpdate> it = list.iterator();
                while (it.hasNext()) {
                    it.next().currentPos--;
                }
            } else if (i6 == 4 || i6 == 8) {
                int i7 = this.mOldItemStatuses[i5] >> 5;
                DiffUtil$PostponedUpdate diffUtil$PostponedUpdateRemovePostponedUpdate = removePostponedUpdate(list, i7, false);
                listUpdateCallback.onMoved(i + i4, diffUtil$PostponedUpdateRemovePostponedUpdate.currentPos - 1);
                if (i6 == 4) {
                    listUpdateCallback.onChanged(diffUtil$PostponedUpdateRemovePostponedUpdate.currentPos - 1, 1, this.mCallback.getChangePayload(i5, i7));
                }
            } else if (i6 == 16) {
                list.add(new DiffUtil$PostponedUpdate(i5, i + i4, true));
            } else {
                throw new IllegalStateException("unknown flag for pos " + i5 + " " + Long.toBinaryString(i6));
            }
        }
    }

    @VisibleForTesting
    List<DiffUtil$Snake> getSnakes() {
        return this.mSnakes;
    }
}
