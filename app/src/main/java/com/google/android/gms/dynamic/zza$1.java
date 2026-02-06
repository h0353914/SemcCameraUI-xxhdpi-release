package com.google.android.gms.dynamic;

import android.os.Bundle;
import java.util.Iterator;

/* JADX INFO: Add missing generic type declarations: [T] */
class zza$1<T> implements zzf<T> {
    final /* synthetic */ zza zzapr;

    zza$1(zza zzaVar) {
        this.zzapr = zzaVar;
    }

    /* JADX WARN: Incorrect types in method signature: (TT;)V */
    @Override // com.google.android.gms.dynamic.zzf
    public void zza(LifecycleDelegate lifecycleDelegate) {
        zza.zza(this.zzapr, lifecycleDelegate);
        Iterator it = zza.zza(this.zzapr).iterator();
        while (it.hasNext()) {
            ((zza$zza) it.next()).zzb(zza.zzb(this.zzapr));
        }
        zza.zza(this.zzapr).clear();
        zza.zza(this.zzapr, (Bundle) null);
    }
}
