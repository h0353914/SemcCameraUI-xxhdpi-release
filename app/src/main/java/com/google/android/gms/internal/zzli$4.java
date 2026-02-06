package com.google.android.gms.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;

class zzli$4 implements GoogleApiClient$OnConnectionFailedListener {
    final /* synthetic */ zzli zzacr;
    final /* synthetic */ Api zzacs;
    final /* synthetic */ int zzact;

    zzli$4(zzli zzliVar, Api api, int i) {
        this.zzacr = zzliVar;
        this.zzacs = api;
        this.zzact = i;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener
    public void onConnectionFailed(ConnectionResult connectionResult) {
        zzli.zzb(this.zzacr).lock();
        try {
            zzli.zzc(this.zzacr).zza(connectionResult, this.zzacs, this.zzact);
        } finally {
            zzli.zzb(this.zzacr).unlock();
        }
    }
}
