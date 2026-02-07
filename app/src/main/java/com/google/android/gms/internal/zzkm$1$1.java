package com.google.android.gms.internal;

import com.google.android.gms.auth.api.proxy.ProxyResponse;

/* JADX INFO: loaded from: classes.dex */
class zzkm$1$1 extends zzkh {
    final /* synthetic */ zzkm$1 zzSS;

    zzkm$1$1(zzkm$1 zzkm_1) {
        this.zzSS = zzkm_1;
    }

    @Override // com.google.android.gms.internal.zzkh, com.google.android.gms.internal.zzkj
    public void zza(ProxyResponse proxyResponse) {
        this.zzSS.zzb(new zzkn(proxyResponse));
    }
}
