package com.google.android.gms.common.api;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Batch$Builder {
    private GoogleApiClient zzVs;
    private List<PendingResult<?>> zzaaD = new ArrayList();

    public Batch$Builder(GoogleApiClient googleApiClient) {
        this.zzVs = googleApiClient;
    }

    public <R extends Result> BatchResultToken<R> add(PendingResult<R> pendingResult) {
        BatchResultToken<R> batchResultToken = new BatchResultToken<>(this.zzaaD.size());
        this.zzaaD.add(pendingResult);
        return batchResultToken;
    }

    public Batch build() {
        return new Batch(this.zzaaD, this.zzVs, null);
    }
}
