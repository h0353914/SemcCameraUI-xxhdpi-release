package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class zzli$zzd extends zzll {
    private WeakReference<zzli> zzacC;

    zzli$zzd(zzli zzliVar) {
        this.zzacC = new WeakReference<>(zzliVar);
    }

    @Override // com.google.android.gms.internal.zzll
    public void zzoi() {
        zzli zzliVar = this.zzacC.get();
        if (zzliVar == null) {
            return;
        }
        zzli.zzd(zzliVar);
    }
}
