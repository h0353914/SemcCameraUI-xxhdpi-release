package com.google.android.gms.internal;

import android.os.Looper;
import com.google.android.gms.common.internal.zzx;

/* JADX INFO: loaded from: classes.dex */
public final class zzlm<L> {
    private volatile L mListener;

    /* JADX WARN: Incorrect inner types in field signature: Lcom/google/android/gms/internal/zzlm<TL;>.zza; */
    private final zzlm$zza zzacG;

    public zzlm(Looper looper, L l) {
        this.zzacG = new zzlm$zza(this, looper);
        this.mListener = (L) zzx.zzb(l, "Listener must not be null");
    }

    public void clear() {
        this.mListener = null;
    }

    public void zza(zzlm$zzb<? super L> zzlm_zzb) {
        zzx.zzb(zzlm_zzb, "Notifier must not be null");
        this.zzacG.sendMessage(this.zzacG.obtainMessage(1, zzlm_zzb));
    }

    void zzb(zzlm$zzb<? super L> zzlm_zzb) {
        L l = this.mListener;
        if (l == null) {
            zzlm_zzb.zznN();
            return;
        }
        try {
            zzlm_zzb.zzq(l);
        } catch (RuntimeException e) {
            zzlm_zzb.zznN();
            throw e;
        }
    }
}
