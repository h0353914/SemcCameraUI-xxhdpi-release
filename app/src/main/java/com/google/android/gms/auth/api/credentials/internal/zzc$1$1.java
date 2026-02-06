package com.google.android.gms.auth.api.credentials.internal;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;

class zzc$1$1 extends zza {
    final /* synthetic */ zzc$1 zzSG;

    zzc$1$1(zzc$1 zzc_1) {
        this.zzSG = zzc_1;
    }

    @Override // com.google.android.gms.auth.api.credentials.internal.zza, com.google.android.gms.auth.api.credentials.internal.zzg
    public void zza(Status status, Credential credential) {
        this.zzSG.zzb(new zzb(status, credential));
    }

    @Override // com.google.android.gms.auth.api.credentials.internal.zza, com.google.android.gms.auth.api.credentials.internal.zzg
    public void zzg(Status status) {
        this.zzSG.zzb(zzb.zzh(status));
    }
}
