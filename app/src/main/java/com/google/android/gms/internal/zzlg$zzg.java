package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;

/* JADX INFO: loaded from: classes.dex */
class zzlg$zzg implements GoogleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener {
    final /* synthetic */ zzlg zzabL;

    private zzlg$zzg(zzlg zzlgVar) {
        this.zzabL = zzlgVar;
    }

    /* synthetic */ zzlg$zzg(zzlg zzlgVar, zzlg$1 zzlg_1) {
        this(zzlgVar);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks
    public void onConnected(Bundle bundle) {
        zzlg.zzf(this.zzabL).zza(new zzlg$zzb(this.zzabL));
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener
    public void onConnectionFailed(ConnectionResult connectionResult) {
        zzlg.zzc(this.zzabL).lock();
        try {
            if (zzlg.zzb(this.zzabL, connectionResult)) {
                zzlg.zzi(this.zzabL);
                zzlg.zzj(this.zzabL);
            } else {
                zzlg.zza(this.zzabL, connectionResult);
            }
        } finally {
            zzlg.zzc(this.zzabL).unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks
    public void onConnectionSuspended(int i) {
    }
}
