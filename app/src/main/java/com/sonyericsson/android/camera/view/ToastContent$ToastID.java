package com.sonyericsson.android.camera.view;

import com.sonyericsson.cameracommon.rotatableview.RotatableToast$ToastPosition;

public enum ToastContent$ToastID {
    USE_VOLUME_KEY_TO_ZOOM(2131690262, 0, RotatableToast$ToastPosition.TOP),
    NEEDS_TO_COOL_DOWN(2131689774, 1, RotatableToast$ToastPosition.TOP),
    CHANGE_DESTINATION_TO_SAVE(2131690094, 1, RotatableToast$ToastPosition.CENTER);

    private final int mDuration;
    private final int mMessageResourceID;
    private final RotatableToast$ToastPosition mPosition;

    static /* synthetic */ int access$000(ToastContent$ToastID toastContent$ToastID) {
        return toastContent$ToastID.mDuration;
    }

    static /* synthetic */ int access$100(ToastContent$ToastID toastContent$ToastID) {
        return toastContent$ToastID.mMessageResourceID;
    }

    static /* synthetic */ RotatableToast$ToastPosition access$200(ToastContent$ToastID toastContent$ToastID) {
        return toastContent$ToastID.mPosition;
    }

    ToastContent$ToastID(int i, int i2, RotatableToast$ToastPosition rotatableToast$ToastPosition) {
        this.mMessageResourceID = i;
        this.mDuration = i2;
        this.mPosition = rotatableToast$ToastPosition;
    }
}
