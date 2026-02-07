package com.google.android.gms.dynamic;

import android.app.Activity;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
class zza$2 implements zza$zza {
    final /* synthetic */ zza zzapr;
    final /* synthetic */ Activity zzaps;
    final /* synthetic */ Bundle zzapt;
    final /* synthetic */ Bundle zzapu;

    zza$2(zza zzaVar, Activity activity, Bundle bundle, Bundle bundle2) {
        this.zzapr = zzaVar;
        this.zzaps = activity;
        this.zzapt = bundle;
        this.zzapu = bundle2;
    }

    @Override // com.google.android.gms.dynamic.zza$zza
    public int getState() {
        return 0;
    }

    @Override // com.google.android.gms.dynamic.zza$zza
    public void zzb(LifecycleDelegate lifecycleDelegate) {
        zza.zzb(this.zzapr).onInflate(this.zzaps, this.zzapt, this.zzapu);
    }
}
