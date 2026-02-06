package com.google.android.gms.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient$ServerAuthCodeCallbacks;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzqx;
import java.util.List;
import java.util.concurrent.ExecutorService;

class zzi$zza extends zzd$zza {
    private final ExecutorService zzaVm;
    private final zzqx zzaaT;

    public zzi$zza(zzqx zzqxVar, ExecutorService executorService) {
        this.zzaaT = zzqxVar;
        this.zzaVm = executorService;
    }

    private GoogleApiClient$ServerAuthCodeCallbacks zzCg() throws RemoteException {
        return this.zzaaT.zzCg();
    }

    static /* synthetic */ GoogleApiClient$ServerAuthCodeCallbacks zza(zzi$zza zzi_zza) throws RemoteException {
        return zzi_zza.zzCg();
    }

    @Override // com.google.android.gms.signin.internal.zzd
    public void zza(String str, String str2, zzf zzfVar) throws RemoteException {
        this.zzaVm.submit(new zzi$zza$2(this, str, str2, zzfVar));
    }

    @Override // com.google.android.gms.signin.internal.zzd
    public void zza(String str, List<Scope> list, zzf zzfVar) throws RemoteException {
        this.zzaVm.submit(new zzi$zza$1(this, list, str, zzfVar));
    }
}
