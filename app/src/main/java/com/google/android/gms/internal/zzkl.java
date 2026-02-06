package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.proxy.ProxyApi$ProxyResult;
import com.google.android.gms.common.api.Api$zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

abstract class zzkl extends zzlb$zza<ProxyApi$ProxyResult, zzki> {
    public zzkl(GoogleApiClient googleApiClient) {
        super(Auth.zzRE, googleApiClient);
    }

    protected abstract void zza(Context context, zzkk zzkkVar) throws RemoteException;

    @Override // com.google.android.gms.internal.zzlb$zza
    protected /* bridge */ /* synthetic */ void zza(Api$zzb api$zzb) throws RemoteException {
        zza((zzki) api$zzb);
    }

    protected final void zza(zzki zzkiVar) throws RemoteException {
        zza(zzkiVar.getContext(), zzkiVar.zzpc());
    }

    @Override // com.google.android.gms.internal.zzlc
    protected /* synthetic */ Result zzb(Status status) {
        return zzj(status);
    }

    protected ProxyApi$ProxyResult zzj(Status status) {
        return new zzkn(status);
    }
}
