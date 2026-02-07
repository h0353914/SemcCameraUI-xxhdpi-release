package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;

/* JADX INFO: loaded from: classes.dex */
class zzli$2 implements GoogleApiClient$ConnectionCallbacks {
    final /* synthetic */ zzli zzacr;

    zzli$2(zzli zzliVar) {
        this.zzacr = zzliVar;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks
    public void onConnected(Bundle bundle) {
        zzli.zzb(this.zzacr).lock();
        try {
            zzli.zzc(this.zzacr).onConnected(bundle);
        } finally {
            zzli.zzb(this.zzacr).unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        zzli.zzb(this.zzacr).lock();
        try {
            zzli.zzc(this.zzacr).onConnectionSuspended(i);
        } finally {
            zzli.zzb(this.zzacr).unlock();
        }
    }
}
