package com.sonyericsson.cameracommon.storage;

import android.net.Uri;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;

public interface SavingTaskManager$MediaScanController$OnScanCompletedListener {
    void onScanCompleted(MediaSavingResult mediaSavingResult, Uri uri, PhotoSavingRequest photoSavingRequest);
}
