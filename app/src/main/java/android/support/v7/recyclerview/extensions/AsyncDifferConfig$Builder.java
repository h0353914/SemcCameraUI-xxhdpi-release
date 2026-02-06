package android.support.v7.recyclerview.extensions;

import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v7.util.DiffUtil$ItemCallback;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public final class AsyncDifferConfig$Builder<T> {
    private static Executor sDiffExecutor;
    private static final Object sExecutorLock = new Object();
    private Executor mBackgroundThreadExecutor;
    private final DiffUtil$ItemCallback<T> mDiffCallback;
    private Executor mMainThreadExecutor;

    public AsyncDifferConfig$Builder(@NonNull DiffUtil$ItemCallback<T> diffUtil$ItemCallback) {
        this.mDiffCallback = diffUtil$ItemCallback;
    }

    @NonNull
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public AsyncDifferConfig$Builder<T> setMainThreadExecutor(Executor executor) {
        this.mMainThreadExecutor = executor;
        return this;
    }

    @NonNull
    public AsyncDifferConfig$Builder<T> setBackgroundThreadExecutor(Executor executor) {
        this.mBackgroundThreadExecutor = executor;
        return this;
    }

    @NonNull
    public AsyncDifferConfig<T> build() {
        if (this.mBackgroundThreadExecutor == null) {
            synchronized (sExecutorLock) {
                if (sDiffExecutor == null) {
                    sDiffExecutor = Executors.newFixedThreadPool(2);
                }
            }
            this.mBackgroundThreadExecutor = sDiffExecutor;
        }
        return new AsyncDifferConfig<>(this.mMainThreadExecutor, this.mBackgroundThreadExecutor, this.mDiffCallback);
    }
}
