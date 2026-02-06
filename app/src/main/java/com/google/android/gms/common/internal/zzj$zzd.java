package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;

public final class zzj$zzd extends zzr$zza {
    private zzj zzafM;
    private final int zzafN;

    public zzj$zzd(zzj zzjVar, int i) {
        this.zzafM = zzjVar;
        this.zzafN = i;
    }

    private void zzpj() {
        this.zzafM = null;
    }

    @Override // com.google.android.gms.common.internal.zzr
    public void zza(int i, IBinder iBinder, Bundle bundle) {
        zzx.zzb(this.zzafM, "onPostInitComplete can be called only once per call to getRemoteService");
        this.zzafM.zza(i, iBinder, bundle, this.zzafN);
        zzpj();
    }

    @Override // com.google.android.gms.common.internal.zzr
    public void zzb(int i, Bundle bundle) {
        zzx.zzb(this.zzafM, "onAccountValidationComplete can be called only once per call to validateAccount");
        this.zzafM.zza(i, bundle, this.zzafN);
        zzpj();
    }
}
