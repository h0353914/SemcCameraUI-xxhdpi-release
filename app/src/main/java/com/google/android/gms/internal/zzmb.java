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
public class zzmb extends zzj<zzmd> {
    public zzmb(Context context, Looper looper, zzf zzfVar, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        super(context, looper, 39, zzfVar, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected /* synthetic */ IInterface zzW(IBinder iBinder) {
        return zzaO(iBinder);
    }

    protected zzmd zzaO(IBinder iBinder) {
        return zzmd$zza.zzaQ(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzj
    public String zzfK() {
        return "com.google.android.gms.common.service.START";
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected String zzfL() {
        return "com.google.android.gms.common.internal.service.ICommonService";
    }
}
