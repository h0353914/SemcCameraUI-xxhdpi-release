package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
public final class zzlz implements zzly {
    @Override // com.google.android.gms.internal.zzly
    public PendingResult<Status> zzb(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb(new zzlz$1(this, googleApiClient));
    }
}
