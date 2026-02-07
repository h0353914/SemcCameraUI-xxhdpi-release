package com.sonyericsson.cameracommon.storage;

import android.net.Uri;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;

/* JADX INFO: loaded from: classes.dex */
public interface SavingTaskManager$MediaScanController$OnScanCompletedListener {
    void onScanCompleted(MediaSavingResult mediaSavingResult, Uri uri, PhotoSavingRequest photoSavingRequest);
}
