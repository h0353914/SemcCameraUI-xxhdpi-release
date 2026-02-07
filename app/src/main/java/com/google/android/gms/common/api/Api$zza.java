package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api$zzb;
import com.google.android.gms.common.internal.zzf;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class Api$zza<T extends Api$zzb, O> {
    public int getPriority() {
        return Integer.MAX_VALUE;
    }

    public abstract T zza(Context context, Looper looper, zzf zzfVar, O o, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener);

    public List<Scope> zzm(O o) {
        return Collections.emptyList();
    }
}
