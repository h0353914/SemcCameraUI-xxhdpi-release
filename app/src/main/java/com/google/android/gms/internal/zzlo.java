package com.google.android.gms.internal;

import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
public class zzlo extends zzlc<Status> {
    @Deprecated
    public zzlo(Looper looper) {
        super(looper);
    }

    public zzlo(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.internal.zzlc
    protected /* synthetic */ Result zzb(Status status) {
        return zzd(status);
    }

    protected Status zzd(Status status) {
        return status;
    }
}
