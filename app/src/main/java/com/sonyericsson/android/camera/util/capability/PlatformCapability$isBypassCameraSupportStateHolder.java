package com.sonyericsson.android.camera.util.capability;

import com.sonyericsson.android.camera.util.CamLog;

class PlatformCapability$isBypassCameraSupportStateHolder {
    private static final boolean sIsSupported = isSupported();

    private PlatformCapability$isBypassCameraSupportStateHolder() {
    }

    static /* synthetic */ boolean access$300() {
        return sIsSupported;
    }

    private static boolean isSupported() {
        try {
            Class.forName("com.sonymobile.imageprocessor.bypasscamera2.BypassCamera");
            return true;
        } catch (ClassNotFoundException unused) {
            CamLog.i("BypassCamera is NOT SUPPORTED");
            return false;
        }
    }
}
