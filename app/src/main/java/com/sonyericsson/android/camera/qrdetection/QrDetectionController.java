package com.sonyericsson.android.camera.qrdetection;

import android.os.Handler;
import android.os.Looper;
import com.google.zxing.Result;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.device.ImageRetriever;
import com.sonyericsson.android.camera.util.CamLog;

public class QrDetectionController {
    private static final String TAG = "QrDetectionController";
    private static final long RESTART_DETECTION_DELAY_MILLIS = 5000;
    private CapturingMode mCapturingMode = CapturingMode.UNKNOWN;
    private ImageRetriever mImageRetriever;
    private boolean mIsPreviewing = false;
    private boolean mIsQrDetectionOn = false;
    private QrDetector mQrDetector;
    private final Handler mUiScheduler = new Handler(Looper.getMainLooper());
    private final QrResultListener mQrResultListener;
    private NeedCapturedFrameListener mNeedCapturedFrameListener;

    public interface QrDetectResultListener {
        void onDetectResult(Result result);
    }

    public interface QrResultListener {
        void onDetectResult(String str);
    }

    public interface NeedCapturedFrameListener {
        void onNeedCapturedFrameChanged(boolean z);
    }

    private final Runnable mRestartDetectionTask = new Runnable() { // from class: com.sonyericsson.android.camera.qrdetection.QrDetectionController.2
        @Override // java.lang.Runnable
        public void run() {
            if (QrDetectionController.this.mQrDetector != null && QrDetectionController.this.shouldPerformDetection()) {
                if (CamLog.VERBOSE) {
                    CamLog.d("Restarting QR detection");
                }
                QrDetectionController.this.mQrDetector.startDetect(QrDetectionController.this.mImageRetriever);
            }
        }
    };

    private final QrDetectResultListener mInternalResultListener = new QrDetectResultListener() { // from class: com.sonyericsson.android.camera.qrdetection.QrDetectionController.1
        @Override // com.sonyericsson.android.camera.qrdetection.QrDetectionController.QrDetectResultListener
        public void onDetectResult(Result result) {
            if (QrDetectionController.this.mQrResultListener != null) {
                QrDetectionController.this.mQrResultListener.onDetectResult(
                        QrDetectionController.this.getMassagedText(result));
            }
            QrDetectionController.this.mUiScheduler.postDelayed(
                    QrDetectionController.this.mRestartDetectionTask, RESTART_DETECTION_DELAY_MILLIS);
        }
    };

    public QrDetectionController(QrResultListener qrResultListener) {
        this.mQrResultListener = qrResultListener;
    }

    public void setNeedCapturedFrameListener(NeedCapturedFrameListener needCapturedFrameListener) {
        this.mNeedCapturedFrameListener = needCapturedFrameListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    private String getMassagedText(Result result) {
        String text = result.getText();
        if (text != null && text.startsWith("﻿")) {
            return text.substring(1);
        }
        return text;
    }

    private boolean isOperableMode() {
        return this.mCapturingMode == CapturingMode.SCENE_RECOGNITION;
    }

    private boolean shouldPerformDetection() {
        return this.mIsQrDetectionOn && this.mIsPreviewing && isOperableMode();
    }

    private QrDetector createDetector() {
        if (CamLog.VERBOSE) {
            CamLog.d("Creating QrDetector");
        }
        return new QrDetector(this.mInternalResultListener, this.mUiScheduler);
    }

    private void updateDetectionStatus() {
        boolean shouldPerformDetection = shouldPerformDetection();
        if (this.mNeedCapturedFrameListener != null) {
            this.mNeedCapturedFrameListener.onNeedCapturedFrameChanged(shouldPerformDetection);
        }
        if (shouldPerformDetection) {
            if (this.mQrDetector == null) {
                this.mQrDetector = createDetector();
            }
            if (!this.mQrDetector.isStarted()) {
                if (CamLog.VERBOSE) {
                    CamLog.d("QR detection not started, start it now");
                }
                this.mQrDetector.startDetect(this.mImageRetriever);
            }
            return;
        }
        this.mUiScheduler.removeCallbacks(this.mRestartDetectionTask);
        if (this.mQrDetector != null) {
            if (this.mQrDetector.isStarted()) {
                this.mQrDetector.stopDetect();
            }
            this.mQrDetector.release();
            this.mQrDetector = null;
        }
    }

    public void handlePreviewStarted(CapturingMode capturingMode, ImageRetriever imageRetriever) {
        this.mImageRetriever = imageRetriever;
        this.mIsPreviewing = true;
        this.mCapturingMode = capturingMode;
        updateDetectionStatus();
    }

    public void handlePreviewStopped() {
        this.mIsPreviewing = false;
        this.mImageRetriever = null;
        updateDetectionStatus();
    }

    public void handleSettingsChanged(boolean z) {
        this.mIsQrDetectionOn = z;
        updateDetectionStatus();
    }

    public void release() {
        this.mIsPreviewing = false;
        this.mImageRetriever = null;
        this.mUiScheduler.removeCallbacks(this.mRestartDetectionTask);
        if (this.mQrDetector != null) {
            if (this.mQrDetector.isStarted()) {
                this.mQrDetector.stopDetect();
            }
            this.mQrDetector.release();
            this.mQrDetector = null;
        }
    }
}
