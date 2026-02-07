package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzlc;

/* JADX INFO: loaded from: classes.dex */
final class PendingResults$zzb<R extends Result> extends zzlc<R> {
    private final R zzaaX;

    public PendingResults$zzb(GoogleApiClient googleApiClient, R r) {
        super(googleApiClient);
        this.zzaaX = r;
    }

    @Override // com.google.android.gms.internal.zzlc
    protected R zzb(Status status) {
        return this.zzaaX;
    }
}
