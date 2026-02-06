package com.sonyericsson.android.camera;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.app.admin.DevicePolicyManager;
import android.content.Intent;
import android.os.Bundle;
import android.util.SparseArray;
import android.widget.TextView;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.activity.OnActivityResultListener;
import com.sonyericsson.cameracommon.utility.PermissionsUtil;

public class MultiWindowActivity extends Activity {
    private static final String TAG = "MultiWindowActivity";
    private SparseArray<OnActivityResultListener> mActivityResultListeners;
    private TextView mMultiWindowMessage;
    private final String[] REQUESTED_PERMISSIONS = getPermissionList();
    private boolean isForeground = false;
    private boolean grantedPermission = true;
    private boolean isCameraActivityLaunched = false;

    private String[] getPermissionList() {
        return new String[]{"android.permission.CAMERA", "android.permission.RECORD_AUDIO", "android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO"};
    }

    static /* synthetic */ boolean access$000(MultiWindowActivity multiWindowActivity) {
        return multiWindowActivity.grantedPermission;
    }

    static /* synthetic */ boolean access$002(MultiWindowActivity multiWindowActivity, boolean z) {
        multiWindowActivity.grantedPermission = z;
        return z;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131492902);
        String string = getResources().getString(getApplicationInfo().labelRes);
        this.mMultiWindowMessage = (TextView) findViewById(2131296475);
        this.mMultiWindowMessage.setText(String.format(getResources().getString(2131689955), string));
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.isForeground = true;
        if (checkAndRequestSelfPermissions(12, this.REQUESTED_PERMISSIONS)) {
            this.grantedPermission = false;
        } else {
            this.grantedPermission = true;
        }
        if (isInMultiWindowMode() || !this.grantedPermission || this.isCameraActivityLaunched) {
            return;
        }
        launchCamera();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.isForeground = false;
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        super.onMultiWindowModeChanged(z);
        if (this.isForeground && !z && this.grantedPermission && !this.isCameraActivityLaunched) {
            launchCamera();
        }
    }

    private void launchCamera() {
        if (checkCameraDisabled()) {
            this.mMultiWindowMessage.setText("");
            showCameraNotAvailableError();
            return;
        }
        this.isCameraActivityLaunched = true;
        Intent intent = new Intent(getIntent());
        String action = intent.getAction();
        if (action == "android.media.action.IMAGE_CAPTURE") {
            intent.setClass(getApplicationContext(), OneshotPhotoActivity.class);
            resetNewTaskFlag(intent);
        } else if (action == "android.media.action.VIDEO_CAPTURE") {
            intent.setClass(getApplicationContext(), OneshotVideoActivity.class);
            resetNewTaskFlag(intent);
        } else if (action == "android.media.action.STILL_IMAGE_CAMERA" || action == "android.media.action.VIDEO_CAMERA") {
            intent.setClass(getApplicationContext(), CameraActivity.class);
        } else {
            if (CamLog.VERBOSE) {
                CamLog.d("No oneshot action found : " + intent);
            }
            intent.setAction("android.intent.action.MAIN");
            intent.setClass(getApplicationContext(), CameraActivity.class);
            startActivity(intent);
            finish();
            return;
        }
        intent.addFlags(33554432);
        startActivity(intent);
        finish();
    }

    private void resetNewTaskFlag(Intent intent) {
        int flags = intent.getFlags();
        if ((268435456 & flags) != 0) {
            intent.setFlags(flags & (-268435457));
        }
    }

    public boolean checkAndRequestSelfPermissions(int i, String[] strArr) {
        boolean zCheckAndRequestSelfPermissions = PermissionsUtil.checkAndRequestSelfPermissions(this, i, strArr);
        if (zCheckAndRequestSelfPermissions) {
            addActivityResultListener(i, new MultiWindowActivity$1(this, strArr));
        }
        return zCheckAndRequestSelfPermissions;
    }

    private boolean addActivityResultListener(int i, OnActivityResultListener onActivityResultListener) {
        if (this.mActivityResultListeners == null) {
            this.mActivityResultListeners = new SparseArray<>();
        }
        if (this.mActivityResultListeners.get(i) != null) {
            return false;
        }
        this.mActivityResultListeners.put(i, onActivityResultListener);
        return true;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (this.mActivityResultListeners == null) {
            return;
        }
        OnActivityResultListener onActivityResultListener = this.mActivityResultListeners.get(i);
        if (onActivityResultListener != null && onActivityResultListener.onActivityResult(i, i2, intent)) {
            this.mActivityResultListeners.remove(i);
        }
        if (this.mActivityResultListeners.size() == 0) {
            this.mActivityResultListeners = null;
        }
    }

    private boolean checkCameraDisabled() {
        if (!((DevicePolicyManager) getSystemService("device_policy")).getCameraDisabled(null)) {
            return false;
        }
        CamLog.i("[CameraNotAvailable] startCameraOpen: dpm.getCameraDisabled(null)");
        return true;
    }

    private void showCameraNotAvailableError() {
        AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this);
        alertDialog$Builder.setTitle(2131689770);
        alertDialog$Builder.setMessage(2131690207);
        AlertDialog alertDialogCreate = alertDialog$Builder.create();
        alertDialogCreate.getWindow().addFlags(128);
        alertDialogCreate.setCancelable(true);
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.setOnCancelListener(new MultiWindowActivity$2(this));
        alertDialogCreate.show();
    }
}
