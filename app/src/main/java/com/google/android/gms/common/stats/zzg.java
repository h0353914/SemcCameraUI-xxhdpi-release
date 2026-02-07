package com.google.android.gms.common.stats;

import android.os.PowerManager$WakeLock;
import android.os.Process;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class zzg {
    public static String zza(PowerManager$WakeLock powerManager$WakeLock, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(String.valueOf((((long) Process.myPid()) << 32) | ((long) System.identityHashCode(powerManager$WakeLock))));
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }
}
