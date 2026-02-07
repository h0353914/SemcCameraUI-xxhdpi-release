package com.google.android.gms.playlog.internal;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzsi$zzd;

/* JADX INFO: loaded from: classes.dex */
public class zzb$zza {
    public final PlayLoggerContext zzaRM;
    public final LogEvent zzaRN;
    public final zzsi$zzd zzaRO;

    private zzb$zza(PlayLoggerContext playLoggerContext, LogEvent logEvent) {
        this.zzaRM = (PlayLoggerContext) zzx.zzw(playLoggerContext);
        this.zzaRN = (LogEvent) zzx.zzw(logEvent);
        this.zzaRO = null;
    }

    /* synthetic */ zzb$zza(PlayLoggerContext playLoggerContext, LogEvent logEvent, zzb$1 zzb_1) {
        this(playLoggerContext, logEvent);
    }
}
