package com.sonyericsson.cameracommon.mediasaving.location;

import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.CameraActivity$PermissionCheckCallback;
import com.sonyericsson.android.camera.view.ViewFinderImpl;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.cameracommon.utility.PermissionsUtil;

/* JADX INFO: loaded from: classes.dex */
class GeotagManager$1 implements CameraActivity$PermissionCheckCallback {
    final /* synthetic */ GeotagManager this$0;
    final /* synthetic */ CameraActivity val$activity;
    final /* synthetic */ ViewFinderImpl val$viewFinder;

    GeotagManager$1(GeotagManager geotagManager, CameraActivity cameraActivity, ViewFinderImpl viewFinderImpl) {
        this.this$0 = geotagManager;
        this.val$activity = cameraActivity;
        this.val$viewFinder = viewFinderImpl;
    }

    @Override // com.sonyericsson.android.camera.CameraActivity$PermissionCheckCallback
    public boolean onPermissionChecked(String[] strArr) {
        if (!PermissionsUtil.arePermissionsGranted(this.val$activity, strArr) || GeotagManager.access$000(this.val$activity) || this.val$viewFinder == null) {
            return true;
        }
        this.val$viewFinder.showMessageDialog(DialogId.LOCATION_SERVICE_DISABLE_ON_CONTEXTUAL_SETTINGS, new Object[0]);
        return true;
    }
}
