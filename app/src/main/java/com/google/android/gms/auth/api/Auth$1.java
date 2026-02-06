package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api$zza;
import com.google.android.gms.common.api.Api$zzb;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzki;

class Auth$1 extends Api$zza<zzki, Auth$zza> {
    Auth$1() {
    }

    @Override // com.google.android.gms.common.api.Api$zza
    public /* bridge */ /* synthetic */ Api$zzb zza(Context context, Looper looper, zzf zzfVar, Auth$zza auth$zza, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        return zza2(context, looper, zzfVar, auth$zza, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
    }

    /* JADX INFO: renamed from: zza, reason: avoid collision after fix types in other method */
    public zzki zza2(Context context, Looper looper, zzf zzfVar, Auth$zza auth$zza, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        return new zzki(context, looper, zzfVar, auth$zza, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
    }
}
