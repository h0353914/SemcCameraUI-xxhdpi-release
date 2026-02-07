package com.sonyericsson.android.camera.util;

import android.provider.Settings$System;
import com.sonyericsson.android.camera.CameraApplication;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;

/* JADX INFO: loaded from: classes.dex */
public class SettingUtil {
    private static final String SYSTEM_SETTING_SIDE_TOUCH = "somc.side_sense";
    public static final String TAG = "SettingUtil";

    public static boolean isSideSenseEnabled(boolean z) {
        return (!z || PlatformCapability.isSideTouchSupported()) && Settings$System.getInt(CameraApplication.getContext().getContentResolver(), "somc.side_sense", 0) == 1;
    }
}
