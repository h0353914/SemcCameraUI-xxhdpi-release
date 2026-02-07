package com.google.android.gms.auth.api.credentials.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import com.google.android.gms.auth.api.credentials.CredentialRequestResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
class zzc$1 extends zzd<CredentialRequestResult> {
    final /* synthetic */ CredentialRequest zzSE;
    final /* synthetic */ zzc zzSF;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzc$1(zzc zzcVar, GoogleApiClient googleApiClient, CredentialRequest credentialRequest) {
        super(googleApiClient);
        this.zzSF = zzcVar;
        this.zzSE = credentialRequest;
    }

    @Override // com.google.android.gms.auth.api.credentials.internal.zzd
    protected void zza(Context context, zzh zzhVar) throws RemoteException {
        zzhVar.zza(new zzc$1$1(this), this.zzSE);
    }

    @Override // com.google.android.gms.internal.zzlc
    protected /* synthetic */ Result zzb(Status status) {
        return zzi(status);
    }

    protected CredentialRequestResult zzi(Status status) {
        return zzb.zzh(status);
    }
}
