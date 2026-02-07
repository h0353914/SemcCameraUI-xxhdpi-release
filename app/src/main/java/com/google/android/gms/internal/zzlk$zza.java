package com.google.android.gms.internal;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
final class zzlk$zza implements ThreadFactory {
    private final ThreadFactory zzacE;
    private AtomicInteger zzacF;

    private zzlk$zza() {
        this.zzacE = Executors.defaultThreadFactory();
        this.zzacF = new AtomicInteger(0);
    }

    /* synthetic */ zzlk$zza(zzlk$1 zzlk_1) {
        this();
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.zzacE.newThread(runnable);
        threadNewThread.setName("GAC_Executor[" + this.zzacF.getAndIncrement() + "]");
        return threadNewThread;
    }
}
