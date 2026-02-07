package com.google.android.gms.playlog.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzse;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class zzf extends zzj<zza> {
    private final String zzQe;
    private final zzd zzaRZ;
    private final zzb zzaSa;
    private boolean zzaSb;
    private final Object zzpd;

    public zzf(Context context, Looper looper, zzd zzdVar, com.google.android.gms.common.internal.zzf zzfVar) {
        super(context, looper, 24, zzfVar, zzdVar, zzdVar);
        this.zzQe = context.getPackageName();
        this.zzaRZ = (zzd) zzx.zzw(zzdVar);
        this.zzaRZ.zza(this);
        this.zzaSa = new zzb();
        this.zzpd = new Object();
        this.zzaSb = true;
    }

    private void zzBv() {
        com.google.android.gms.common.internal.zzb.zzZ(!this.zzaSb);
        if (this.zzaSa.isEmpty()) {
            return;
        }
        PlayLoggerContext playLoggerContext = null;
        try {
            ArrayList arrayList = new ArrayList();
            for (zzb$zza zzb_zza : this.zzaSa.zzBt()) {
                if (zzb_zza.zzaRO != null) {
                    zzpc().zza(this.zzQe, zzb_zza.zzaRM, zzse.zzf(zzb_zza.zzaRO));
                } else {
                    if (!zzb_zza.zzaRM.equals(playLoggerContext)) {
                        if (!arrayList.isEmpty()) {
                            zzpc().zza(this.zzQe, playLoggerContext, arrayList);
                            arrayList.clear();
                        }
                        playLoggerContext = zzb_zza.zzaRM;
                    }
                    arrayList.add(zzb_zza.zzaRN);
                }
            }
            if (!arrayList.isEmpty()) {
                zzpc().zza(this.zzQe, playLoggerContext, arrayList);
            }
            this.zzaSa.clear();
        } catch (RemoteException unused) {
            Log.e("PlayLoggerImpl", "Couldn't send cached log events to AndroidLog service.  Retaining in memory cache.");
        }
    }

    private void zzc(PlayLoggerContext playLoggerContext, LogEvent logEvent) {
        this.zzaSa.zza(playLoggerContext, logEvent);
    }

    private void zzd(PlayLoggerContext playLoggerContext, LogEvent logEvent) {
        String str;
        String str2;
        try {
            zzBv();
            zzpc().zza(this.zzQe, playLoggerContext, logEvent);
        } catch (RemoteException unused) {
            str = "PlayLoggerImpl";
            str2 = "Couldn't send log event.  Will try caching.";
            Log.e(str, str2);
            zzc(playLoggerContext, logEvent);
        } catch (IllegalStateException unused2) {
            str = "PlayLoggerImpl";
            str2 = "Service was disconnected.  Will try caching.";
            Log.e(str, str2);
            zzc(playLoggerContext, logEvent);
        }
    }

    public void start() {
        synchronized (this.zzpd) {
            if (!isConnecting() && !isConnected()) {
                this.zzaRZ.zzao(true);
                zzoZ();
            }
        }
    }

    public void stop() {
        synchronized (this.zzpd) {
            this.zzaRZ.zzao(false);
            disconnect();
        }
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected /* synthetic */ IInterface zzW(IBinder iBinder) {
        return zzdA(iBinder);
    }

    void zzap(boolean z) {
        synchronized (this.zzpd) {
            boolean z2 = this.zzaSb;
            this.zzaSb = z;
            if (z2 && !this.zzaSb) {
                zzBv();
            }
        }
    }

    public void zzb(PlayLoggerContext playLoggerContext, LogEvent logEvent) {
        synchronized (this.zzpd) {
            if (this.zzaSb) {
                zzc(playLoggerContext, logEvent);
            } else {
                zzd(playLoggerContext, logEvent);
            }
        }
    }

    protected zza zzdA(IBinder iBinder) {
        return zza$zza.zzdz(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected String zzfK() {
        return "com.google.android.gms.playlog.service.START";
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected String zzfL() {
        return "com.google.android.gms.playlog.internal.IPlayLogService";
    }
}
