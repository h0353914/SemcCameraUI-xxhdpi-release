package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IBinder$DeathRecipient;
import com.google.android.gms.common.api.zza;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class zzli$zzc implements IBinder$DeathRecipient, zzli$zze {
    private final WeakReference<zza> zzacA;
    private final WeakReference<IBinder> zzacB;
    private final WeakReference<zzli$zzf<?>> zzacz;

    private zzli$zzc(zzli$zzf zzli_zzf, zza zzaVar, IBinder iBinder) {
        this.zzacA = new WeakReference<>(zzaVar);
        this.zzacz = new WeakReference<>(zzli_zzf);
        this.zzacB = new WeakReference<>(iBinder);
    }

    /* synthetic */ zzli$zzc(zzli$zzf zzli_zzf, zza zzaVar, IBinder iBinder, zzli$1 zzli_1) {
        this(zzli_zzf, zzaVar, iBinder);
    }

    private void zzoh() {
        zzli$zzf<?> zzli_zzf = this.zzacz.get();
        zza zzaVar = this.zzacA.get();
        if (zzaVar != null && zzli_zzf != null) {
            zzaVar.remove(zzli_zzf.zznF().intValue());
        }
        IBinder iBinder = this.zzacB.get();
        if (this.zzacB != null) {
            iBinder.unlinkToDeath(this, 0);
        }
    }

    @Override // android.os.IBinder$DeathRecipient
    public void binderDied() {
        zzoh();
    }

    @Override // com.google.android.gms.internal.zzli$zze
    public void zzc(zzli$zzf<?> zzli_zzf) {
        zzoh();
    }
}
