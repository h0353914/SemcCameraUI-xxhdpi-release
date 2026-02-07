package com.sonyericsson.cameracommon.status.global;

import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.cameracommon.status.CameraIdArrayValue;
import com.sonyericsson.cameracommon.status.GlobalCameraStatusValue;

/* JADX INFO: loaded from: classes.dex */
public class BuiltInCameraIds extends CameraIdArrayValue implements GlobalCameraStatusValue {
    public static final CameraInfo$CameraId[] DEFAULT_VALUE = new CameraInfo$CameraId[0];
    public static final String KEY = "built_in_camera_ids";
    private static int REQUIRED_PROVIDER_VERSION = 10;

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public String getKey() {
        return "built_in_camera_ids";
    }

    public BuiltInCameraIds(CameraInfo$CameraId... cameraInfo$CameraIdArr) {
        super(cameraInfo$CameraIdArr);
    }

    @Override // com.sonyericsson.cameracommon.status.CameraStatusValue
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }
}
