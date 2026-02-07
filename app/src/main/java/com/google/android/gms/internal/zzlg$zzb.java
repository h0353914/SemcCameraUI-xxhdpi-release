package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.zzt$zza;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class zzlg$zzb extends zzt$zza {
    private final WeakReference<zzlg> zzabM;

    zzlg$zzb(zzlg zzlgVar) {
        this.zzabM = new WeakReference<>(zzlgVar);
    }

    @Override // com.google.android.gms.common.internal.zzt
    public void zzb(ResolveAccountResponse resolveAccountResponse) {
        zzlg zzlgVar = this.zzabM.get();
        if (zzlgVar == null) {
            return;
        }
        zzlg.zzd(zzlgVar).zza(new zzlg$zzb$1(this, zzlgVar, zzlgVar, resolveAccountResponse));
    }
}
