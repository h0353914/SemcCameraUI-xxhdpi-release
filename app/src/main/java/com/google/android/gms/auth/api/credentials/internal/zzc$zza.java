package com.google.android.gms.auth.api.credentials.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzlb$zzb;

/* JADX INFO: loaded from: classes.dex */
class zzc$zza extends zza {
    private zzlb$zzb<Status> zzSI;

    zzc$zza(zzlb$zzb<Status> zzlb_zzb) {
        this.zzSI = zzlb_zzb;
    }

    @Override // com.google.android.gms.auth.api.credentials.internal.zza, com.google.android.gms.auth.api.credentials.internal.zzg
    public void zzg(Status status) {
        this.zzSI.zzp(status);
    }
}
