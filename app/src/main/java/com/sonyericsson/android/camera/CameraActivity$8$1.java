package com.sonyericsson.android.camera;

import com.sonyericsson.cameracommon.storage.Storage$StorageReadyStateListener;

class CameraActivity$8$1 implements Runnable {
    final /* synthetic */ CameraActivity$8 this$1;
    final /* synthetic */ Storage$StorageReadyStateListener val$listener;

    CameraActivity$8$1(CameraActivity$8 cameraActivity$8, Storage$StorageReadyStateListener storage$StorageReadyStateListener) {
        this.this$1 = cameraActivity$8;
        this.val$listener = storage$StorageReadyStateListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        CameraActivity.access$1402(this.this$1.this$0, CameraActivity.access$1500(this.this$1.this$0).submit(new CameraActivity$SetupAllTask(this.this$1.this$0, null)));
        CameraActivity.access$1300(this.this$1.this$0).removeStorageReadyStateListener(this.val$listener);
    }
}
