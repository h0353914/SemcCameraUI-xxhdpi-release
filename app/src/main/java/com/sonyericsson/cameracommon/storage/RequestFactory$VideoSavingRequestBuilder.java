package com.sonyericsson.cameracommon.storage;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusVideo;

/* JADX INFO: loaded from: classes.dex */
public class RequestFactory$VideoSavingRequestBuilder extends RequestFactory$RequestBuilder {
    public TakenStatusVideo mVideoStatus;

    public RequestFactory$VideoSavingRequestBuilder(TakenStatusCommon takenStatusCommon, TakenStatusVideo takenStatusVideo) {
        super(takenStatusCommon);
        this.mVideoStatus = takenStatusVideo;
    }

    public TakenStatusVideo getVideo() {
        return this.mVideoStatus;
    }

    public long getDuration() {
        return this.mVideoStatus.mDuration;
    }

    public void setDuration(long j) {
        if (CamLog.VERBOSE) {
            CamLog.d("setDuration: " + j);
        }
        this.mVideoStatus.mDuration = j;
    }

    public void setSlowMotion(String str, Storage storage, Storage$StorageType storage$StorageType) {
        CameraStorageManager cameraStorageManager = ((StorageImpl) storage).getCameraStorageManager();
        if (cameraStorageManager != null) {
            if (str != null) {
                if (CamLog.VERBOSE) {
                    CamLog.d("set path for slow motion to video request");
                }
                setFilePath(cameraStorageManager.getSlowMotionPath(str, storage$StorageType));
            } else {
                if (CamLog.VERBOSE) {
                    CamLog.d("set path video request");
                }
                setFilePath(getOutputFile(this.mCommonStatus.fileExtension, cameraStorageManager, storage$StorageType));
            }
        }
    }

    private String getOutputFile(String str, CameraStorageManager cameraStorageManager, Storage$StorageType storage$StorageType) {
        if (cameraStorageManager == null) {
            return "/dev/null";
        }
        String videoPath = "/dev/null";
        int i = 0;
        while (true) {
            if (i >= 30) {
                break;
            }
            videoPath = cameraStorageManager.getVideoPath(str, storage$StorageType);
            if (videoPath.equals("/dev/null")) {
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException unused) {
                }
                i++;
            } else if (CamLog.VERBOSE) {
                CamLog.d("Path is neither null nor /dev/null");
            }
        }
        if (i >= 30) {
            videoPath = "/dev/null";
        }
        if (CamLog.VERBOSE) {
            CamLog.d("getOutputFile: " + videoPath);
        }
        return videoPath;
    }
}
