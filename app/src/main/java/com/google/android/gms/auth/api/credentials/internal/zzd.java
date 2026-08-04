package com.google.android.gms.auth.api.credentials.internal;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzlb;

/* loaded from: /home/h/tmp/SemcCameraUI-xxhdpi-release/SemcCameraUI-xxhdpi-release/build/apk/classes.dex */
abstract class zzd<R extends Result> extends zzlb.zza<R, zze> {
    zzd(GoogleApiClient googleApiClient) {
        super(Auth.zzRF, googleApiClient);
    }

    protected abstract void zza(Context context, zzh zzhVar) throws DeadObjectException, RemoteException;

    @Override // com.google.android.gms.internal.zzlb.zza
    protected final void zza(zze zzeVar) throws DeadObjectException, RemoteException {
        zza(zzeVar.getContext(), zzeVar.zzpc());
    }
}
