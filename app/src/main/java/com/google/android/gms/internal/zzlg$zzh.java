package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api$zzb;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
class zzlg$zzh extends zzlg$zzi {
    final /* synthetic */ zzlg zzabL;
    private final ArrayList<Api$zzb> zzabX;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzlg$zzh(zzlg zzlgVar, ArrayList<Api$zzb> arrayList) {
        super(zzlgVar, null);
        this.zzabL = zzlgVar;
        this.zzabX = arrayList;
    }

    @Override // com.google.android.gms.internal.zzlg$zzi
    public void zznO() {
        Iterator<Api$zzb> it = this.zzabX.iterator();
        while (it.hasNext()) {
            it.next().zza(zzlg.zzg(this.zzabL));
        }
    }
}
