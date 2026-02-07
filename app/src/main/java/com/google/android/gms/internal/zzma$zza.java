package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
abstract class zzma$zza extends zzma<Status> {
    public zzma$zza(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.internal.zzlc
    public /* synthetic */ Result zzb(Status status) {
        return zzd(status);
    }

    public Status zzd(Status status) {
        return status;
    }
}
