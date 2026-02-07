package com.google.android.gms.auth.api.credentials.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.common.api.Api$zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzlb$zza;

/* JADX INFO: loaded from: classes.dex */
abstract class zzd<R extends Result> extends zzlb$zza<R, zze> {
    zzd(GoogleApiClient googleApiClient) {
        super(Auth.zzRF, googleApiClient);
    }

    protected abstract void zza(Context context, zzh zzhVar) throws RemoteException;

    protected final void zza(zze zzeVar) throws RemoteException {
        zza(zzeVar.getContext(), zzeVar.zzpc());
    }

    @Override // com.google.android.gms.internal.zzlb$zza
    protected /* bridge */ /* synthetic */ void zza(Api$zzb api$zzb) throws RemoteException {
        zza((zze) api$zzb);
    }
}
