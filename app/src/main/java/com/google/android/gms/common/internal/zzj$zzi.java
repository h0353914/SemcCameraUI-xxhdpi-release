package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes.dex */
protected final class zzj$zzi extends zzj<T>.zzj$zza {
    final /* synthetic */ zzj zzafK;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzj$zzi(zzj zzjVar, int i, Bundle bundle) {
        super(zzjVar, i, bundle);
        this.zzafK = zzjVar;
    }

    @Override // com.google.android.gms.common.internal.zzj$zza
    protected void zzh(ConnectionResult connectionResult) {
        zzj.zza(this.zzafK).zzb(connectionResult);
        this.zzafK.onConnectionFailed(connectionResult);
    }

    @Override // com.google.android.gms.common.internal.zzj$zza
    protected boolean zzpf() {
        zzj.zza(this.zzafK).zzb(ConnectionResult.zzZY);
        return true;
    }
}
