package com.google.android.gms.auth.api.credentials.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.Auth$AuthCredentialsOptions;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzj;

/* JADX INFO: loaded from: classes.dex */
public final class zze extends zzj<zzh> {
    private final Auth$AuthCredentialsOptions zzSJ;

    public zze(Context context, Looper looper, com.google.android.gms.common.internal.zzf zzfVar, Auth$AuthCredentialsOptions auth$AuthCredentialsOptions, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        super(context, looper, 68, zzfVar, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
        this.zzSJ = auth$AuthCredentialsOptions;
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected /* synthetic */ IInterface zzW(IBinder iBinder) {
        return zzar(iBinder);
    }

    protected zzh zzar(IBinder iBinder) {
        return zzh$zza.zzat(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected String zzfK() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected String zzfL() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected Bundle zzly() {
        return this.zzSJ == null ? new Bundle() : this.zzSJ.zzly();
    }
}
