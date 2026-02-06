package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInConfig;
import com.google.android.gms.auth.api.signin.internal.zzb;
import com.google.android.gms.common.api.Api$zza;
import com.google.android.gms.common.api.Api$zzb;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;

class Auth$6 extends Api$zza<zzb, GoogleSignInConfig> {
    Auth$6() {
    }

    /* JADX INFO: renamed from: zza, reason: avoid collision after fix types in other method */
    public zzb zza2(Context context, Looper looper, zzf zzfVar, GoogleSignInConfig googleSignInConfig, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        return new zzb(context, looper, zzfVar, googleSignInConfig, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.Api$zza
    public /* bridge */ /* synthetic */ Api$zzb zza(Context context, Looper looper, zzf zzfVar, GoogleSignInConfig googleSignInConfig, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        return zza2(context, looper, zzfVar, googleSignInConfig, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
    }
}
