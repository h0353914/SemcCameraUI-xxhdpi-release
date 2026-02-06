package com.google.android.gms.common.api;

import com.google.android.gms.internal.zzlp;

class GoogleApiClient$Builder$1 implements Runnable {
    final /* synthetic */ GoogleApiClient zzWT;
    final /* synthetic */ GoogleApiClient$Builder zzaaU;

    GoogleApiClient$Builder$1(GoogleApiClient$Builder googleApiClient$Builder, GoogleApiClient googleApiClient) {
        this.zzaaU = googleApiClient$Builder;
        this.zzWT = googleApiClient;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (GoogleApiClient$Builder.zza(this.zzaaU).isFinishing() || GoogleApiClient$Builder.zza(this.zzaaU).getSupportFragmentManager().isDestroyed()) {
            return;
        }
        GoogleApiClient$Builder.zza(this.zzaaU, zzlp.zzb(GoogleApiClient$Builder.zza(this.zzaaU)), this.zzWT);
    }
}
