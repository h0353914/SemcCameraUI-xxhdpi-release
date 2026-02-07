package android.support.v7.recyclerview.extensions;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.util.AdapterListUpdateCallback;
import android.support.v7.util.DiffUtil$DiffResult;
import android.support.v7.util.DiffUtil$ItemCallback;
import android.support.v7.util.ListUpdateCallback;
import android.support.v7.widget.RecyclerView$Adapter;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class AsyncListDiffer<T> {
    private static final Executor sMainThreadExecutor = new AsyncListDiffer$MainThreadExecutor();
    final AsyncDifferConfig<T> mConfig;

    @Nullable
    private List<T> mList;
    final Executor mMainThreadExecutor;
    int mMaxScheduledGeneration;

    @NonNull
    private List<T> mReadOnlyList;
    private final ListUpdateCallback mUpdateCallback;

    public AsyncListDiffer(@NonNull RecyclerView$Adapter recyclerView$Adapter, @NonNull DiffUtil$ItemCallback<T> diffUtil$ItemCallback) {
        this(new AdapterListUpdateCallback(recyclerView$Adapter), new AsyncDifferConfig$Builder(diffUtil$ItemCallback).build());
    }

    public AsyncListDiffer(@NonNull ListUpdateCallback listUpdateCallback, @NonNull AsyncDifferConfig<T> asyncDifferConfig) {
        this.mReadOnlyList = Collections.emptyList();
        this.mUpdateCallback = listUpdateCallback;
        this.mConfig = asyncDifferConfig;
        if (asyncDifferConfig.getMainThreadExecutor() != null) {
            this.mMainThreadExecutor = asyncDifferConfig.getMainThreadExecutor();
        } else {
            this.mMainThreadExecutor = sMainThreadExecutor;
        }
    }

    @NonNull
    public List<T> getCurrentList() {
        return this.mReadOnlyList;
    }

    public void submitList(@Nullable List<T> list) {
        int i = this.mMaxScheduledGeneration + 1;
        this.mMaxScheduledGeneration = i;
        if (list == this.mList) {
            return;
        }
        if (list == null) {
            int size = this.mList.size();
            this.mList = null;
            this.mReadOnlyList = Collections.emptyList();
            this.mUpdateCallback.onRemoved(0, size);
            return;
        }
        if (this.mList == null) {
            this.mList = list;
            this.mReadOnlyList = Collections.unmodifiableList(list);
            this.mUpdateCallback.onInserted(0, list.size());
        } else {
            this.mConfig.getBackgroundThreadExecutor().execute(new AsyncListDiffer$1(this, this.mList, list, i));
        }
    }

    void latchList(@NonNull List<T> list, @NonNull DiffUtil$DiffResult diffUtil$DiffResult) {
        this.mList = list;
        this.mReadOnlyList = Collections.unmodifiableList(list);
        diffUtil$DiffResult.dispatchUpdatesTo(this.mUpdateCallback);
    }
}
