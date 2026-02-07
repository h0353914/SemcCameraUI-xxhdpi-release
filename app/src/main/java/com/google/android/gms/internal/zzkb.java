package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzj;

/* JADX INFO: loaded from: classes.dex */
public class zzkb extends zzj<zzkd> {
    public zzkb(Context context, Looper looper, zzf zzfVar, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        super(context, looper, 74, zzfVar, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected /* synthetic */ IInterface zzW(IBinder iBinder) {
        return zzam(iBinder);
    }

    protected zzkd zzam(IBinder iBinder) {
        return zzkd$zza.zzao(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected String zzfK() {
        return "com.google.android.gms.auth.api.accountstatus.START";
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected String zzfL() {
        return "com.google.android.gms.auth.api.accountstatus.internal.IAccountStatusService";
    }
}
