package com.sonyericsson.cameracommon.storage.updater;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;

class StorageStateUpdater$1 implements StorageUpdateTask$OnTaskFinishCallback {
    final /* synthetic */ StorageStateUpdater this$0;

    StorageStateUpdater$1(StorageStateUpdater storageStateUpdater) {
        this.this$0 = storageStateUpdater;
    }

    @Override // com.sonyericsson.cameracommon.storage.updater.StorageUpdateTask$OnTaskFinishCallback
    public void onFinish(Storage$StorageType storage$StorageType, int i) {
        synchronized (StorageStateUpdater.access$000(this.this$0)) {
            if (CamLog.DEBUG) {
                CamLog.d("type: " + storage$StorageType + ", id: " + i);
            }
            StorageStateUpdater.access$000(this.this$0).poll();
        }
    }
}
