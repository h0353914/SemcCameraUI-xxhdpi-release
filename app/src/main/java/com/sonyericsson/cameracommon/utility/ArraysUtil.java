package com.sonyericsson.cameracommon.utility;











public class ArraysUtil {
    public static final String TAG = "ArraysUtil";

    public static void swap(float[] fArr, int i, int i2) {







        float f = fArr[i2];
        fArr[i2] = fArr[i];
        fArr[i] = f;
    }
}
