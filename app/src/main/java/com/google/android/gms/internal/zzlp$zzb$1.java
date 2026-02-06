package com.google.android.gms.internal;

import android.app.Dialog;

class zzlp$zzb$1 extends zzll {
    final /* synthetic */ Dialog zzacW;
    final /* synthetic */ zzlp$zzb zzacX;

    zzlp$zzb$1(zzlp$zzb zzlp_zzb, Dialog dialog) {
        this.zzacX = zzlp_zzb;
        this.zzacW = dialog;
    }

    @Override // com.google.android.gms.internal.zzll
    protected void zzoi() {
        zzlp.zzc(this.zzacX.zzacT);
        this.zzacW.dismiss();
    }
}
