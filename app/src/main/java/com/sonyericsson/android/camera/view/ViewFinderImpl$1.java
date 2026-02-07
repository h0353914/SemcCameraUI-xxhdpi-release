package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.CameraApplication;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.storage.Storage$StorageReadyState;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageStateListener;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$1 implements Storage$StorageStateListener {
    final /* synthetic */ ViewFinderImpl this$0;

    @Override // com.sonyericsson.cameracommon.storage.Storage$StorageStateListener
    public void onStorageStateChanged(Storage$StorageType storage$StorageType, Storage$StorageState storage$StorageState, Storage$StorageReadyState storage$StorageReadyState) {
    }

    ViewFinderImpl$1(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage$StorageStateListener
    public void onStorageSizeChanged(Storage$StorageType storage$StorageType, long j) {
        if (CamLog.VERBOSE) {
            CamLog.d("onAvailableSizeUpdated: ");
        }
        CameraApplication.getUiThreadHandler().post(new ViewFinderImpl$1$1(this));
    }
}
