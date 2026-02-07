package com.sonyericsson.cameracommon.utility;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class RegionConfig {
    private static final String CHINA_REGION_PACKAGE = "com.sonymobile.cta";

    public static boolean isChinaRegion(Context context) {
        return CommonUtility.isPackageExist("com.sonymobile.cta", context);
    }
}
