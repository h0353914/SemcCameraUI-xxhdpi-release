package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api$ApiOptions$NoOptions;
import com.google.android.gms.common.api.Api$zza;
import com.google.android.gms.common.api.Api$zzb;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzkb;

/* JADX INFO: loaded from: classes.dex */
class Auth$3 extends Api$zza<zzkb, Api$ApiOptions$NoOptions> {
    Auth$3() {
    }

    @Override // com.google.android.gms.common.api.Api$zza
    public /* synthetic */ Api$zzb zza(Context context, Looper looper, zzf zzfVar, Api$ApiOptions$NoOptions api$ApiOptions$NoOptions, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        return zzc(context, looper, zzfVar, api$ApiOptions$NoOptions, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
    }

    public zzkb zzc(Context context, Looper looper, zzf zzfVar, Api$ApiOptions$NoOptions api$ApiOptions$NoOptions, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        return new zzkb(context, looper, zzfVar, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
    }
}
