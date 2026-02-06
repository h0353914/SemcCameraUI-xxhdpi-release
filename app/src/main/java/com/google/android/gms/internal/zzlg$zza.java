package com.google.android.gms.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.signin.internal.AuthAccountResult;
import com.google.android.gms.signin.internal.zzb;
import java.lang.ref.WeakReference;

class zzlg$zza extends zzb {
    private final WeakReference<zzlg> zzabM;

    zzlg$zza(zzlg zzlgVar) {
        this.zzabM = new WeakReference<>(zzlgVar);
    }

    @Override // com.google.android.gms.signin.internal.zzb, com.google.android.gms.signin.internal.zze
    public void zza(ConnectionResult connectionResult, AuthAccountResult authAccountResult) {
        zzlg zzlgVar = this.zzabM.get();
        if (zzlgVar == null) {
            return;
        }
        zzlg.zzd(zzlgVar).zza(new zzlg$zza$1(this, zzlgVar, zzlgVar, connectionResult));
    }
}
