package com.google.android.gms.common.api;

import com.google.android.gms.internal.zzlc;
import java.util.List;

public final class Batch extends zzlc<BatchResult> {
    private boolean zzaaA;
    private final PendingResult<?>[] zzaaB;
    private int zzaay;
    private boolean zzaaz;
    private final Object zzpd;

    private Batch(List<PendingResult<?>> list, GoogleApiClient googleApiClient) {
        super(googleApiClient);
        this.zzpd = new Object();
        this.zzaay = list.size();
        this.zzaaB = new PendingResult[this.zzaay];
        for (int i = 0; i < list.size(); i++) {
            PendingResult<?> pendingResult = list.get(i);
            this.zzaaB[i] = pendingResult;
            pendingResult.zza(new Batch$1(this));
        }
    }

    /* synthetic */ Batch(List list, GoogleApiClient googleApiClient, Batch$1 batch$1) {
        this(list, googleApiClient);
    }

    static /* synthetic */ Object zza(Batch batch) {
        return batch.zzpd;
    }

    static /* synthetic */ boolean zza(Batch batch, boolean z) {
        batch.zzaaA = z;
        return z;
    }

    static /* synthetic */ int zzb(Batch batch) {
        int i = batch.zzaay;
        batch.zzaay = i - 1;
        return i;
    }

    static /* synthetic */ boolean zzb(Batch batch, boolean z) {
        batch.zzaaz = z;
        return z;
    }

    static /* synthetic */ int zzc(Batch batch) {
        return batch.zzaay;
    }

    static /* synthetic */ boolean zzd(Batch batch) {
        return batch.zzaaA;
    }

    static /* synthetic */ void zze(Batch batch) {
        super.cancel();
    }

    static /* synthetic */ boolean zzf(Batch batch) {
        return batch.zzaaz;
    }

    static /* synthetic */ PendingResult[] zzg(Batch batch) {
        return batch.zzaaB;
    }

    @Override // com.google.android.gms.internal.zzlc, com.google.android.gms.common.api.PendingResult
    public void cancel() {
        super.cancel();
        for (PendingResult<?> pendingResult : this.zzaaB) {
            pendingResult.cancel();
        }
    }

    public BatchResult createFailedResult(Status status) {
        return new BatchResult(status, this.zzaaB);
    }

    @Override // com.google.android.gms.internal.zzlc
    public /* synthetic */ Result zzb(Status status) {
        return createFailedResult(status);
    }
}
