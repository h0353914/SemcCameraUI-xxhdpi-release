package com.google.android.gms.common;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface$OnCancelListener;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager$NameNotFoundException;
import android.text.TextUtils;
import android.widget.ProgressBar;
import com.google.android.gms.R$string;
import com.google.android.gms.common.internal.zzn;

public class GoogleApiAvailability {
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    private static final GoogleApiAvailability zzaab = new GoogleApiAvailability();

    GoogleApiAvailability() {
    }

    public static GoogleApiAvailability getInstance() {
        return zzaab;
    }

    private String zzk(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("gcore_");
        sb.append(GOOGLE_PLAY_SERVICES_VERSION_CODE);
        sb.append("-");
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append("-");
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append("-");
        if (context != null) {
            try {
                sb.append(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
            } catch (PackageManager$NameNotFoundException unused) {
            }
        }
        return sb.toString();
    }

    public Dialog getErrorDialog(Activity activity, int i, int i2) {
        return GooglePlayServicesUtil.getErrorDialog(i, activity, i2);
    }

    public Dialog getErrorDialog(Activity activity, int i, int i2, DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        return GooglePlayServicesUtil.getErrorDialog(i, activity, i2, dialogInterface$OnCancelListener);
    }

    public PendingIntent getErrorResolutionPendingIntent(Context context, int i, int i2) {
        return zza(context, i, i2, null);
    }

    public final String getErrorString(int i) {
        return GooglePlayServicesUtil.getErrorString(i);
    }

    public String getOpenSourceSoftwareLicenseInfo(Context context) {
        return GooglePlayServicesUtil.getOpenSourceSoftwareLicenseInfo(context);
    }

    public int isGooglePlayServicesAvailable(Context context) {
        int iIsGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context);
        if (GooglePlayServicesUtil.zzd(context, iIsGooglePlayServicesAvailable)) {
            return 18;
        }
        return iIsGooglePlayServicesAvailable;
    }

    public final boolean isUserResolvableError(int i) {
        return GooglePlayServicesUtil.isUserRecoverableError(i);
    }

    public boolean showErrorDialogFragment(Activity activity, int i, int i2) {
        return GooglePlayServicesUtil.showErrorDialogFragment(i, activity, i2);
    }

    public boolean showErrorDialogFragment(Activity activity, int i, int i2, DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        return GooglePlayServicesUtil.showErrorDialogFragment(i, activity, i2, dialogInterface$OnCancelListener);
    }

    public void showErrorNotification(Context context, int i) {
        GooglePlayServicesUtil.showErrorNotification(i, context);
    }

    public Dialog zza(Activity activity, DialogInterface$OnCancelListener dialogInterface$OnCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, 16842874);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(activity);
        alertDialog$Builder.setView(progressBar);
        alertDialog$Builder.setMessage(activity.getResources().getString(R$string.common_google_play_services_updating_text, GooglePlayServicesUtil.zzaf(activity)));
        alertDialog$Builder.setTitle(R$string.common_google_play_services_updating_title);
        alertDialog$Builder.setPositiveButton("", (DialogInterface$OnClickListener) null);
        AlertDialog alertDialogCreate = alertDialog$Builder.create();
        GooglePlayServicesUtil.zza(activity, dialogInterface$OnCancelListener, "GooglePlayServicesUpdatingDialog", alertDialogCreate);
        return alertDialogCreate;
    }

    public PendingIntent zza(Context context, int i, int i2, String str) {
        Intent intentZza = zza(context, i, str);
        if (intentZza == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i2, intentZza, 268435456);
    }

    public Intent zza(Context context, int i, String str) {
        if (i == 42) {
            return zzn.zzpo();
        }
        switch (i) {
            case 1:
            case 2:
                return zzn.zzw("com.google.android.gms", zzk(context, str));
            case 3:
                return zzn.zzco("com.google.android.gms");
            default:
                return null;
        }
    }

    public void zzab(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        GooglePlayServicesUtil.zzaa(context);
    }

    public void zzac(Context context) {
        GooglePlayServicesUtil.zzac(context);
    }

    @Deprecated
    public Intent zzbi(int i) {
        return zza(null, i, null);
    }

    public boolean zzd(Context context, int i) {
        return GooglePlayServicesUtil.zzd(context, i);
    }

    public boolean zzj(Context context, String str) {
        return GooglePlayServicesUtil.zzj(context, str);
    }
}
