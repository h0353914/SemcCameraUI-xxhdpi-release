package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.Auth$zza;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzj;

public final class zzki extends zzj<zzkk> {
    private final Bundle zzSa;

    public zzki(Context context, Looper looper, zzf zzfVar, Auth$zza auth$zza, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        super(context, looper, 16, zzfVar, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
        this.zzSa = auth$zza == null ? new Bundle() : auth$zza.zzlE();
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected /* synthetic */ IInterface zzW(IBinder iBinder) {
        return zzau(iBinder);
    }

    protected zzkk zzau(IBinder iBinder) {
        return zzkk$zza.zzaw(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected String zzfK() {
        return "com.google.android.gms.auth.service.START";
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected String zzfL() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    @Override // com.google.android.gms.common.internal.zzj, com.google.android.gms.common.api.Api$zzb
    public boolean zzlN() {
        zzf zzfVarZzpa = zzpa();
        return (TextUtils.isEmpty(zzfVarZzpa.getAccountName()) || zzfVarZzpa.zzb(Auth.PROXY_API).isEmpty()) ? false : true;
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected Bundle zzly() {
        return this.zzSa;
    }
}
