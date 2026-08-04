package com.google.android.gms.internal;

import java.util.HashMap;

/* loaded from: /home/h/tmp/SemcCameraUI-xxhdpi-release/SemcCameraUI-xxhdpi-release/build/apk/classes.dex */
public class zzmv {
    public static void zza(StringBuilder sb, HashMap<String, String> map) {
        String str;
        sb.append("{");
        boolean z = true;
        for (String str2 : map.keySet()) {
            if (z) {
                z = false;
            } else {
                sb.append(",");
            }
            String str3 = map.get(str2);
            sb.append("\"");
            sb.append(str2);
            sb.append("\":");
            if (str3 == null) {
                str = "null";
            } else {
                sb.append("\"");
                sb.append(str3);
                str = "\"";
            }
            sb.append(str);
        }
        sb.append("}");
    }
}
