package com.google.android.gms.internal;

import com.google.android.gms.common.ConnectionResult;

class zzlg$zza$1 extends zzli$zzb {
    final /* synthetic */ zzlg zzabN;
    final /* synthetic */ ConnectionResult zzabO;
    final /* synthetic */ zzlg$zza zzabP;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzlg$zza$1(zzlg$zza zzlg_zza, zzlj zzljVar, zzlg zzlgVar, ConnectionResult connectionResult) {
        super(zzljVar);
        this.zzabP = zzlg_zza;
        this.zzabN = zzlgVar;
        this.zzabO = connectionResult;
    }

    @Override // com.google.android.gms.internal.zzli$zzb
    public void zznO() {
        zzlg.zzc(this.zzabN, this.zzabO);
    }
}
