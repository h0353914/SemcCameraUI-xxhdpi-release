package com.google.android.gms.signin.internal;

import android.os.RemoteException;
import android.util.Log;

class zzi$zza$2 implements Runnable {
    final /* synthetic */ String zzaVo;
    final /* synthetic */ zzf zzaVp;
    final /* synthetic */ zzi$zza zzaVq;
    final /* synthetic */ String zzaVr;

    zzi$zza$2(zzi$zza zzi_zza, String str, String str2, zzf zzfVar) {
        this.zzaVq = zzi_zza;
        this.zzaVo = str;
        this.zzaVr = str2;
        this.zzaVp = zzfVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.zzaVp.zzaq(zzi$zza.zza(this.zzaVq).onUploadServerAuthCode(this.zzaVo, this.zzaVr));
        } catch (RemoteException e) {
            Log.e("SignInClientImpl", "RemoteException thrown when processing uploadServerAuthCode callback", e);
        }
    }
}
