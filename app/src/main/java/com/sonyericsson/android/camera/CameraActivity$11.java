package com.sonyericsson.android.camera;

import android.content.Intent;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.activity.OnActivityResultListener;
import com.sonyericsson.cameracommon.utility.PermissionsUtil;

class CameraActivity$11 implements OnActivityResultListener {
    final /* synthetic */ CameraActivity this$0;
    final /* synthetic */ CameraActivity$PermissionCheckCallback val$callback;
    final /* synthetic */ String[] val$permissions;

    CameraActivity$11(CameraActivity cameraActivity, String[] strArr, CameraActivity$PermissionCheckCallback cameraActivity$PermissionCheckCallback) {
        this.this$0 = cameraActivity;
        this.val$permissions = strArr;
        this.val$callback = cameraActivity$PermissionCheckCallback;
    }

    @Override // com.sonyericsson.cameracommon.activity.OnActivityResultListener
    public boolean onActivityResult(int i, int i2, Intent intent) {
        if (CamLog.VERBOSE) {
            CamLog.d("RequestPermissionActivity requestCode=" + i + ", result=" + i2);
        }
        switch (i) {
            case 12:
                if (i2 == -1) {
                    if (!PermissionsUtil.arePermissionsGranted(this.this$0, this.val$permissions)) {
                        this.this$0.finish();
                    } else {
                        this.this$0.recreate();
                    }
                }
                break;
        }
        if (this.val$callback != null) {
            this.val$callback.onPermissionChecked(this.val$permissions);
        }
        return true;
    }
}
