package android.support.v7.recyclerview.extensions;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import java.util.concurrent.Executor;

class AsyncListDiffer$MainThreadExecutor implements Executor {
    final Handler mHandler = new Handler(Looper.getMainLooper());

    AsyncListDiffer$MainThreadExecutor() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        this.mHandler.post(runnable);
    }
}
