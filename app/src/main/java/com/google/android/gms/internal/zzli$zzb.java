package com.google.android.gms.internal;

/* JADX INFO: loaded from: classes.dex */
abstract class zzli$zzb {
    private final zzlj zzacy;

    protected zzli$zzb(zzlj zzljVar) {
        this.zzacy = zzljVar;
    }

    public final void zzg(zzli zzliVar) {
        zzli.zzb(zzliVar).lock();
        try {
            if (zzli.zzc(zzliVar) != this.zzacy) {
                return;
            }
            zznO();
        } finally {
            zzli.zzb(zzliVar).unlock();
        }
    }

    protected abstract void zznO();
}
