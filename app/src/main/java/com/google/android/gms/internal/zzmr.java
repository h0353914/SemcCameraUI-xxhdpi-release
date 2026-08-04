package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;

/* loaded from: /home/h/tmp/SemcCameraUI-xxhdpi-release/SemcCameraUI-xxhdpi-release/build/apk/classes.dex */
public final class zzmr {
    private static IntentFilter zzail = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    public static int zzao(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            return -1;
        }
        Intent intentRegisterReceiver = context.getApplicationContext().registerReceiver(null, zzail);
        return ((zzmx.zzqC() ? (((PowerManager) context.getSystemService("power")).isInteractive() ? 1 : 0) : ((PowerManager) context.getSystemService("power")).isScreenOn() ? 1 : 0) << 1) | (((intentRegisterReceiver == null ? 0 : intentRegisterReceiver.getIntExtra("plugged", 0)) & 7) != 0 ? 1 : 0);
    }

    public static float zzap(Context context) {
        Intent r3 = context.getApplicationContext().registerReceiver(null, zzail);
        if (r3 == null) {
            return Float.NaN;
        }
        return r3.getIntExtra("level", -1) / r3.getIntExtra("scale", -1);
    }
}
