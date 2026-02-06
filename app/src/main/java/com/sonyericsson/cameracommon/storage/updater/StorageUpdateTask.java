package com.sonyericsson.cameracommon.storage.updater;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.storage.CameraStorageManager;
import com.sonyericsson.cameracommon.storage.CameraStorageManager$UpdateRequestReason;
import com.sonyericsson.cameracommon.storage.SavingTaskInquiry;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import java.util.concurrent.Callable;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

public abstract class StorageUpdateTask implements Callable {
    private final StorageUpdateTask$OnTaskFinishCallback mCallback;
    private final SavingTaskInquiry mInquiry;
    private final CameraStorageManager$UpdateRequestReason mRequestReason;
    private final Semaphore mStorageAccessSemaphore;
    private final CameraStorageManager mStorageManager;
    private final Storage$StorageType mStorageType;

    public StorageUpdateTask(@NonNull Storage$StorageType storage$StorageType, @NonNull CameraStorageManager cameraStorageManager, @NonNull SavingTaskInquiry savingTaskInquiry, @NonNull Semaphore semaphore, @Nullable StorageUpdateTask$OnTaskFinishCallback storageUpdateTask$OnTaskFinishCallback, @NonNull CameraStorageManager$UpdateRequestReason cameraStorageManager$UpdateRequestReason) {
        this.mStorageType = storage$StorageType;
        this.mStorageManager = cameraStorageManager;
        this.mInquiry = savingTaskInquiry;
        this.mStorageAccessSemaphore = semaphore;
        this.mCallback = storageUpdateTask$OnTaskFinishCallback;
        this.mRequestReason = cameraStorageManager$UpdateRequestReason;
    }

    protected Storage$StorageType getType() {
        return this.mStorageType;
    }

    protected CameraStorageManager getStorageManager() {
        return this.mStorageManager;
    }

    protected SavingTaskInquiry getInquiry() {
        return this.mInquiry;
    }

    protected CameraStorageManager$UpdateRequestReason getRequestReason() {
        return this.mRequestReason;
    }

    protected boolean acquire() {
        boolean zTryAcquire;
        if (CamLog.DEBUG) {
            CamLog.d("invoke: id: " + hashCode());
        }
        try {
            zTryAcquire = this.mStorageAccessSemaphore.tryAcquire(4000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            e = e;
            zTryAcquire = false;
        }
        try {
            if (CamLog.DEBUG) {
                CamLog.d("Semaphore acquired.");
            }
        } catch (InterruptedException e2) {
            e = e2;
            CamLog.e("Unintended interrupt occurred.", e);
        }
        if (zTryAcquire) {
            return true;
        }
        RuntimeException runtimeException = new RuntimeException("Semaphore could not be acquired due to timeout");
        runtimeException.fillInStackTrace();
        throw runtimeException;
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
