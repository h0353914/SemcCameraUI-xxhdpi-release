package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;

public abstract class zzb<R extends Result, S extends Result> {
    public abstract PendingResult<S> zza(R r);

    public Status zzu(Status status) {
        return status;
    }
}
