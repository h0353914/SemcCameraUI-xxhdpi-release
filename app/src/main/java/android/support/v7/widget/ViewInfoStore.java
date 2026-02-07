package android.support.v7.widget;

import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;

/* JADX INFO: loaded from: classes.dex */
class ViewInfoStore {
    private static final boolean DEBUG = false;

    @VisibleForTesting
    final ArrayMap<RecyclerView$ViewHolder, ViewInfoStore$InfoRecord> mLayoutHolderMap = new ArrayMap<>();

    @VisibleForTesting
    final LongSparseArray<RecyclerView$ViewHolder> mOldChangedHolders = new LongSparseArray<>();

    ViewInfoStore() {
    }

    void clear() {
        this.mLayoutHolderMap.clear();
        this.mOldChangedHolders.clear();
    }

    void addToPreLayout(RecyclerView$ViewHolder recyclerView$ViewHolder, RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecordObtain = this.mLayoutHolderMap.get(recyclerView$ViewHolder);
        if (viewInfoStore$InfoRecordObtain == null) {
            viewInfoStore$InfoRecordObtain = ViewInfoStore$InfoRecord.obtain();
            this.mLayoutHolderMap.put(recyclerView$ViewHolder, viewInfoStore$InfoRecordObtain);
        }
        viewInfoStore$InfoRecordObtain.preInfo = recyclerView$ItemAnimator$ItemHolderInfo;
        viewInfoStore$InfoRecordObtain.flags |= 4;
    }

    boolean isDisappearing(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = this.mLayoutHolderMap.get(recyclerView$ViewHolder);
        return (viewInfoStore$InfoRecord == null || (viewInfoStore$InfoRecord.flags & 1) == 0) ? false : true;
    }

    @Nullable
    RecyclerView$ItemAnimator$ItemHolderInfo popFromPreLayout(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return popFromLayoutStep(recyclerView$ViewHolder, 4);
    }

    @Nullable
    RecyclerView$ItemAnimator$ItemHolderInfo popFromPostLayout(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        return popFromLayoutStep(recyclerView$ViewHolder, 8);
    }

