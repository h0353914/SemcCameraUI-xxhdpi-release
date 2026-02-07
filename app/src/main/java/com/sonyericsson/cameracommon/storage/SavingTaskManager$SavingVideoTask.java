package com.sonyericsson.cameracommon.storage;

import android.database.sqlite.SQLiteFullException;
import android.net.Uri;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: classes.dex */
class SavingTaskManager$SavingVideoTask implements Runnable {
    final VideoSavingRequest mRequest;
    final /* synthetic */ SavingTaskManager this$0;

    SavingTaskManager$SavingVideoTask(SavingTaskManager savingTaskManager, VideoSavingRequest videoSavingRequest) {
        this.this$0 = savingTaskManager;
        this.mRequest = videoSavingRequest;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.sonyericsson.cameracommon.mediasaving.MediaSavingResult] */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.sonyericsson.cameracommon.mediasaving.MediaSavingResult] */
    /* JADX WARN: Type inference failed for: r0v7, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v2, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v7 */
    @Override // java.lang.Runnable
    public void run() {
        ?? InsertVideoAndSendIntent;
        ?? InsertVideoAndSendIntent2;
        MediaSavingResult mediaSavingResult = MediaSavingResult.FAIL;
        Uri extraOutput = this.mRequest.getExtraOutput();
        Storage$StorageType storageType = this.mRequest.getStorageType();
        if (CamLog.VERBOSE) {
            CamLog.d("Saving video started: ID: " + this.mRequest.getRequestId());
        }
        Semaphore semaphore = (Semaphore) SavingTaskManager.access$300(this.this$0).get(storageType);
        try {
            semaphore.acquire();
            if (CamLog.DEBUG) {
                CamLog.d("SavingVideoTask[" + storageType + "]: E");
            }
            try {
                if (extraOutput != null) {
                    if (this.mRequest.common.addToMediaStore) {
                        if ("file".equalsIgnoreCase(extraOutput.getScheme()) || "content".equalsIgnoreCase(extraOutput.getScheme())) {
                            this.mRequest.setFilePath(extraOutput.getPath());
                        }
                        InsertVideoAndSendIntent = SavingTaskManager.access$900(this.this$0).insertVideoAndSendIntent(this.mRequest);
                    } else {
                        InsertVideoAndSendIntent = extraOutput;
                    }
                    if (InsertVideoAndSendIntent == 0) {
                        try {
                            InsertVideoAndSendIntent2 = "content".equalsIgnoreCase(extraOutput.getScheme()) ? MediaSavingResult.SUCCESS : MediaSavingResult.FAIL;
                        } catch (SQLiteFullException unused) {
                            InsertVideoAndSendIntent2 = MediaSavingResult.FAIL_MEMORY_FULL;
                        }
                    }
                } else {
                    InsertVideoAndSendIntent2 = SavingTaskManager.access$900(this.this$0).insertVideoAndSendIntent(this.mRequest);
                    try {
                        InsertVideoAndSendIntent = InsertVideoAndSendIntent2;
                        InsertVideoAndSendIntent2 = InsertVideoAndSendIntent2 != 0 ? MediaSavingResult.SUCCESS : MediaSavingResult.FAIL;
                    } catch (SQLiteFullException unused2) {
                        InsertVideoAndSendIntent = InsertVideoAndSendIntent2;
                        InsertVideoAndSendIntent2 = MediaSavingResult.FAIL_MEMORY_FULL;
                    }
                }
            } catch (SQLiteFullException unused3) {
                InsertVideoAndSendIntent = 0;
            }
            if (CamLog.VERBOSE) {
                CamLog.d("Saving video finished: ID: " + this.mRequest.getRequestId());
            }
            SavingTaskManager.access$200(this.this$0).updateStorageState(storageType, CameraStorageManager$UpdateRequestReason.VIDEO_STORING_COMPLETED);
            semaphore.release();
            if (CamLog.DEBUG) {
                CamLog.d("SavingVideoTask[" + storageType + "]: X");
            }
            SavingTaskManager.access$600(this.this$0, InsertVideoAndSendIntent2, InsertVideoAndSendIntent, this.mRequest);
            SavingTaskManager.access$1202(this.this$0, null);
        } catch (InterruptedException unused4) {
            CamLog.e("Failed to acquire of storage access permit.");
        }
    }
}
