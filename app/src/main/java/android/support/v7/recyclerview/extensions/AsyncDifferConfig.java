package android.support.v7.recyclerview.extensions;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v7.util.DiffUtil$ItemCallback;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class AsyncDifferConfig<T> {

    @NonNull
    private final Executor mBackgroundThreadExecutor;

    @NonNull
    private final DiffUtil$ItemCallback<T> mDiffCallback;

    @NonNull
    private final Executor mMainThreadExecutor;

    AsyncDifferConfig(@NonNull Executor executor, @NonNull Executor executor2, @NonNull DiffUtil$ItemCallback<T> diffUtil$ItemCallback) {
        this.mMainThreadExecutor = executor;
        this.mBackgroundThreadExecutor = executor2;
        this.mDiffCallback = diffUtil$ItemCallback;
    }

    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public Executor getMainThreadExecutor() {
        return this.mMainThreadExecutor;
    }

    @NonNull
    public Executor getBackgroundThreadExecutor() {
        return this.mBackgroundThreadExecutor;
    }

    @NonNull
    public DiffUtil$ItemCallback<T> getDiffCallback() {
        return this.mDiffCallback;
    }
}
