package com.sonyericsson.cameracommon.storage;

import android.content.Context;
import android.media.MediaScannerConnection;
import android.os.SystemClock;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.CapturePerformanceLogger;
import java.util.ArrayList;

class SavingTaskManager$MediaScanController {
    private final Context mContext;
    private final SavingTaskManager$MediaScanController$OnScanCompletedListener mOnScanCompletedListener;
    private final Object mScanFileLock = new Object();
    private final ArrayList<PhotoSavingRequest> mPendingScanFileList = new ArrayList<>();
    private boolean mIsScanning = false;

    static /* synthetic */ SavingTaskManager$MediaScanController$OnScanCompletedListener access$1300(SavingTaskManager$MediaScanController savingTaskManager$MediaScanController) {
        return savingTaskManager$MediaScanController.mOnScanCompletedListener;
    }

    static /* synthetic */ ArrayList access$1400(SavingTaskManager$MediaScanController savingTaskManager$MediaScanController) {
        return savingTaskManager$MediaScanController.mPendingScanFileList;
    }

    static /* synthetic */ Object access$1500(SavingTaskManager$MediaScanController savingTaskManager$MediaScanController) {
        return savingTaskManager$MediaScanController.mScanFileLock;
    }

    static /* synthetic */ void access$1600(SavingTaskManager$MediaScanController savingTaskManager$MediaScanController) {
        savingTaskManager$MediaScanController.scanAllPendingFilesLocked();
    }

    public SavingTaskManager$MediaScanController(Context context, SavingTaskManager$MediaScanController$OnScanCompletedListener savingTaskManager$MediaScanController$OnScanCompletedListener) {
        this.mContext = context;
        this.mOnScanCompletedListener = savingTaskManager$MediaScanController$OnScanCompletedListener;
    }

    public void requestScanFile(PhotoSavingRequest photoSavingRequest) {
        synchronized (this.mScanFileLock) {
            this.mPendingScanFileList.add(photoSavingRequest);
            if (this.mIsScanning) {
                CamLog.d("pending:" + this.mPendingScanFileList.size());
            } else {
                scanAllPendingFilesLocked();
            }
        }
    }

    private void scanAllPendingFilesLocked() {
        if (this.mPendingScanFileList.isEmpty()) {
            this.mIsScanning = false;
            return;
        }
        this.mIsScanning = true;
        ArrayList<PhotoSavingRequest> arrayList = new ArrayList();
        arrayList.addAll(this.mPendingScanFileList);
        this.mPendingScanFileList.clear();
        for (PhotoSavingRequest photoSavingRequest : arrayList) {
            if (CapturePerformanceLogger.get(photoSavingRequest) != null) {
                CapturePerformanceLogger.get(photoSavingRequest).startScan = SystemClock.uptimeMillis();
            }
        }
        String[] strArr = new String[arrayList.size()];
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = ((PhotoSavingRequest) arrayList.get(i)).getFilePath();
        }
        MediaScannerConnection.scanFile(this.mContext, strArr, null, new SavingTaskManager$MediaScanController$OnMediaScanCompletedListener(this, arrayList));
        CamLog.d("request:" + strArr.length);
    }
}
