package com.sonyericsson.android.camera.view.modeselector;

import android.net.Uri;

public class CameraCommonProviderConstants {
    public static final String AUTHORITY = "com.sonymobile.camerauicommon.provider";
    private static final Uri BASE_URI = Uri.parse("content://com.sonymobile.camerauicommon.provider");
    public static final Uri CAPTURINGMODE_CONTENT_URI = Uri.withAppendedPath(BASE_URI, "capturingmodes");
    public static final String CAPTURINGMODE_TABLE = "capturingmodes";

    private CameraCommonProviderConstants() {
    }
}
