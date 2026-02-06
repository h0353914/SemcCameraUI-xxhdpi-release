package com.google.android.gms.common;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.util.Base64;
import android.util.Log;

public class zzd {
    private static final zzd zzaas = new zzd();

    private zzd() {
    }

    private boolean zza(PackageInfo packageInfo, boolean z) {
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return false;
        }
        zzc$zzb zzc_zzb = new zzc$zzb(packageInfo.signatures[0].toByteArray());
        if ((z ? zzc.zznp() : zzc.zznq()).contains(zzc_zzb)) {
            return true;
        }
        if (Log.isLoggable("GoogleSignatureVerifier", 2)) {
            Log.v("GoogleSignatureVerifier", "Signature not valid.  Found: \n" + Base64.encodeToString(zzc_zzb.getBytes(), 0));
        }
        return false;
    }

    public static zzd zznu() {
        return zzaas;
    }

    zzc$zza zza(PackageInfo packageInfo, zzc$zza... zzc_zzaArr) {
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        zzc$zzb zzc_zzb = new zzc$zzb(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < zzc_zzaArr.length; i++) {
            if (zzc_zzaArr[i].equals(zzc_zzb)) {
                return zzc_zzaArr[i];
            }
        }
        if (Log.isLoggable("GoogleSignatureVerifier", 2)) {
            Log.v("GoogleSignatureVerifier", "Signature not valid.  Found: \n" + Base64.encodeToString(zzc_zzb.getBytes(), 0));
        }
        return null;
    }

    public boolean zza(PackageManager packageManager, PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (GooglePlayServicesUtil.zzc(packageManager)) {
            return zza(packageInfo, true);
        }
        boolean zZza = zza(packageInfo, false);
        if (!zZza && zza(packageInfo, true)) {
            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        }
        return zZza;
    }

    public boolean zzb(PackageManager packageManager, String str) {
        try {
            return zza(packageManager, packageManager.getPackageInfo(str, 64));
        } catch (PackageManager$NameNotFoundException unused) {
            if (!Log.isLoggable("GoogleSignatureVerifier", 3)) {
                return false;
            }
            Log.d("GoogleSignatureVerifier", "Package manager can't find package " + str + ", defaulting to false");
            return false;
        }
    }
}
