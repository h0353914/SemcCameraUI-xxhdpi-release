package com.sonyericsson.android.camera.util;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.net.Uri$Builder;
import android.os.Build;
import android.os.Build$VERSION;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import com.sonymobile.help.HelpUtils;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class HelpGuide {
    private static final String CATEGORY_CAPTURE = "Capture";
    private static final String HELP_APP_PKG_NAME = "com.sonymobile.support";
    public static final String HELP_CATEGORY_CAPTURE = "Capture";
    public static final String TAG = "HelpGuide";

    public static void startHelpApp(Context context) {
        try {
            context.startActivity(getHelpAppStartIntent(context));
        } catch (ActivityNotFoundException e) {
            CamLog.e("startResolvedActivity failed.", e);
        }
    }

    public static void startOnlineHelp(Context context) {
        try {
            context.startActivity(getOnlineHelpIntent(context));
        } catch (ActivityNotFoundException e) {
            CamLog.e("startOnlineHelp failed.", e);
        }
    }

    public static boolean isHelpAppAvailable(Context context) {
        Intent helpAppStartIntent = getHelpAppStartIntent(context);
        PackageManager packageManager = context.getPackageManager();
        try {
            if (packageManager.getApplicationInfo("com.sonymobile.support", 0) == null) {
                return false;
            }
            ComponentName componentNameResolveActivity = helpAppStartIntent.resolveActivity(packageManager);
            if (componentNameResolveActivity != null) {
                if (CamLog.VERBOSE) {
                    CamLog.d("component:" + componentNameResolveActivity);
                }
                helpAppStartIntent.setComponent(componentNameResolveActivity);
            }
            return CommonUtility.isActivityAvailable(context, helpAppStartIntent);
        } catch (PackageManager$NameNotFoundException e) {
            CamLog.e("Somc in-device help app not found.", e);
            return false;
        }
    }

    private static Intent getHelpAppStartIntent(Context context) {
        Uri$Builder uri$BuilderAppendQueryParameter = HelpUtils.BASE_URI.buildUpon().appendQueryParameter("app", context.getPackageName()).appendQueryParameter("category", "Capture");
        HelpUtils.uriWithAddedVersionParameter(context, uri$BuilderAppendQueryParameter);
        if (CamLog.VERBOSE) {
            CamLog.d("Uri:" + uri$BuilderAppendQueryParameter.toString());
        }
        return new Intent("android.intent.action.VIEW", uri$BuilderAppendQueryParameter.build());
    }

    private static Intent getOnlineHelpIntent(Context context) {
        if (context == null) {
            return null;
        }
        Uri$Builder uri$Builder = new Uri$Builder();
        uri$Builder.scheme("https");
        uri$Builder.authority("ids.indevice.sonymobile.com");
        uri$Builder.path("in-device/getSoftwareSupport.htm");
        uri$Builder.appendQueryParameter("sourceAppName", context.getPackageName());
        uri$Builder.appendQueryParameter("sourceAppVersion", getVersionName(context));
        uri$Builder.appendQueryParameter("sourceAppView", "Capture");
        uri$Builder.appendQueryParameter("androidVersion", Build$VERSION.RELEASE);
        uri$Builder.appendQueryParameter("manufacturer", Build.MANUFACTURER);
        uri$Builder.appendQueryParameter("model", Build.MODEL);
        uri$Builder.appendQueryParameter("locale", Locale.getDefault().toString());
        uri$Builder.appendQueryParameter("output", "html");
        if (CamLog.VERBOSE) {
            CamLog.d("Uri:" + uri$Builder.toString());
        }
        return new Intent("android.intent.action.VIEW", uri$Builder.build());
    }

    private static String getVersionName(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager$NameNotFoundException unused) {
            return null;
        }
    }
}
