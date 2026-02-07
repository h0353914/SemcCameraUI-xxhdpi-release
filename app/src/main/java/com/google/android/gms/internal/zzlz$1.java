package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api$zzb;
import com.google.android.gms.common.api.GoogleApiClient;

/* JADX INFO: loaded from: classes.dex */
class zzlz$1 extends zzma$zza {
    final /* synthetic */ zzlz zzagx;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzlz$1(zzlz zzlzVar, GoogleApiClient googleApiClient) {
        super(googleApiClient);
        this.zzagx = zzlzVar;
    }

    @Override // com.google.android.gms.internal.zzlb$zza
    protected /* bridge */ /* synthetic */ void zza(Api$zzb api$zzb) throws RemoteException {
        zza((zzmb) api$zzb);
    }

    protected void zza(zzmb zzmbVar) throws RemoteException {
        zzmbVar.zzpc().zza(new zzlz$zza(this));
    }
}
