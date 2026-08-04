package com.sonymobile.cameracommon.vanilla.wearablebridge.common;

import android.content.Context;
import com.google.android.gms.common.GooglePlayServicesUtil;

public class WearableUtil {
    public static boolean isGooglePlayServiceAvailable(Context context, int i) {
        int result = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context);
        if (result != 0) {
            return false;
        }
        if (GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE < i) {
            return false;
        }
        return true;
    }

    public static boolean isGooglePlayServiceAvailable(Context context) {
        return isGooglePlayServiceAvailable(context, -1);
    }
}
