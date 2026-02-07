package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
class zzlz$zza extends zzlw {
    private final zzlb$zzb<Status> zzagy;

    public zzlz$zza(zzlb$zzb<Status> zzlb_zzb) {
        this.zzagy = zzlb_zzb;
    }

    @Override // com.google.android.gms.internal.zzlw, com.google.android.gms.internal.zzmc
    public void zzbN(int i) throws RemoteException {
        this.zzagy.zzp(new Status(i));
    }
}