    private RecyclerView$ItemAnimator$ItemHolderInfo popFromLayoutStep(RecyclerView$ViewHolder recyclerView$ViewHolder, int i) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecordValueAt;
        RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo;
        int iIndexOfKey = this.mLayoutHolderMap.indexOfKey(recyclerView$ViewHolder);
        if (iIndexOfKey < 0 || (viewInfoStore$InfoRecordValueAt = this.mLayoutHolderMap.valueAt(iIndexOfKey)) == null || (viewInfoStore$InfoRecordValueAt.flags & i) == 0) {
            return null;
        }
        viewInfoStore$InfoRecordValueAt.flags &= ~i;
        if (i == 4) {
            recyclerView$ItemAnimator$ItemHolderInfo = viewInfoStore$InfoRecordValueAt.preInfo;
        } else if (i == 8) {
            recyclerView$ItemAnimator$ItemHolderInfo = viewInfoStore$InfoRecordValueAt.postInfo;
        } else {
            throw new IllegalArgumentException("Must provide flag PRE or POST");
        }
        if ((viewInfoStore$InfoRecordValueAt.flags & 12) == 0) {
            this.mLayoutHolderMap.removeAt(iIndexOfKey);
            ViewInfoStore$InfoRecord.recycle(viewInfoStore$InfoRecordValueAt);
        }
        return recyclerView$ItemAnimator$ItemHolderInfo;
    }

    void addToOldChangeHolders(long j, RecyclerView$ViewHolder recyclerView$ViewHolder) {
        this.mOldChangedHolders.put(j, recyclerView$ViewHolder);
    }

    void addToAppearedInPreLayoutHolders(RecyclerView$ViewHolder recyclerView$ViewHolder, RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecordObtain = this.mLayoutHolderMap.get(recyclerView$ViewHolder);
        if (viewInfoStore$InfoRecordObtain == null) {
            viewInfoStore$InfoRecordObtain = ViewInfoStore$InfoRecord.obtain();
            this.mLayoutHolderMap.put(recyclerView$ViewHolder, viewInfoStore$InfoRecordObtain);
        }
        viewInfoStore$InfoRecordObtain.flags |= 2;
        viewInfoStore$InfoRecordObtain.preInfo = recyclerView$ItemAnimator$ItemHolderInfo;
    }

    boolean isInPreLayout(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = this.mLayoutHolderMap.get(recyclerView$ViewHolder);
        return (viewInfoStore$InfoRecord == null || (viewInfoStore$InfoRecord.flags & 4) == 0) ? false : true;
    }

    RecyclerView$ViewHolder getFromOldChangeHolders(long j) {
        return this.mOldChangedHolders.get(j);
    }

    void addToPostLayout(RecyclerView$ViewHolder recyclerView$ViewHolder, RecyclerView$ItemAnimator$ItemHolderInfo recyclerView$ItemAnimator$ItemHolderInfo) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecordObtain = this.mLayoutHolderMap.get(recyclerView$ViewHolder);
        if (viewInfoStore$InfoRecordObtain == null) {
            viewInfoStore$InfoRecordObtain = ViewInfoStore$InfoRecord.obtain();
            this.mLayoutHolderMap.put(recyclerView$ViewHolder, viewInfoStore$InfoRecordObtain);
        }
        viewInfoStore$InfoRecordObtain.postInfo = recyclerView$ItemAnimator$ItemHolderInfo;
        viewInfoStore$InfoRecordObtain.flags |= 8;
    }

    void addToDisappearedInLayout(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecordObtain = this.mLayoutHolderMap.get(recyclerView$ViewHolder);
        if (viewInfoStore$InfoRecordObtain == null) {
            viewInfoStore$InfoRecordObtain = ViewInfoStore$InfoRecord.obtain();
            this.mLayoutHolderMap.put(recyclerView$ViewHolder, viewInfoStore$InfoRecordObtain);
        }
        viewInfoStore$InfoRecordObtain.flags |= 1;
    }

    void removeFromDisappearedInLayout(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = this.mLayoutHolderMap.get(recyclerView$ViewHolder);
        if (viewInfoStore$InfoRecord == null) {
            return;
        }
        viewInfoStore$InfoRecord.flags &= -2;
    }

    void process(ViewInfoStore$ProcessCallback viewInfoStore$ProcessCallback) {
        for (int size = this.mLayoutHolderMap.size() - 1; size >= 0; size--) {
            RecyclerView$ViewHolder recyclerView$ViewHolderKeyAt = this.mLayoutHolderMap.keyAt(size);
            ViewInfoStore$InfoRecord viewInfoStore$InfoRecordRemoveAt = this.mLayoutHolderMap.removeAt(size);
            if ((viewInfoStore$InfoRecordRemoveAt.flags & 3) == 3) {
                viewInfoStore$ProcessCallback.unused(recyclerView$ViewHolderKeyAt);
            } else if ((viewInfoStore$InfoRecordRemoveAt.flags & 1) != 0) {
                if (viewInfoStore$InfoRecordRemoveAt.preInfo == null) {
                    viewInfoStore$ProcessCallback.unused(recyclerView$ViewHolderKeyAt);
                } else {
                    viewInfoStore$ProcessCallback.processDisappeared(recyclerView$ViewHolderKeyAt, viewInfoStore$InfoRecordRemoveAt.preInfo, viewInfoStore$InfoRecordRemoveAt.postInfo);
                }
            } else if ((viewInfoStore$InfoRecordRemoveAt.flags & 14) == 14) {
                viewInfoStore$ProcessCallback.processAppeared(recyclerView$ViewHolderKeyAt, viewInfoStore$InfoRecordRemoveAt.preInfo, viewInfoStore$InfoRecordRemoveAt.postInfo);
            } else if ((viewInfoStore$InfoRecordRemoveAt.flags & 12) == 12) {
                viewInfoStore$ProcessCallback.processPersistent(recyclerView$ViewHolderKeyAt, viewInfoStore$InfoRecordRemoveAt.preInfo, viewInfoStore$InfoRecordRemoveAt.postInfo);
            } else if ((viewInfoStore$InfoRecordRemoveAt.flags & 4) != 0) {
                viewInfoStore$ProcessCallback.processDisappeared(recyclerView$ViewHolderKeyAt, viewInfoStore$InfoRecordRemoveAt.preInfo, null);
            } else if ((viewInfoStore$InfoRecordRemoveAt.flags & 8) != 0) {
                viewInfoStore$ProcessCallback.processAppeared(recyclerView$ViewHolderKeyAt, viewInfoStore$InfoRecordRemoveAt.preInfo, viewInfoStore$InfoRecordRemoveAt.postInfo);
            } else {
                int i = viewInfoStore$InfoRecordRemoveAt.flags;
            }
            ViewInfoStore$InfoRecord.recycle(viewInfoStore$InfoRecordRemoveAt);
        }
    }

    void removeViewHolder(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        int size = this.mOldChangedHolders.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            if (recyclerView$ViewHolder == this.mOldChangedHolders.valueAt(size)) {
                this.mOldChangedHolders.removeAt(size);
                break;
            }
            size--;
        }
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecordRemove = this.mLayoutHolderMap.remove(recyclerView$ViewHolder);
        if (viewInfoStore$InfoRecordRemove != null) {
            ViewInfoStore$InfoRecord.recycle(viewInfoStore$InfoRecordRemove);
        }
    }

    void onDetach() {
        ViewInfoStore$InfoRecord.drainCache();
    }

    public void onViewDetached(RecyclerView$ViewHolder recyclerView$ViewHolder) {
        removeFromDisappearedInLayout(recyclerView$ViewHolder);
    }
}
