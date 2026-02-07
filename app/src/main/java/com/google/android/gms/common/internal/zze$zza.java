package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class zze$zza extends zze {
    List<zze> zzafg;

    zze$zza(List<zze> list) {
        this.zzafg = list;
    }

    @Override // com.google.android.gms.common.internal.zze
    public zze zza(zze zzeVar) {
        ArrayList arrayList = new ArrayList(this.zzafg);
        arrayList.add(zzx.zzw(zzeVar));
        return new zze$zza(arrayList);
    }

    @Override // com.google.android.gms.common.internal.zze
    public boolean zzd(char c) {
        Iterator<zze> it = this.zzafg.iterator();
        while (it.hasNext()) {
            if (it.next().zzd(c)) {
                return true;
            }
        }
        return false;
    }
}
