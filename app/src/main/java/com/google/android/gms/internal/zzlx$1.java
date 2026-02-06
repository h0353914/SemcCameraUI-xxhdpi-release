package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api$ApiOptions$NoOptions;
import com.google.android.gms.common.api.Api$zza;
import com.google.android.gms.common.api.Api$zzb;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;

class zzlx$1 extends Api$zza<zzmb, Api$ApiOptions$NoOptions> {
    zzlx$1() {
    }

    @Override // com.google.android.gms.common.api.Api$zza
    public /* synthetic */ Api$zzb zza(Context context, Looper looper, zzf zzfVar, Api$ApiOptions$NoOptions api$ApiOptions$NoOptions, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        return zze(context, looper, zzfVar, api$ApiOptions$NoOptions, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
    }

    public zzmb zze(Context context, Looper looper, zzf zzfVar, Api$ApiOptions$NoOptions api$ApiOptions$NoOptions, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        return new zzmb(context, looper, zzfVar, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
    }
}
