package com.sonyericsson.cameracommon.intent;

import android.content.ComponentName;

public class IntentConstants {
    public static final ComponentName CAMERA_UI_COMPONENT_NAME = new ComponentName("com.sonyericsson.android.camera", "com.sonyericsson.android.camera.CameraActivity");
    public static final ComponentName CAMERA_UI_ONE_SHOT_COMPONENT_NAME = new ComponentName("com.sonyericsson.android.camera", "com.sonyericsson.android.camera.CameraActivityForCaptureOnlyPhoto");
    public static final String EXTRA_CALLING_ACTIVITY = "calling-activity";
    public static final String EXTRA_CALLING_MODE = "calling-mode";
    public static final String EXTRA_CALLING_PACKAGE = "calling-package";
    public static final String EXTRA_CAPTURING_MODE = "com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE";
    public static final String EXTRA_PERMISSIONS_LIST = "permissions_list";
    public static final String TAG = "IntentConstants";
}
