package com.google.android.gms.common.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient$zza;

protected class zzj$zzf implements GoogleApiClient$zza {
    final /* synthetic */ zzj zzafK;

    public zzj$zzf(zzj zzjVar) {
        this.zzafK = zzjVar;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient$zza
    public void zza(ConnectionResult connectionResult) {
        if (connectionResult.isSuccess()) {
            this.zzafK.zza((zzp) null, zzj.zzd(this.zzafK));
        } else if (zzj.zze(this.zzafK) != null) {
            zzj.zze(this.zzafK).onConnectionFailed(connectionResult);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient$zza
    public void zzb(ConnectionResult connectionResult) {
        throw new IllegalStateException("Legacy GmsClient received onReportAccountValidation callback.");
    }
}
