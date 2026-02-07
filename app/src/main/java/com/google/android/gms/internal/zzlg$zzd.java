package com.google.android.gms.internal;

import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient$zza;
import com.google.android.gms.common.internal.zzx;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class zzlg$zzd implements GoogleApiClient$zza {
    private final WeakReference<zzlg> zzabM;
    private final Api<?> zzabS;
    private final int zzabT;

    public zzlg$zzd(zzlg zzlgVar, Api<?> api, int i) {
        this.zzabM = new WeakReference<>(zzlgVar);
        this.zzabS = api;
        this.zzabT = i;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient$zza
    public void zza(ConnectionResult connectionResult) {
        zzlg zzlgVar = this.zzabM.get();
        if (zzlgVar == null) {
            return;
        }
        zzx.zza(Looper.myLooper() == zzlg.zzd(zzlgVar).getLooper(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
        zzlg.zzc(zzlgVar).lock();
        try {
            if (zzlg.zza(zzlgVar, 0)) {
                if (!connectionResult.isSuccess()) {
                    zzlg.zza(zzlgVar, connectionResult, this.zzabS, this.zzabT);
                }
                if (zzlg.zzk(zzlgVar)) {
                    zzlg.zzl(zzlgVar);
                }
            }
        } finally {
            zzlg.zzc(zzlgVar).unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient$zza
    public void zzb(ConnectionResult connectionResult) {
        zzlg zzlgVar = this.zzabM.get();
        if (zzlgVar == null) {
            return;
        }
        zzx.zza(Looper.myLooper() == zzlg.zzd(zzlgVar).getLooper(), "onReportAccountValidation must be called on the GoogleApiClient handler thread");
        zzlg.zzc(zzlgVar).lock();
        try {
            if (zzlg.zza(zzlgVar, 1)) {
                if (!connectionResult.isSuccess()) {
                    zzlg.zza(zzlgVar, connectionResult, this.zzabS, this.zzabT);
                }
                if (zzlg.zzk(zzlgVar)) {
                    zzlg.zzm(zzlgVar);
                }
            }
        } finally {
            zzlg.zzc(zzlgVar).unlock();
        }
    }
}
