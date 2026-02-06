package com.google.android.gms.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;

class zzli$6 implements GoogleApiClient$OnConnectionFailedListener {
    final /* synthetic */ zzli zzacr;
    final /* synthetic */ zzlo zzacv;

    zzli$6(zzli zzliVar, zzlo zzloVar) {
        this.zzacr = zzliVar;
        this.zzacv = zzloVar;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener
    public void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzacv.zzb(new Status(8));
    }
}
