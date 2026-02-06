package com.sonyericsson.cameracommon.mediasaving.updator;

import android.media.MediaScannerConnection$OnScanCompletedListener;
import android.net.Uri;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

class MediaProviderUpdator$OnScanCompletedListener implements MediaScannerConnection$OnScanCompletedListener {
    private final CountDownLatch mLatch = new CountDownLatch(1);
    private Uri mScanResult;

    public MediaProviderUpdator$OnScanCompletedListener(String str) {
    }

    @Override // android.media.MediaScannerConnection$OnScanCompletedListener
    public void onScanCompleted(String str, Uri uri) {
        if (CamLog.VERBOSE) {
            CamLog.d("onScanCompleted E");
        }
        if (CamLog.VERBOSE) {
            CamLog.d("  uri:" + uri);
        }
        if (CamLog.VERBOSE) {
            CamLog.d("  path:" + str);
        }
        this.mScanResult = uri;
        this.mLatch.countDown();
        if (CamLog.VERBOSE) {
            CamLog.d("onScanCompleted X");
        }
    }

    public Uri getScanResult() {
        try {
            if (CamLog.VERBOSE) {
                CamLog.d("getScanResult wait 30 seconds...");
            }
            if (!this.mLatch.await(30000L, TimeUnit.MILLISECONDS)) {
                CamLog.e("getScanResult is timeout.");
            }
        } catch (InterruptedException e) {
            CamLog.e("scan video file failed.", e);
        }
        if (CamLog.VERBOSE) {
            CamLog.d("getScanResult done. " + this.mScanResult);
        }
        return this.mScanResult;
    }
}
