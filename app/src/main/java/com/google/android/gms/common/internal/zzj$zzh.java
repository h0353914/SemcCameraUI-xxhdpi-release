package com.google.android.gms.common.internal;

import com.google.android.gms.common.ConnectionResult;

protected final class zzj$zzh extends zzj<T>.zzj$zza {
    final /* synthetic */ zzj zzafK;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzj$zzh(zzj zzjVar) {
        super(zzjVar, 0, null);
        this.zzafK = zzjVar;
    }

    @Override // com.google.android.gms.common.internal.zzj$zza
    protected void zzh(ConnectionResult connectionResult) {
        zzj.zza(this.zzafK).zza(connectionResult);
        this.zzafK.onConnectionFailed(connectionResult);
    }

    @Override // com.google.android.gms.common.internal.zzj$zza
    protected boolean zzpf() {
        zzj.zza(this.zzafK).zza(ConnectionResult.zzZY);
        return true;
    }
}
