package com.sonyericsson.android.camera.qrdetection;

import android.graphics.Rect;
import android.os.Handler;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.NotFoundException;
import com.google.zxing.PlanarYUVLuminanceSource;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.HybridBinarizer;
import com.sonyericsson.android.camera.device.ImageRetriever;
import com.sonyericsson.android.camera.util.BackgroundWorker;
import com.sonyericsson.android.camera.util.CamLog;
import java.nio.ByteBuffer;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Map;

public class QrDetector {
    private static final long GET_FRAME_INTERVAL_MILLIS = 500;
    public static final String TAG = "QrDetector";
    private boolean mIsStarted = false;
    private ImageRetriever mImageRetriever;
    private int mImageWidth;
    private int mImageHeight;
    private byte[] mYuvBytes;
    private Result mScanResult;
    private final Object mBytesLock = new Object();
    private final QrDetectionController.QrDetectResultListener mListener;
    private final Handler mResultScheduler;
    private final BackgroundWorker mWorker;

    private final Runnable mGetFrameTask = new Runnable() { // from class: com.sonyericsson.android.camera.qrdetection.QrDetector.1
        @Override // java.lang.Runnable
        public void run() {
            synchronized (QrDetector.this.mBytesLock) {
                if (QrDetector.this.mIsStarted) {
                    QrDetector.this.mImageRetriever.registerPreviewStreamingCallback(
                            QrDetector.this.mImageCallback, QrDetector.this.mWorker.getHandler());
                    if (CamLog.VERBOSE) {
                        CamLog.d("Get frame requested");
                    }
                }
            }
        }
    };

    private final ImageRetriever.OnImageRetrieverCallback mImageCallback = new ImageRetriever.OnImageRetrieverCallback() { // from class: com.sonyericsson.android.camera.qrdetection.QrDetector.2
        @Override // com.sonyericsson.android.camera.device.ImageRetriever.OnImageRetrieverCallback
        public void onRetrieved(ByteBuffer byteBuffer, int i, Rect rect) {
            synchronized (QrDetector.this.mBytesLock) {
                if (QrDetector.this.mIsStarted) {
                    if (byteBuffer != null && i == 17) {
                        QrDetector.this.mImageRetriever.unregisterPreviewStreamingCallback(this);
                        QrDetector.this.postDetect(rect.width(), rect.height(), byteBuffer);
                    }
                }
            }
        }
    };

    private final ResultPointCallback mResultPointCallback = new ResultPointCallback() { // from class: com.sonyericsson.android.camera.qrdetection.QrDetector.3
        @Override // com.google.zxing.ResultPointCallback
        public void foundPossibleResultPoint(ResultPoint resultPoint) {
        }
    };

    public QrDetector(QrDetectionController.QrDetectResultListener qrDetectResultListener, Handler handler) {
        this.mListener = qrDetectResultListener;
        this.mResultScheduler = handler;
        try {
            this.mWorker = new BackgroundWorker(TAG);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new IllegalStateException("Failed to start qr detector worker", e);
        }
    }

    public void startDetect(ImageRetriever imageRetriever) {
        this.mImageRetriever = imageRetriever;
        this.mScanResult = null;
        this.mIsStarted = true;
        postGetFrame();
    }

    public void stopDetect() {
        this.mWorker.getHandler().removeCallbacks(this.mGetFrameTask);
        synchronized (this.mBytesLock) {
            if (this.mImageRetriever != null) {
                this.mImageRetriever.unregisterPreviewStreamingCallback(this.mImageCallback);
            }
            this.mImageRetriever = null;
            this.mIsStarted = false;
        }
    }

    public boolean isStarted() {
        return this.mIsStarted;
    }

