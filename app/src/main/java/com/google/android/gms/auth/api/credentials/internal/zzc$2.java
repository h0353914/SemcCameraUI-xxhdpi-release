package com.google.android.gms.auth.api.credentials.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

class zzc$2 extends zzd<Status> {
    final /* synthetic */ zzc zzSF;
    final /* synthetic */ Credential zzSH;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzc$2(zzc zzcVar, GoogleApiClient googleApiClient, Credential credential) {
        super(googleApiClient);
        this.zzSF = zzcVar;
        this.zzSH = credential;
    }

    @Override // com.google.android.gms.auth.api.credentials.internal.zzd
    protected void zza(Context context, zzh zzhVar) throws RemoteException {
        zzhVar.zza(new zzc$zza(this), new SaveRequest(this.zzSH));
    }

    @Override // com.google.android.gms.internal.zzlc
    protected /* synthetic */ Result zzb(Status status) {
        return zzd(status);
    }

    protected Status zzd(Status status) {
        return status;
    }
}
