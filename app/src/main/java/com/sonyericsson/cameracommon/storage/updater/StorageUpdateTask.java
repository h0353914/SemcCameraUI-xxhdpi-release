package com.sonyericsson.cameracommon.storage.updater;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.storage.CameraStorageManager;
import com.sonyericsson.cameracommon.storage.SavingTaskInquiry;
import com.sonyericsson.cameracommon.storage.Storage;
import java.util.concurrent.Callable;
import java.util.concurrent.Semaphore;

public abstract class StorageUpdateTask implements Callable {
    private final OnTaskFinishCallback mCallback;
    private final SavingTaskInquiry mInquiry;
    private final CameraStorageManager.UpdateRequestReason mRequestReason;
    private final Semaphore mStorageAccessSemaphore;
    private final CameraStorageManager mStorageManager;
    private final Storage.StorageType mStorageType;

    public interface OnTaskFinishCallback {
        void onFinish(Storage.StorageType storageType, int i);
    }

    public StorageUpdateTask(@NonNull Storage.StorageType storageType, @NonNull CameraStorageManager cameraStorageManager, @NonNull SavingTaskInquiry savingTaskInquiry, @NonNull Semaphore semaphore, @Nullable OnTaskFinishCallback onTaskFinishCallback, @NonNull CameraStorageManager.UpdateRequestReason updateRequestReason) {
        this.mStorageType = storageType;
        this.mStorageManager = cameraStorageManager;
        this.mInquiry = savingTaskInquiry;
        this.mStorageAccessSemaphore = semaphore;
        this.mCallback = onTaskFinishCallback;
        this.mRequestReason = updateRequestReason;
    }

    protected Storage.StorageType getType() {
        return this.mStorageType;
    }

    protected CameraStorageManager getStorageManager() {
        return this.mStorageManager;
    }

    protected SavingTaskInquiry getInquiry() {
        return this.mInquiry;
    }

    protected CameraStorageManager.UpdateRequestReason getRequestReason() {
        return this.mRequestReason;
    }

    protected boolean acquire() throws InterruptedException {
        if (CamLog.DEBUG) {
            CamLog.d("invoke: id: " + hashCode());
        }
        boolean acquired = false;
        try {
            acquired = this.mStorageAccessSemaphore.tryAcquire(4000, java.util.concurrent.TimeUnit.MILLISECONDS);
            if (CamLog.DEBUG) {
                CamLog.d("Semaphore acquired.");
            }
        } catch (InterruptedException e) {
            CamLog.e("Unintended interrupt occurred.", e);
        }
        if (!acquired) {
            RuntimeException runtimeException = new RuntimeException("Semaphore could not be acquired due to timeout");
            runtimeException.fillInStackTrace();
            throw runtimeException;
        }
        return true;
    }

    protected boolean tryAcquire() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke: id: " + hashCode());
        }
        return this.mStorageAccessSemaphore.tryAcquire();
    }

    protected void release() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke: id: " + hashCode());
        }
        this.mStorageAccessSemaphore.release();
    }

    protected void notifyFinished() {
        if (this.mCallback != null) {
            this.mCallback.onFinish(this.mStorageType, hashCode());
        }
    }
}
