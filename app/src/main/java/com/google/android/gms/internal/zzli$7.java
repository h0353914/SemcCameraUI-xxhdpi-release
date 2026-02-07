package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
class zzli$7 implements ResultCallback<Status> {
    final /* synthetic */ GoogleApiClient zzWT;
    final /* synthetic */ zzli zzacr;
    final /* synthetic */ zzlo zzacv;
    final /* synthetic */ boolean zzacw;

    zzli$7(zzli zzliVar, zzlo zzloVar, boolean z, GoogleApiClient googleApiClient) {
        this.zzacr = zzliVar;
        this.zzacv = zzloVar;
        this.zzacw = z;
        this.zzWT = googleApiClient;
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public /* synthetic */ void onResult(Result result) {
        zzo((Status) result);
    }

    public void zzo(Status status) {
        if (status.isSuccess() && this.zzacr.isConnected()) {
            this.zzacr.reconnect();
        }
        this.zzacv.zzb(status);
        if (this.zzacw) {
            this.zzWT.disconnect();
        }
    }
}
