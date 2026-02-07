package android.support.v7.util;

import android.support.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class SortedList$BatchedCallback<T2> extends SortedList$Callback<T2> {
    private final BatchingListUpdateCallback mBatchingListUpdateCallback;
    final SortedList$Callback<T2> mWrappedCallback;

    public SortedList$BatchedCallback(SortedList$Callback<T2> sortedList$Callback) {
        this.mWrappedCallback = sortedList$Callback;
        this.mBatchingListUpdateCallback = new BatchingListUpdateCallback(this.mWrappedCallback);
    }

    @Override // android.support.v7.util.SortedList$Callback, java.util.Comparator
    public int compare(T2 t2, T2 t22) {
        return this.mWrappedCallback.compare(t2, t22);
    }

    @Override // android.support.v7.util.ListUpdateCallback
    public void onInserted(int i, int i2) {
        this.mBatchingListUpdateCallback.onInserted(i, i2);
    }

    @Override // android.support.v7.util.ListUpdateCallback
    public void onRemoved(int i, int i2) {
        this.mBatchingListUpdateCallback.onRemoved(i, i2);
    }

    @Override // android.support.v7.util.ListUpdateCallback
    public void onMoved(int i, int i2) {
        this.mBatchingListUpdateCallback.onMoved(i, i2);
    }

    @Override // android.support.v7.util.SortedList$Callback
    public void onChanged(int i, int i2) {
        this.mBatchingListUpdateCallback.onChanged(i, i2, null);
    }

    @Override // android.support.v7.util.SortedList$Callback, android.support.v7.util.ListUpdateCallback
    public void onChanged(int i, int i2, Object obj) {
        this.mBatchingListUpdateCallback.onChanged(i, i2, obj);
    }

    @Override // android.support.v7.util.SortedList$Callback
    public boolean areContentsTheSame(T2 t2, T2 t22) {
        return this.mWrappedCallback.areContentsTheSame(t2, t22);
    }

    @Override // android.support.v7.util.SortedList$Callback
    public boolean areItemsTheSame(T2 t2, T2 t22) {
        return this.mWrappedCallback.areItemsTheSame(t2, t22);
    }

    @Override // android.support.v7.util.SortedList$Callback
    @Nullable
    public Object getChangePayload(T2 t2, T2 t22) {
        return this.mWrappedCallback.getChangePayload(t2, t22);
    }

    public void dispatchLastEvent() {
        this.mBatchingListUpdateCallback.dispatchLastEvent();
    }
}
