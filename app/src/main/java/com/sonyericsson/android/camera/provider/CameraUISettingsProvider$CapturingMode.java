package com.sonyericsson.android.camera.provider;

import android.net.Uri;
import com.sonyericsson.android.camera.view.modeselector.CameraCommonProviderConstants;

interface CameraUISettingsProvider$CapturingMode {
    public static final Uri CONTENT_URI = CameraCommonProviderConstants.CAPTURINGMODE_CONTENT_URI;
    public static final String MIME_TYPE = "capturingmode";
    public static final String NAME = "capturingmodes";
    public static final String PATH = "capturingmodes";
}
