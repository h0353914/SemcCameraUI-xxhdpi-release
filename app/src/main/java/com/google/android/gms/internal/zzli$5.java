package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
class zzli$5 implements GoogleApiClient$ConnectionCallbacks {
    final /* synthetic */ zzli zzacr;
    final /* synthetic */ AtomicReference zzacu;
    final /* synthetic */ zzlo zzacv;

    zzli$5(zzli zzliVar, AtomicReference atomicReference, zzlo zzloVar) {
        this.zzacr = zzliVar;
        this.zzacu = atomicReference;
        this.zzacv = zzloVar;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks
    public void onConnected(Bundle bundle) {
        zzli.zza(this.zzacr, (GoogleApiClient) this.zzacu.get(), this.zzacv, true);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks
    public void onConnectionSuspended(int i) {
    }
}
