package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInConfig;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzj;

/* JADX INFO: loaded from: classes.dex */
public class zzb extends zzj<zze> {
    private final GoogleSignInConfig zzTn;

    public zzb(Context context, Looper looper, com.google.android.gms.common.internal.zzf zzfVar, GoogleSignInConfig googleSignInConfig, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        super(context, looper, 91, zzfVar, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
        this.zzTn = googleSignInConfig == null ? GoogleSignInConfig.zzTh : googleSignInConfig;
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected /* synthetic */ IInterface zzW(IBinder iBinder) {
        return zzax(iBinder);
    }

    protected zze zzax(IBinder iBinder) {
        return zze$zza.zzaz(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected String zzfK() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected String zzfL() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }
}
