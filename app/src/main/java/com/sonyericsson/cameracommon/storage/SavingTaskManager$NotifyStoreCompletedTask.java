package com.sonyericsson.cameracommon.storage;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;

class SavingTaskManager$NotifyStoreCompletedTask implements Runnable {
    private final StoreDataResult mResult;

    /* synthetic */ SavingTaskManager$NotifyStoreCompletedTask(StoreDataResult storeDataResult, SavingTaskManager$1 savingTaskManager$1) {
        this(storeDataResult);
    }

    private SavingTaskManager$NotifyStoreCompletedTask(StoreDataResult storeDataResult) {
        this.mResult = storeDataResult;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.mResult != null && this.mResult.savingRequest != null) {
            this.mResult.savingRequest.notifyStoreResult(this.mResult);
            if (CamLog.VERBOSE) {
                CamLog.d(getClass().getName(), "mStatus.notifyStoreResult() is called.");
                return;
            }
            return;
        }
        if (CamLog.VERBOSE) {
            CamLog.d(getClass().getName(), "StoreDataResult or SavingRequest is null.");
        }
    }
}
