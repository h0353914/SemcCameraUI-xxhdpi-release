

















package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.device.CameraInfo;

public class ActionMode {
    public final CameraInfo.CameraId mCameraId;
    public final boolean mIsOneShot;
    public final int mType;

    public ActionMode(boolean z, int i, CameraInfo.CameraId cameraId) {
        this.mIsOneShot = z;
        this.mType = i;
        this.mCameraId = cameraId;
    }
}
