package com.google.android.gms.auth.api.credentials.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
class zzc$4 extends zzd<Status> {
    final /* synthetic */ zzc zzSF;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzc$4(zzc zzcVar, GoogleApiClient googleApiClient) {
        super(googleApiClient);
        this.zzSF = zzcVar;
    }

    @Override // com.google.android.gms.auth.api.credentials.internal.zzd
    protected void zza(Context context, zzh zzhVar) throws RemoteException {
        zzhVar.zza(new zzc$zza(this));
    }

    @Override // com.google.android.gms.internal.zzlc
    protected /* synthetic */ Result zzb(Status status) {
        return zzd(status);
    }

    protected Status zzd(Status status) {
        return status;
    }
}
