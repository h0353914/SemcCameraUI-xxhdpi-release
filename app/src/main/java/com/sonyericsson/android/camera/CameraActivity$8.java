package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.storage.Storage$StorageReadyState;
import com.sonyericsson.cameracommon.storage.Storage$StorageReadyStateListener;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;

class CameraActivity$8 implements Storage$StorageReadyStateListener {
    final /* synthetic */ CameraActivity this$0;

    CameraActivity$8(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage$StorageReadyStateListener
    public void onStorageReadyStateChanged(Storage$StorageType storage$StorageType, Storage$StorageReadyState storage$StorageReadyState) {
        if (CameraActivity.access$1300(this.this$0).isStorageReadable()) {
            if (CamLog.DEBUG) {
                CamLog.d("onStorageReadyStateChanged: Storage can be readable, Got to setupAll");
            }
            CameraApplication.getUiThreadHandler().post(new CameraActivity$8$1(this, this));
        }
    }
}
