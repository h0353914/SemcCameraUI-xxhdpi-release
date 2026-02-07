package com.sonyericsson.cameracommon.storage;

import android.media.MediaScannerConnection$OnScanCompletedListener;
import android.net.Uri;
import android.os.SystemClock;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.CapturePerformanceLogger;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class SavingTaskManager$MediaScanController$OnMediaScanCompletedListener implements MediaScannerConnection$OnScanCompletedListener {
    private final List<PhotoSavingRequest> mRequests;
    final /* synthetic */ SavingTaskManager$MediaScanController this$0;

    public SavingTaskManager$MediaScanController$OnMediaScanCompletedListener(SavingTaskManager$MediaScanController savingTaskManager$MediaScanController, List<PhotoSavingRequest> list) {
        this.this$0 = savingTaskManager$MediaScanController;
        this.mRequests = list;
    }

    private PhotoSavingRequest pop(String str) {
        PhotoSavingRequest next;
        Iterator<PhotoSavingRequest> it = this.mRequests.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (next.getFilePath().equals(str)) {
                break;
            }
        }
        if (next != null) {
            this.mRequests.remove(next);
        }
        return next;
    }

    @Override // android.media.MediaScannerConnection$OnScanCompletedListener
    public void onScanCompleted(String str, Uri uri) {
        PhotoSavingRequest photoSavingRequestPop = pop(str);
        if (photoSavingRequestPop == null) {
            CamLog.d("onScanCompleted() request of scan completed file is not found.");
            return;
        }
        if (CapturePerformanceLogger.get(photoSavingRequestPop) != null) {
            CapturePerformanceLogger.get(photoSavingRequestPop).scanFileDone = SystemClock.uptimeMillis();
            CapturePerformanceLogger.complete(photoSavingRequestPop);
        } else {
            CamLog.d("CapturePerformance: get(request) is null. path = " + photoSavingRequestPop.getFilePath());
        }
        SavingTaskManager$MediaScanController.access$1300(this.this$0).onScanCompleted(MediaSavingResult.SUCCESS, uri, photoSavingRequestPop);
        CamLog.d("remain:" + this.mRequests.size() + ", pending:" + SavingTaskManager$MediaScanController.access$1400(this.this$0).size());
        synchronized (SavingTaskManager$MediaScanController.access$1500(this.this$0)) {
            if (this.mRequests.isEmpty()) {
                SavingTaskManager$MediaScanController.access$1600(this.this$0);
            }
        }
    }
}
