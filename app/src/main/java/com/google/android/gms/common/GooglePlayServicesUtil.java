package com.google.android.gms.common;

import android.app.Activity;
import android.app.AlertDialog$Builder;
import android.app.AppOpsManager;
import android.app.Dialog;
import android.app.Notification;
import android.app.Notification$BigTextStyle;
import android.app.Notification$Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface$OnCancelListener;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller$SessionInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.res.Resources;
import android.net.Uri$Builder;
import android.os.Build;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.UserManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.NotificationCompat$Builder;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import com.google.android.gms.R$drawable;
import com.google.android.gms.R$string;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.internal.zzh;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzml;
import com.google.android.gms.internal.zzmx;
import java.io.InputStream;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class GooglePlayServicesUtil {
    public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";

    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
    public static boolean zzaal = false;
    public static boolean zzaam = false;
    private static int zzaan = -1;
    private static String zzaao;
    private static Integer zzaap;

    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = zzns();
    private static final Object zzpy = new Object();
    static final AtomicBoolean zzaaq = new AtomicBoolean();
    private static final AtomicBoolean zzaar = new AtomicBoolean();

    private GooglePlayServicesUtil() {
    }

    @Deprecated
    public static Dialog getErrorDialog(int i, Activity activity, int i2) {
        return getErrorDialog(i, activity, i2, null);
    }

    @Deprecated
    public static Dialog getErrorDialog(int i, Activity activity, int i2, DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        return zza(i, activity, null, i2, dialogInterface$OnCancelListener);
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        return GoogleApiAvailability.getInstance().getErrorResolutionPendingIntent(context, i, i2);
    }

    @Deprecated
    public static String getErrorString(int i) {
        return ConnectionResult.getStatusString(i);
    }

    @Deprecated
    public static String getOpenSourceSoftwareLicenseInfo(Context context) {
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(new Uri$Builder().scheme("android.resource").authority("com.google.android.gms").appendPath("raw").appendPath("oss_notice").build());
            try {
                try {
                    return new Scanner(inputStreamOpenInputStream).useDelimiter("\\A").next();
                } catch (NoSuchElementException unused) {
                    if (inputStreamOpenInputStream != null) {
                        inputStreamOpenInputStream.close();
                    }
                    return null;
                }
            } finally {
                if (inputStreamOpenInputStream != null) {
                    inputStreamOpenInputStream.close();
                }
            }
        } catch (Exception unused2) {
        }
    }

    public static Context getRemoteContext(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager$NameNotFoundException unused) {
            return null;
        }
    }

    public static Resources getRemoteResource(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager$NameNotFoundException unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b9  */
    @Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int isGooglePlayServicesAvailable(Context context) {
        String str;
        String str2;
        if (com.google.android.gms.common.internal.zzd.zzaeK) {
            return 0;
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            context.getResources().getString(R$string.common_google_play_services_unknown_issue);
        } catch (Throwable unused) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            zzad(context);
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo("com.google.android.gms", 64);
            zzd zzdVarZznu = zzd.zznu();
            if (zzml.zzcb(packageInfo.versionCode) || zzml.zzan(context)) {
                if (zzdVarZznu.zza(packageInfo, zzc$zzbz.zzaak) == null) {
                    str = "GooglePlayServicesUtil";
                    str2 = "Google Play services signature invalid.";
                    Log.w(str, str2);
                    return 9;
                }
                if (zzml.zzca(packageInfo.versionCode) >= zzml.zzca(GOOGLE_PLAY_SERVICES_VERSION_CODE)) {
                    Log.w("GooglePlayServicesUtil", "Google Play services out of date.  Requires " + GOOGLE_PLAY_SERVICES_VERSION_CODE + " but found " + packageInfo.versionCode);
                    return 2;
                }
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                if (applicationInfo == null) {
                    try {
                        applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                    } catch (PackageManager$NameNotFoundException e) {
                        Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.", e);
                        return 1;
                    }
                }
                return !applicationInfo.enabled ? 3 : 0;
            }
            try {
                zzc$zza zzc_zzaZza = zzdVarZznu.zza(packageManager.getPackageInfo("com.android.vending", 8256), zzc$zzbz.zzaak);
                if (zzc_zzaZza == null) {
                    Log.w("GooglePlayServicesUtil", "Google Play Store signature invalid.");
                    return 9;
                }
                if (zzdVarZznu.zza(packageInfo, zzc_zzaZza) == null) {
                    Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
                    return 9;
                }
                if (zzml.zzca(packageInfo.versionCode) >= zzml.zzca(GOOGLE_PLAY_SERVICES_VERSION_CODE)) {
                }
            } catch (PackageManager$NameNotFoundException unused2) {
                str = "GooglePlayServicesUtil";
                str2 = "Google Play Store is neither installed nor updating.";
            }
        } catch (PackageManager$NameNotFoundException unused3) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 1;
        }
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        if (i == 9) {
            return true;
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
                return true;
            default:
                return false;
        }
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int i, Activity activity, int i2) {
        return showErrorDialogFragment(i, activity, i2, null);
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int i, Activity activity, int i2, DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        return showErrorDialogFragment(i, activity, null, i2, dialogInterface$OnCancelListener);
    }

    public static boolean showErrorDialogFragment(int i, Activity activity, Fragment fragment, int i2, DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        Dialog dialogZza = zza(i, activity, fragment, i2, dialogInterface$OnCancelListener);
        if (dialogZza == null) {
            return false;
        }
        zza(activity, dialogInterface$OnCancelListener, "GooglePlayServicesErrorDialog", dialogZza);
        return true;
    }

    @Deprecated
    public static void showErrorNotification(int i, Context context) {
        if (zzml.zzan(context) && i == 2) {
            i = 42;
        }
        if (zzd(context, i) || zzf(context, i)) {
            zzae(context);
        } else {
            zza(i, context);
        }
    }

    private static Dialog zza(int i, Activity activity, Fragment fragment, int i2, DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        AlertDialog$Builder alertDialog$Builder = null;
        if (i == 0) {
            return null;
        }
        if (zzml.zzan(activity) && i == 2) {
            i = 42;
        }
        if (zzmx.zzqx()) {
            TypedValue typedValue = new TypedValue();
            activity.getTheme().resolveAttribute(16843529, typedValue, true);
            if ("Theme.Dialog.Alert".equals(activity.getResources().getResourceEntryName(typedValue.resourceId))) {
                alertDialog$Builder = new AlertDialog$Builder(activity, 5);
            }
        }
        if (alertDialog$Builder == null) {
            alertDialog$Builder = new AlertDialog$Builder(activity);
        }
        alertDialog$Builder.setMessage(zzg.zzc(activity, i, zzaf(activity)));
        if (dialogInterface$OnCancelListener != null) {
            alertDialog$Builder.setOnCancelListener(dialogInterface$OnCancelListener);
        }
        Intent intentZza = GoogleApiAvailability.getInstance().zza(activity, i, "d");
        zzh zzhVar = fragment == null ? new zzh(activity, intentZza, i2) : new zzh(fragment, intentZza, i2);
        String strZzh = zzg.zzh(activity, i);
        if (strZzh != null) {
            alertDialog$Builder.setPositiveButton(strZzh, zzhVar);
        }
        String strZzg = zzg.zzg(activity, i);
        if (strZzg != null) {
            alertDialog$Builder.setTitle(strZzg);
        }
        return alertDialog$Builder.create();
    }

    private static void zza(int i, Context context) {
        zza(i, context, null);
    }

    private static void zza(int i, Context context, String str) {
        Notification notificationBuild;
        int i2;
        Resources resources = context.getResources();
        String strZzaf = zzaf(context);
        String strZzi = zzg.zzi(context, i);
        if (strZzi == null) {
            strZzi = resources.getString(R$string.common_google_play_services_notification_ticker);
        }
        String strZzd = zzg.zzd(context, i, strZzaf);
        PendingIntent pendingIntentZza = GoogleApiAvailability.getInstance().zza(context, i, 0, "n");
        if (zzml.zzan(context)) {
            zzx.zzZ(zzmx.zzqy());
            notificationBuild = new Notification$Builder(context).setSmallIcon(R$drawable.common_ic_googleplayservices).setPriority(2).setAutoCancel(true).setStyle(new Notification$BigTextStyle().bigText(strZzi + " " + strZzd)).addAction(R$drawable.common_full_open_on_phone, resources.getString(R$string.common_open_on_phone), pendingIntentZza).build();
        } else {
            String string = resources.getString(R$string.common_google_play_services_notification_ticker);
            if (zzmx.zzqu()) {
                Notification$Builder autoCancel = new Notification$Builder(context).setSmallIcon(17301642).setContentTitle(strZzi).setContentText(strZzd).setContentIntent(pendingIntentZza).setTicker(string).setAutoCancel(true);
                if (zzmx.zzqC()) {
                    autoCancel.setLocalOnly(true);
                }
                if (zzmx.zzqy()) {
                    autoCancel.setStyle(new Notification$BigTextStyle().bigText(strZzd));
                    notificationBuild = autoCancel.build();
                } else {
                    notificationBuild = autoCancel.getNotification();
                }
                if (Build$VERSION.SDK_INT == 19) {
                    notificationBuild.extras.putBoolean("android.support.localOnly", true);
                }
            } else {
                notificationBuild = new NotificationCompat$Builder(context).setSmallIcon(17301642).setTicker(string).setWhen(System.currentTimeMillis()).setAutoCancel(true).setContentIntent(pendingIntentZza).setContentTitle(strZzi).setContentText(strZzd).build();
            }
        }
        if (zzbk(i)) {
            i2 = 10436;
            zzaaq.set(false);
        } else {
            i2 = 39789;
        }
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (str != null) {
            notificationManager.notify(str, i2, notificationBuild);
        } else {
            notificationManager.notify(i2, notificationBuild);
        }
    }

    public static void zza(Activity activity, DialogInterface$OnCancelListener dialogInterface$OnCancelListener, String str, Dialog dialog) {
        boolean z;
        try {
            z = activity instanceof FragmentActivity;
        } catch (NoClassDefFoundError unused) {
            z = false;
        }
        if (z) {
            SupportErrorDialogFragment.newInstance(dialog, dialogInterface$OnCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), str);
        } else {
            if (!zzmx.zzqu()) {
                throw new RuntimeException("This Activity does not support Fragments.");
            }
            ErrorDialogFragment.newInstance(dialog, dialogInterface$OnCancelListener).show(activity.getFragmentManager(), str);
        }
    }

    @Deprecated
    public static void zzaa(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        int iIsGooglePlayServicesAvailable = GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context);
        if (iIsGooglePlayServicesAvailable != 0) {
            Intent intentZza = GoogleApiAvailability.getInstance().zza(context, iIsGooglePlayServicesAvailable, "e");
            Log.e("GooglePlayServicesUtil", "GooglePlayServices not available due to error " + iIsGooglePlayServicesAvailable);
            if (intentZza != null) {
                throw new GooglePlayServicesRepairableException(iIsGooglePlayServicesAvailable, "Google Play Services not available", intentZza);
            }
            throw new GooglePlayServicesNotAvailableException(iIsGooglePlayServicesAvailable);
        }
    }

    @Deprecated
    public static void zzac(Context context) {
        if (zzaaq.getAndSet(true)) {
            return;
        }
        try {
            ((NotificationManager) context.getSystemService("notification")).cancel(10436);
        } catch (SecurityException unused) {
        }
    }

    private static void zzad(Context context) {
        Integer num;
        if (zzaar.get()) {
            return;
        }
        synchronized (zzpy) {
            if (zzaao == null) {
                zzaao = context.getPackageName();
                try {
                    Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
                    if (bundle != null) {
                        zzaap = Integer.valueOf(bundle.getInt("com.google.android.gms.version"));
                    } else {
                        zzaap = null;
                    }
                } catch (PackageManager$NameNotFoundException e) {
                    Log.wtf("GooglePlayServicesUtil", "This should never happen.", e);
                }
            } else if (!zzaao.equals(context.getPackageName())) {
                throw new IllegalArgumentException("isGooglePlayServicesAvailable should only be called with Context from your application's package. A previous call used package '" + zzaao + "' and this call used package '" + context.getPackageName() + "'.");
            }
            num = zzaap;
        }
        if (num == null) {
            throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
        }
        if (num.intValue() != GOOGLE_PLAY_SERVICES_VERSION_CODE) {
            throw new IllegalStateException("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected " + GOOGLE_PLAY_SERVICES_VERSION_CODE + " but found " + num + ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
        }
    }

    private static void zzae(Context context) {
        GooglePlayServicesUtil$zza googlePlayServicesUtil$zza = new GooglePlayServicesUtil$zza(context);
        googlePlayServicesUtil$zza.sendMessageDelayed(googlePlayServicesUtil$zza.obtainMessage(1), 120000L);
    }

    public static String zzaf(Context context) {
        ApplicationInfo applicationInfo;
        String str = context.getApplicationInfo().name;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        try {
            applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
        } catch (PackageManager$NameNotFoundException unused) {
            applicationInfo = null;
        }
        return applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo).toString() : packageName;
    }

    public static boolean zzag(Context context) {
        return zzmx.zzqD() && context.getPackageManager().hasSystemFeature("com.google.sidewinder");
    }

    public static boolean zzah(Context context) {
        Bundle applicationRestrictions;
        return zzmx.zzqA() && (applicationRestrictions = ((UserManager) context.getSystemService("user")).getApplicationRestrictions(context.getPackageName())) != null && "true".equals(applicationRestrictions.getString("restricted_profile"));
    }

    static /* synthetic */ void zzb(int i, Context context) {
        zza(i, context);
    }

    public static boolean zzb(Context context, int i, String str) {
        if (zzmx.zzqB()) {
            try {
                ((AppOpsManager) context.getSystemService("appops")).checkPackage(i, str);
                return true;
            } catch (SecurityException unused) {
                return false;
            }
        }
        String[] packagesForUid = context.getPackageManager().getPackagesForUid(i);
        if (str != null && packagesForUid != null) {
            for (String str2 : packagesForUid) {
                if (str.equals(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean zzb(PackageManager packageManager) {
        boolean z;
        synchronized (zzpy) {
            if (zzaan == -1) {
                try {
                    if (zzd.zznu().zza(packageManager.getPackageInfo("com.google.android.gms", 64), zzc.zzaad[1]) != null) {
                        zzaan = 1;
                    } else {
                        zzaan = 0;
                    }
                } catch (PackageManager$NameNotFoundException unused) {
                    zzaan = 0;
                }
                z = zzaan != 0;
            } else if (zzaan != 0) {
            }
        }
        return z;
    }

    @Deprecated
    public static boolean zzb(PackageManager packageManager, String str) {
        return zzd.zznu().zzb(packageManager, str);
    }

    @Deprecated
    public static Intent zzbj(int i) {
        return GoogleApiAvailability.getInstance().zza(null, i, null);
    }

    private static boolean zzbk(int i) {
        if (i == 18 || i == 42) {
            return true;
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
                return true;
            default:
                return false;
        }
    }

    public static boolean zzc(PackageManager packageManager) {
        return zzb(packageManager) || !zznt();
    }

    @Deprecated
    public static boolean zzd(Context context, int i) {
        if (i == 18) {
            return true;
        }
        if (i == 1) {
            return zzj(context, "com.google.android.gms");
        }
        return false;
    }

    public static boolean zze(Context context, int i) {
        return zzb(context, i, "com.google.android.gms") && zzb(context.getPackageManager(), "com.google.android.gms");
    }

    @Deprecated
    public static boolean zzf(Context context, int i) {
        if (i == 9) {
            return zzj(context, "com.android.vending");
        }
        return false;
    }

    static boolean zzj(Context context, String str) {
        if (zzmx.zzqD()) {
            Iterator<PackageInstaller$SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
            while (it.hasNext()) {
                if (str.equals(it.next().getAppPackageName())) {
                    return true;
                }
            }
        }
        if (zzah(context)) {
            return false;
        }
        try {
            return context.getPackageManager().getApplicationInfo(str, 8192).enabled;
        } catch (PackageManager$NameNotFoundException unused) {
            return false;
        }
    }

    private static int zzns() {
        return 8115000;
    }

    public static boolean zznt() {
        return zzaal ? zzaam : "user".equals(Build.TYPE);
    }
}
