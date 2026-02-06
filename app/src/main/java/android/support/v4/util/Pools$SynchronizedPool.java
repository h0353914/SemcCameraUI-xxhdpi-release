package android.support.v4.util;

import android.support.annotation.NonNull;

public class Pools$SynchronizedPool<T> extends Pools$SimplePool<T> {
    private final Object mLock;

    public Pools$SynchronizedPool(int i) {
        super(i);
        this.mLock = new Object();
    }

    @Override // android.support.v4.util.Pools$SimplePool, android.support.v4.util.Pools$Pool
    public T acquire() {
        T t;
        synchronized (this.mLock) {
            t = (T) super.acquire();
        }
        return t;
    }

    @Override // android.support.v4.util.Pools$SimplePool, android.support.v4.util.Pools$Pool
    public boolean release(@NonNull T t) {
        boolean zRelease;
        synchronized (this.mLock) {
            zRelease = super.release(t);
        }
        return zRelease;
    }
}
