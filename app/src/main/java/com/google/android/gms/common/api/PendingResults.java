package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzln;
import com.google.android.gms.internal.zzlo;

public final class PendingResults {
    private PendingResults() {
    }

    public static PendingResult<Status> canceledPendingResult() {
        zzlo zzloVar = new zzlo(Looper.getMainLooper());
        zzloVar.cancel();
        return zzloVar;
    }

    public static <R extends Result> PendingResult<R> canceledPendingResult(R r) {
        zzx.zzb(r, "Result must not be null");
        zzx.zzb(r.getStatus().getStatusCode() == 16, "Status code must be CommonStatusCodes.CANCELED");
        PendingResults$zza pendingResults$zza = new PendingResults$zza(r);
        pendingResults$zza.cancel();
        return pendingResults$zza;
    }

    public static <R extends Result> OptionalPendingResult<R> immediatePendingResult(R r) {
        zzx.zzb(r, "Result must not be null");
        PendingResults$zzc pendingResults$zzc = new PendingResults$zzc(null);
        pendingResults$zzc.zzb(r);
        return new zzln(pendingResults$zzc);
    }

    public static PendingResult<Status> immediatePendingResult(Status status) {
        zzx.zzb(status, "Result must not be null");
        zzlo zzloVar = new zzlo(Looper.getMainLooper());
        zzloVar.zzb(status);
        return zzloVar;
    }

    public static <R extends Result> PendingResult<R> zza(R r, GoogleApiClient googleApiClient) {
        zzx.zzb(r, "Result must not be null");
        zzx.zzb(!r.getStatus().isSuccess(), "Status code must not be SUCCESS");
        PendingResults$zzb pendingResults$zzb = new PendingResults$zzb(googleApiClient, r);
        pendingResults$zzb.zzb(r);
        return pendingResults$zzb;
    }

    public static PendingResult<Status> zza(Status status, GoogleApiClient googleApiClient) {
        zzx.zzb(status, "Result must not be null");
        zzlo zzloVar = new zzlo(googleApiClient);
        zzloVar.zzb(status);
        return zzloVar;
    }
}