    public void release() {
        try {
            this.mWorker.quit();
        } catch (InterruptedException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    private void postGetFrame() {
        if (this.mScanResult == null) {
            this.mWorker.getHandler().postDelayed(this.mGetFrameTask, GET_FRAME_INTERVAL_MILLIS);
            if (CamLog.VERBOSE) {
                CamLog.d("Get frame posted with delay: " + GET_FRAME_INTERVAL_MILLIS);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    private void postDetect(int i, int i2, ByteBuffer byteBuffer) {
        this.mWorker.getHandler().post(new DetectRunnable(i, i2, byteBuffer));
        if (CamLog.VERBOSE) {
            CamLog.d("detection posted");
        }
    }

    private Result Detect(byte[] bArr) {
        PlanarYUVLuminanceSource planarYUVLuminanceSource = new PlanarYUVLuminanceSource(bArr, this.mImageWidth,
                this.mImageHeight, 0, 0, this.mImageWidth, this.mImageHeight, false);
        try {
            return detectResultFromSource(planarYUVLuminanceSource);
        } catch (Exception unused) {
            try {
                return detectResultFromSource(planarYUVLuminanceSource.invert());
            } catch (Exception unused2) {
                return null;
            }
        }
    }

    private Result detectResultFromSource(com.google.zxing.LuminanceSource luminanceSource) throws NotFoundException {
        Map<DecodeHintType, Object> enumMap = new EnumMap<>(DecodeHintType.class);
        enumMap.put(DecodeHintType.POSSIBLE_FORMATS, EnumSet.of(BarcodeFormat.QR_CODE));
        enumMap.put(DecodeHintType.NEED_RESULT_POINT_CALLBACK, this.mResultPointCallback);
        MultiFormatReader multiFormatReader = new MultiFormatReader();
        multiFormatReader.setHints(enumMap);
        try {
            return multiFormatReader.decodeWithState(new BinaryBitmap(new HybridBinarizer(luminanceSource)));
        } finally {
            multiFormatReader.reset();
        }
    }

    private class DetectRunnable implements Runnable {
        private final int height;
        private final ByteBuffer mYuvBuffer;
        private final int width;

        DetectRunnable(int i, int i2, ByteBuffer byteBuffer) {
            this.width = i;
            this.height = i2;
            this.mYuvBuffer = byteBuffer;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (QrDetector.this.mIsStarted) {
                if (CamLog.VERBOSE) {
                    CamLog.d("Starting QR detection");
                }
                synchronized (QrDetector.this.mBytesLock) {
                    if (QrDetector.this.mImageWidth != this.width || QrDetector.this.mImageHeight != this.height
                            || QrDetector.this.mYuvBytes == null) {
                        QrDetector.this.mImageWidth = this.width;
                        QrDetector.this.mImageHeight = this.height;
                        QrDetector.this.mYuvBytes = new byte[(this.width * this.height * 3) / 2];
                    }
                    if (QrDetector.this.mYuvBytes.length == this.mYuvBuffer.remaining()) {
                        this.mYuvBuffer.get(QrDetector.this.mYuvBytes);
                        final Result resultDetect = QrDetector.this.Detect(QrDetector.this.mYuvBytes);
                        if (resultDetect != null) {
                            QrDetector.this.mScanResult = resultDetect;
                            if (QrDetector.this.mListener != null) {
                                if (QrDetector.this.mResultScheduler != null) {
                                    QrDetector.this.mResultScheduler.post(new Runnable() { // from class: com.sonyericsson.android.camera.qrdetection.QrDetector.DetectRunnable.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            QrDetector.this.mListener.onDetectResult(resultDetect);
                                        }
                                    });
                                } else {
                                    QrDetector.this.mListener.onDetectResult(resultDetect);
                                }
                            }
                        }
                    } else if (CamLog.VERBOSE) {
                        CamLog.d("Frame size mismatch: expected=" + QrDetector.this.mYuvBytes.length
                                + " actual=" + this.mYuvBuffer.remaining());
                    }
                }
                QrDetector.this.postGetFrame();
            }
        }
    }
}
