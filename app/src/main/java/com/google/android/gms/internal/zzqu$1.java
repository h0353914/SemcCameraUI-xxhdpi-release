package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api$zza;
import com.google.android.gms.common.api.Api$zzb;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.signin.internal.zzi;
import java.util.concurrent.Executors;

class zzqu$1 extends Api$zza<zzi, zzqx> {
    zzqu$1() {
    }

    @Override // com.google.android.gms.common.api.Api$zza
    public /* bridge */ /* synthetic */ Api$zzb zza(Context context, Looper looper, zzf zzfVar, zzqx zzqxVar, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        return zza2(context, looper, zzfVar, zzqxVar, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
    }

    /* JADX INFO: renamed from: zza, reason: avoid collision after fix types in other method */
    public zzi zza2(Context context, Looper looper, zzf zzfVar, zzqx zzqxVar, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        if (zzqxVar == null) {
            zzqxVar = zzqx.zzaUZ;
        }
        return new zzi(context, looper, true, zzfVar, zzqxVar, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener, Executors.newSingleThreadExecutor());
    }
}
