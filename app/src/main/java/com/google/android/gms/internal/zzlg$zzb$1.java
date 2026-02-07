package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ResolveAccountResponse;

/* JADX INFO: loaded from: classes.dex */
class zzlg$zzb$1 extends zzli$zzb {
    final /* synthetic */ zzlg zzabN;
    final /* synthetic */ ResolveAccountResponse zzabQ;
    final /* synthetic */ zzlg$zzb zzabR;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzlg$zzb$1(zzlg$zzb zzlg_zzb, zzlj zzljVar, zzlg zzlgVar, ResolveAccountResponse resolveAccountResponse) {
        super(zzljVar);
        this.zzabR = zzlg_zzb;
        this.zzabN = zzlgVar;
        this.zzabQ = resolveAccountResponse;
    }

    @Override // com.google.android.gms.internal.zzli$zzb
    public void zznO() {
        zzlg.zza(this.zzabN, this.zzabQ);
    }
}
