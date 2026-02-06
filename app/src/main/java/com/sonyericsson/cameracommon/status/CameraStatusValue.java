package com.sonyericsson.cameracommon.status;

import android.content.ContentValues;

public interface CameraStatusValue {
    String getKey();

    String getValueForDebug();

    int minRequiredVersion();

    void putInto(ContentValues contentValues, String str);
}
