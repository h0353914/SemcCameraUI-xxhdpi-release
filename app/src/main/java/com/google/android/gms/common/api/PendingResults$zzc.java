package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzlc;

/* JADX INFO: loaded from: classes.dex */
final class PendingResults$zzc<R extends Result> extends zzlc<R> {
    public PendingResults$zzc(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.internal.zzlc
    protected R zzb(Status status) {
        throw new UnsupportedOperationException("Creating failed results is not supported");
    }
}
