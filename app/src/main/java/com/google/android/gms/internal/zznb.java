package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zze;
import java.util.regex.Pattern;

/* loaded from: /home/h/tmp/SemcCameraUI-xxhdpi-release/SemcCameraUI-xxhdpi-release/build/apk/classes.dex */
public class zznb {
    private static final Pattern zzaio = Pattern.compile("\\$\\{(.*?)\\}");

    public static boolean zzcA(String str) {
        return str == null || zze.zzaeL.zzb(str);
    }
}
