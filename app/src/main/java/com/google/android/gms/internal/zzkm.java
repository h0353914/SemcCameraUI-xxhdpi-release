package com.google.android.gms.internal;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.proxy.ProxyApi$ProxyResult;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.internal.zzx;

/* JADX INFO: loaded from: classes.dex */
public class zzkm implements ProxyApi {
    @Override // com.google.android.gms.auth.api.proxy.ProxyApi
    public PendingResult<ProxyApi$ProxyResult> performProxyRequest(GoogleApiClient googleApiClient, ProxyRequest proxyRequest) {
        zzx.zzw(googleApiClient);
        zzx.zzw(proxyRequest);
        return googleApiClient.zzb(new zzkm$1(this, googleApiClient, proxyRequest));
    }
}
