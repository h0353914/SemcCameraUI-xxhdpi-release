package com.google.android.gms.internal;

/* JADX INFO: loaded from: classes.dex */
class zzlf$1 extends zzli$zzb {
    final /* synthetic */ zzlf zzabs;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzlf$1(zzlf zzlfVar, zzlj zzljVar) {
        super(zzljVar);
        this.zzabs = zzlfVar;
    }

    @Override // com.google.android.gms.internal.zzli$zzb
    public void zznO() {
        this.zzabs.onConnectionSuspended(1);
    }
}
