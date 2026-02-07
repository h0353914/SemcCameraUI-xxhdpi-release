package com.google.android.gms.internal;

import android.support.v4.app.FragmentActivity;

/* JADX INFO: loaded from: classes.dex */
class zzli$8 implements Runnable {
    final /* synthetic */ zzli zzacr;
    final /* synthetic */ FragmentActivity zzacx;

    zzli$8(zzli zzliVar, FragmentActivity fragmentActivity) {
        this.zzacr = zzliVar;
        this.zzacx = fragmentActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.zzacx.isFinishing() || this.zzacx.getSupportFragmentManager().isDestroyed()) {
            return;
        }
        zzlp.zzb(this.zzacx).zzbp(zzli.zzf(this.zzacr));
    }
}
