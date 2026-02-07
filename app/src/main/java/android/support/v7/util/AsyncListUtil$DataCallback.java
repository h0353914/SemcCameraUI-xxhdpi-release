package android.support.v7.util;

import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;

/* JADX INFO: loaded from: classes.dex */
public abstract class AsyncListUtil$DataCallback<T> {
    @WorkerThread
    public abstract void fillData(@NonNull T[] tArr, int i, int i2);

    @WorkerThread
    public int getMaxCachedTiles() {
        return 10;
    }

    @WorkerThread
    public void recycleData(@NonNull T[] tArr, int i) {
    }

    @WorkerThread
    public abstract int refreshData();
}
