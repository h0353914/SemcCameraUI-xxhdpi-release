package android.support.v4.content;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
class ModernAsyncTask$1 implements ThreadFactory {
    private final AtomicInteger mCount = new AtomicInteger(1);

    ModernAsyncTask$1() {
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, "ModernAsyncTask #" + this.mCount.getAndIncrement());
    }
}
