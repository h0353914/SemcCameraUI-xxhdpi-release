package com.google.android.gms.internal;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzlk {
    private static final ExecutorService zzacD = Executors.newFixedThreadPool(2, new zzlk$zza(null));

    public static ExecutorService zzoj() {
        return zzacD;
    }
}
