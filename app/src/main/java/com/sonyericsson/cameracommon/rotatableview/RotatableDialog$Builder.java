package com.sonyericsson.cameracommon.rotatableview;

import android.app.AlertDialog$Builder;
import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class RotatableDialog$Builder extends AlertDialog$Builder {
    private RotatableDialog$Cancelable mIsCancelable;
    private RotatableDialog$Cancelable mIsCancelableOnTouchOutside;
    protected View mScrollableView;
    private int mSensorOrientation;

    public RotatableDialog$Builder(Context context) {
        super(context);
        this.mScrollableView = null;
    }

    public RotatableDialog$Builder setViewAsScrollable(View view) {
        this.mScrollableView = view;
        return this;
    }

    public RotatableDialog$Builder setAlertIcon() {
        super.setIcon(17301543);
        return this;
    }

    public RotatableDialog$Builder setOrientation(int i) {
        this.mSensorOrientation = i;
        return this;
    }

    public RotatableDialog$Builder setCancelable(RotatableDialog$Cancelable rotatableDialog$Cancelable, RotatableDialog$Cancelable rotatableDialog$Cancelable2) {
        this.mIsCancelable = rotatableDialog$Cancelable;
        this.mIsCancelableOnTouchOutside = rotatableDialog$Cancelable2;
        return this;
    }

    public RotatableDialog createRotatableDialog() {
        RotatableDialog rotatableDialog = new RotatableDialog(super.create());
        rotatableDialog.setViewAsScrollable(this.mScrollableView);
        if (this.mIsCancelable != RotatableDialog$Cancelable.USE_DEFAULT) {
            rotatableDialog.setCancelable(this.mIsCancelable == RotatableDialog$Cancelable.TRUE);
        }
        if (this.mIsCancelableOnTouchOutside != RotatableDialog$Cancelable.USE_DEFAULT) {
            rotatableDialog.setCanceledOnTouchOutside(this.mIsCancelableOnTouchOutside == RotatableDialog$Cancelable.TRUE);
        }
        rotatableDialog.setOrientation(this.mSensorOrientation);
        return rotatableDialog;
    }
}
