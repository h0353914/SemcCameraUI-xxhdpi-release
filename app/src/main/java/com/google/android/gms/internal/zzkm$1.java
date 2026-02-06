package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.common.api.GoogleApiClient;

class zzkm$1 extends zzkl {
    final /* synthetic */ ProxyRequest zzSQ;
    final /* synthetic */ zzkm zzSR;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzkm$1(zzkm zzkmVar, GoogleApiClient googleApiClient, ProxyRequest proxyRequest) {
        super(googleApiClient);
        this.zzSR = zzkmVar;
        this.zzSQ = proxyRequest;
    }

    @Override // com.google.android.gms.internal.zzkl
    protected void zza(Context context, zzkk zzkkVar) throws RemoteException {
        zzkkVar.zza(new zzkm$1$1(this), this.zzSQ);
    }
}
