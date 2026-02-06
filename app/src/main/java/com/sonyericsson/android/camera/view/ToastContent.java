package com.sonyericsson.android.camera.view;

import android.app.Activity;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.rotatableview.RotatableToast;

public class ToastContent {
    public static final String TAG = "ToastContent";
    private int mSensorOrientation = 2;
    private RotatableToast mRotatableToast = null;

    public void setSensorOrientation(int i) {
        this.mSensorOrientation = i;
        if (this.mRotatableToast != null) {
            this.mRotatableToast.setSensorOrientation(i);
        }
    }

    public void show(Activity activity, ToastContent$ToastID toastContent$ToastID) {
        if (this.mRotatableToast != null) {
            this.mRotatableToast.hideImmediately();
            this.mRotatableToast = null;
        }
        if (activity == null) {
            return;
        }
        this.mRotatableToast = RotatableToast.inflate(activity);
        this.mRotatableToast.setDuration(ToastContent$ToastID.access$000(toastContent$ToastID));
        this.mRotatableToast.setTextResId(ToastContent$ToastID.access$100(toastContent$ToastID));
        this.mRotatableToast.setSensorOrientation(this.mSensorOrientation);
        this.mRotatableToast.setToastPosition(ToastContent$ToastID.access$200(toastContent$ToastID));
        this.mRotatableToast.show();
    }

    public void closeMessage() {
        if (CamLog.VERBOSE) {
            CamLog.d("closeMessage: , mToast: " + this.mRotatableToast);
        }
        if (this.mRotatableToast != null) {
            this.mRotatableToast.hideImmediately();
            this.mRotatableToast = null;
        }
    }
}
