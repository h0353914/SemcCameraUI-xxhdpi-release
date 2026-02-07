package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api$ApiOptions$NoOptions;
import com.google.android.gms.common.api.Api$zza;
import com.google.android.gms.common.api.Api$zzb;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.signin.internal.zzi;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
class zzqu$2 extends Api$zza<zzi, Api$ApiOptions$NoOptions> {
    zzqu$2() {
    }

    @Override // com.google.android.gms.common.api.Api$zza
    public /* synthetic */ Api$zzb zza(Context context, Looper looper, zzf zzfVar, Api$ApiOptions$NoOptions api$ApiOptions$NoOptions, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        return zzt(context, looper, zzfVar, api$ApiOptions$NoOptions, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
    }

    public zzi zzt(Context context, Looper looper, zzf zzfVar, Api$ApiOptions$NoOptions api$ApiOptions$NoOptions, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        return new zzi(context, looper, false, zzfVar, zzqx.zzaUZ, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener, Executors.newSingleThreadExecutor());
    }
}
