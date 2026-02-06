package com.google.android.gms.internal;

import com.google.android.gms.common.ConnectionResult;

class zzlg$zze$1 extends zzli$zzb {
    final /* synthetic */ ConnectionResult zzabV;
    final /* synthetic */ zzlg$zze zzabW;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzlg$zze$1(zzlg$zze zzlg_zze, zzlj zzljVar, ConnectionResult connectionResult) {
        super(zzljVar);
        this.zzabW = zzlg_zze;
        this.zzabV = connectionResult;
    }

    @Override // com.google.android.gms.internal.zzli$zzb
    public void zznO() {
        zzlg.zza(this.zzabW.zzabL, this.zzabV);
    }
}
