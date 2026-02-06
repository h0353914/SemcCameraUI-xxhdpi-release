package com.google.android.gms.signin.internal;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

class zzi$zza$1 implements Runnable {
    final /* synthetic */ List zzaVn;
    final /* synthetic */ String zzaVo;
    final /* synthetic */ zzf zzaVp;
    final /* synthetic */ zzi$zza zzaVq;

    zzi$zza$1(zzi$zza zzi_zza, List list, String str, zzf zzfVar) {
        this.zzaVq = zzi_zza;
        this.zzaVn = list;
        this.zzaVo = str;
        this.zzaVp = zzfVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            GoogleApiClient$ServerAuthCodeCallbacks$CheckResult googleApiClient$ServerAuthCodeCallbacks$CheckResultOnCheckServerAuthorization = zzi$zza.zza(this.zzaVq).onCheckServerAuthorization(this.zzaVo, Collections.unmodifiableSet(new HashSet(this.zzaVn)));
            this.zzaVp.zza(new CheckServerAuthResult(googleApiClient$ServerAuthCodeCallbacks$CheckResultOnCheckServerAuthorization.zznD(), googleApiClient$ServerAuthCodeCallbacks$CheckResultOnCheckServerAuthorization.zznE()));
        } catch (RemoteException e) {
            Log.e("SignInClientImpl", "RemoteException thrown when processing checkServerAuthorization callback", e);
        }
    }
}
