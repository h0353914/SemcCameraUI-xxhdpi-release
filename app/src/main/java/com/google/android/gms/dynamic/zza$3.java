package com.google.android.gms.dynamic;

import android.os.Bundle;

class zza$3 implements zza$zza {
    final /* synthetic */ zza zzapr;
    final /* synthetic */ Bundle zzapu;

    zza$3(zza zzaVar, Bundle bundle) {
        this.zzapr = zzaVar;
        this.zzapu = bundle;
    }

    @Override // com.google.android.gms.dynamic.zza$zza
    public int getState() {
        return 1;
    }

    @Override // com.google.android.gms.dynamic.zza$zza
    public void zzb(LifecycleDelegate lifecycleDelegate) {
        zza.zzb(this.zzapr).onCreate(this.zzapu);
    }
}
