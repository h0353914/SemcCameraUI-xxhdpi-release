package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.internal.zzg;
import com.google.android.gms.common.api.Api$zza;
import com.google.android.gms.common.api.Api$zzb;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;

class Auth$5 extends Api$zza<zzg, com.google.android.gms.auth.api.signin.zzg> {
    Auth$5() {
    }

    /* JADX INFO: renamed from: zza, reason: avoid collision after fix types in other method */
    public zzg zza2(Context context, Looper looper, zzf zzfVar, com.google.android.gms.auth.api.signin.zzg zzgVar, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        return new zzg(context, looper, zzfVar, zzgVar, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.Api$zza
    public /* bridge */ /* synthetic */ Api$zzb zza(Context context, Looper looper, zzf zzfVar, com.google.android.gms.auth.api.signin.zzg zzgVar, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        return zza2(context, looper, zzfVar, zzgVar, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
    }
}
