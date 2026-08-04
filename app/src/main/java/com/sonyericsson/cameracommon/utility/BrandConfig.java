package com.sonyericsson.cameracommon.utility;

import android.os.Build;









public class BrandConfig {
    private static final String VERIZON_BRAND = "verizon";

    public static boolean isVerizonBrand() {
        String str = VERIZON_BRAND;
        return str.equals(Build.BRAND);
    }
}
