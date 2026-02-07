package com.sonyericsson.cameracommon.utility;

import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public class BrandConfig {
    private static final String VERIZON_BRAND = "verizon";

    public static boolean isVerizonBrand() {
        return "verizon".equals(Build.BRAND);
    }
}
