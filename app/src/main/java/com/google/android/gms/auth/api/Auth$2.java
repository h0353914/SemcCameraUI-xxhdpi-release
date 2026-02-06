package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.api.credentials.internal.zze;
import com.google.android.gms.common.api.Api$zza;
import com.google.android.gms.common.api.Api$zzb;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;

class Auth$2 extends Api$zza<zze, Auth$AuthCredentialsOptions> {
    Auth$2() {
    }

    /* JADX INFO: renamed from: zza, reason: avoid collision after fix types in other method */
    public zze zza2(Context context, Looper looper, zzf zzfVar, Auth$AuthCredentialsOptions auth$AuthCredentialsOptions, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        return new zze(context, looper, zzfVar, auth$AuthCredentialsOptions, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.Api$zza
    public /* bridge */ /* synthetic */ Api$zzb zza(Context context, Looper looper, zzf zzfVar, Auth$AuthCredentialsOptions auth$AuthCredentialsOptions, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        return zza2(context, looper, zzfVar, auth$AuthCredentialsOptions, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
    }
}
