package com.sonyericsson.cameracommon.storage.updater;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.storage.CameraStorageManager;
import com.sonyericsson.cameracommon.storage.CameraStorageManager$UpdateRequestReason;
import com.sonyericsson.cameracommon.storage.SavingTaskInquiry;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: classes.dex */
public class WriteCheckTask extends StorageUpdateTask {
    public WriteCheckTask(@NonNull Storage$StorageType storage$StorageType, @NonNull CameraStorageManager cameraStorageManager, @NonNull SavingTaskInquiry savingTaskInquiry, @NonNull Semaphore semaphore, @Nullable StorageUpdateTask$OnTaskFinishCallback storageUpdateTask$OnTaskFinishCallback, @NonNull CameraStorageManager$UpdateRequestReason cameraStorageManager$UpdateRequestReason) {
        super(storage$StorageType, cameraStorageManager, savingTaskInquiry, semaphore, storageUpdateTask$OnTaskFinishCallback, cameraStorageManager$UpdateRequestReason);
    }

    @Override // java.util.concurrent.Callable
    @Nullable
    public Object call() throws Exception {
        Storage$StorageType type = getType();
        try {
            if (acquire()) {
                try {
                    getStorageManager().updateStorageStateByWriting(type, getRequestReason());
                    getStorageManager().checkAndNotifyStateChanged(type);
                    release();
                } catch (Throwable th) {
                    CamLog.e("occurred exception", th);
                    throw th;
                }
            }
            notifyFinished();
            return null;
        } catch (Throwable th2) {
            RuntimeException runtimeException = new RuntimeException("trace no semaphore release");
            runtimeException.fillInStackTrace();
            CamLog.e("Semaphore could not be released.", runtimeException);
            throw th2;
        }
    }
}
