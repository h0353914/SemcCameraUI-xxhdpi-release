package com.google.android.gms.common.stats;

import com.google.android.gms.internal.zzlr;

/* JADX INFO: loaded from: classes.dex */
public final class zzc$zza {
    public static zzlr<Integer> zzahH = zzlr.zza("gms:common:stats:connections:level", Integer.valueOf(zzd.LOG_LEVEL_OFF));
    public static zzlr<String> zzahI = zzlr.zzu("gms:common:stats:connections:ignored_calling_processes", "");
    public static zzlr<String> zzahJ = zzlr.zzu("gms:common:stats:connections:ignored_calling_services", "");
    public static zzlr<String> zzahK = zzlr.zzu("gms:common:stats:connections:ignored_target_processes", "");
    public static zzlr<String> zzahL = zzlr.zzu("gms:common:stats:connections:ignored_target_services", "com.google.android.gms.auth.GetToken");
    public static zzlr<Long> zzahM = zzlr.zza("gms:common:stats:connections:time_out_duration", (Long) 600000L);
}
