package com.sonyericsson.cameracommon.storage;

import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;

class SavingTaskManager$2 implements Runnable {
    final /* synthetic */ SavingTaskManager this$0;
    final /* synthetic */ PhotoSavingRequest val$request;

    SavingTaskManager$2(SavingTaskManager savingTaskManager, PhotoSavingRequest photoSavingRequest) {
        this.this$0 = savingTaskManager;
        this.val$request = photoSavingRequest;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.val$request.close();
        this.val$request.notifyStoreFailed(MediaSavingResult.FAIL);
        SavingTaskManager.access$200(this.this$0).checkRemain(true, this.val$request.getStorageType());
    }
}
