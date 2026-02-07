package com.sonyericsson.android.camera.util;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
class ThreadUtil$NamedThreadFactory implements ThreadFactory {
    private final boolean forPool;
    private int mPooledThreadCount = 0;
    private final String name;
    private final int priority;

    public ThreadUtil$NamedThreadFactory(String str, int i, boolean z) {
        this.name = str;
        this.priority = i;
        this.forPool = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        if (!this.forPool) {
            thread.setName(this.name);
        } else {
            thread.setName(this.name + ":" + this.mPooledThreadCount);
            this.mPooledThreadCount = this.mPooledThreadCount + 1;
        }
        thread.setPriority(this.priority);
        return thread;
    }
}
