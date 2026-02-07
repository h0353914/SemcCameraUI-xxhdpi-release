package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzlc;

/* JADX INFO: loaded from: classes.dex */
final class PendingResults$zza<R extends Result> extends zzlc<R> {
    private final R zzaaW;

    public PendingResults$zza(R r) {
        super(Looper.getMainLooper());
        this.zzaaW = r;
    }

    @Override // com.google.android.gms.internal.zzlc
    protected R zzb(Status status) {
        if (status.getStatusCode() != this.zzaaW.getStatus().getStatusCode()) {
            throw new UnsupportedOperationException("Creating failed results is not supported");
        }
        return this.zzaaW;
    }
}
