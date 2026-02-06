package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.Api$zzd;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;

public class zzac<T extends IInterface> extends zzj<T> {
    private final Api$zzd<T> zzagt;

    public zzac(Context context, Looper looper, int i, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener, zzf zzfVar, Api$zzd api$zzd) {
        super(context, looper, i, zzfVar, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
        this.zzagt = api$zzd;
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected T zzW(IBinder iBinder) {
        return (T) this.zzagt.zzW(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected void zzc(int i, T t) {
        this.zzagt.zza(i, t);
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected String zzfK() {
        return this.zzagt.zzfK();
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected String zzfL() {
        return this.zzagt.zzfL();
    }
}
