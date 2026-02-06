package com.sonyericsson.cameracommon.storage.updater;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.storage.CameraStorageManager;
import com.sonyericsson.cameracommon.storage.CameraStorageManager$UpdateRequestReason;
import com.sonyericsson.cameracommon.storage.SavingTaskInquiry;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import java.util.concurrent.Semaphore;

public class StateUpdateTask extends StorageUpdateTask {
    public StateUpdateTask(@NonNull Storage$StorageType storage$StorageType, @NonNull CameraStorageManager cameraStorageManager, @NonNull SavingTaskInquiry savingTaskInquiry, @NonNull Semaphore semaphore, @Nullable StorageUpdateTask$OnTaskFinishCallback storageUpdateTask$OnTaskFinishCallback, @NonNull CameraStorageManager$UpdateRequestReason cameraStorageManager$UpdateRequestReason) {
        super(storage$StorageType, cameraStorageManager, savingTaskInquiry, semaphore, storageUpdateTask$OnTaskFinishCallback, cameraStorageManager$UpdateRequestReason);
    }

    @Override // java.util.concurrent.Callable
    @Nullable
    public Object call() throws Exception {
        Storage$StorageType type = getType();
        long reservedSize = getInquiry().getReservedSize(type);
        CameraStorageManager$UpdateRequestReason requestReason = getRequestReason();
        if (requestReason == CameraStorageManager$UpdateRequestReason.APP_LAUNCH) {
            if (acquire()) {
                try {
                    try {
                        getStorageManager().updateStateByVolumeInfo(type, reservedSize, requestReason);
                        getStorageManager().checkAndNotifyStateChanged(type);
                        release();
                    } finally {
                    }
                } catch (Throwable th) {
                    RuntimeException runtimeException = new RuntimeException("trace no semaphore release");
                    runtimeException.fillInStackTrace();
                    CamLog.e("Semaphore could not be released.", runtimeException);
                    throw th;
                }
            } else {
                CamLog.e("StateUpdateTask[" + type + "]: One time update failed.");
            }
        } else {
            if (reservedSize == 0 && tryAcquire()) {
                try {
                    getStorageManager().updateStateByVolumeInfo(type, reservedSize, requestReason);
                    getStorageManager().checkAndNotifyStateChanged(type);
                    release();
                } catch (Throwable th2) {
                    RuntimeException runtimeException2 = new RuntimeException("trace");
                    runtimeException2.fillInStackTrace();
                    CamLog.e("Semaphore could not be released.", runtimeException2);
                    throw th2;
                }
            } else if (CamLog.DEBUG) {
                CamLog.d("StateUpdateTask[" + type + "]: SKIP");
            }
            getStorageManager().requestVolumeCheck(type, getStorageManager().calculateNextPollingInterval(getType()), CameraStorageManager$UpdateRequestReason.PERIODIC_UPDATE);
        }
        notifyFinished();
        return null;
    }
}
