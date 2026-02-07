package com.sonyericsson.cameracommon.storage;

import android.net.Uri;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;

/* JADX INFO: loaded from: classes.dex */
class SavingTaskManager$3 implements SavingTaskManager$MediaScanController$OnScanCompletedListener {
    final /* synthetic */ SavingTaskManager this$0;

    SavingTaskManager$3(SavingTaskManager savingTaskManager) {
        this.this$0 = savingTaskManager;
    }

    @Override // com.sonyericsson.cameracommon.storage.SavingTaskManager$MediaScanController$OnScanCompletedListener
    public void onScanCompleted(MediaSavingResult mediaSavingResult, Uri uri, PhotoSavingRequest photoSavingRequest) {
        SavingTaskManager.access$600(this.this$0, MediaSavingResult.SUCCESS, uri, photoSavingRequest);
    }
}
