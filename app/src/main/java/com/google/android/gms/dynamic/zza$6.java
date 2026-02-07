package com.google.android.gms.dynamic;

/* JADX INFO: loaded from: classes.dex */
class zza$6 implements zza$zza {
    final /* synthetic */ zza zzapr;

    zza$6(zza zzaVar) {
        this.zzapr = zzaVar;
    }

    @Override // com.google.android.gms.dynamic.zza$zza
    public int getState() {
        return 4;
    }

    @Override // com.google.android.gms.dynamic.zza$zza
    public void zzb(LifecycleDelegate lifecycleDelegate) {
        zza.zzb(this.zzapr).onStart();
    }
}
