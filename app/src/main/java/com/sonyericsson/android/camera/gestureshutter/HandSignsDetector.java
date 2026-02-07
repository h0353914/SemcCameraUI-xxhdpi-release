package com.sonyericsson.android.camera.gestureshutter;

import android.os.Handler;
import com.sonyericsson.android.camera.CameraActivity$LayoutOrientation;
import com.sonyericsson.android.camera.device.ImageRetriever;
import com.sonyericsson.android.camera.device.ImageRetriever$OnImageRetrieverCallback;
import com.sonyericsson.android.camera.util.BackgroundWorker;
import com.sonyericsson.android.camera.util.CamLog;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class HandSignsDetector implements HandSignsDetectorInterface {
    private static final int DEBUG_FPS_CALCULATE_INTERVAL_MILLIS = 3000;
    private static final int DETECT_FRAME_RATE = 10;
    private static final int MAX_DETECT_FRAME_HEIGHT = 480;
    private static final int MAX_DETECT_FRAME_WIDTH = 640;
    private static final float NV21_BUFFER_SIZE_MULTIPLIER = 1.5f;
    public static final String TAG = "HandSignsDetector";
    private HandSignsDetector$DetectRunnable mCurrentDetect;
    private ImageRetriever mImageRetriever;
    private final HandSignsDetectorInterface$DetectResultListener mListener;
    private final Handler mResultScheduler;
    private int mRoll;
    private boolean mIsStarted = false;
    private final HandSignsDetector$DetectContext mDetectContext = new HandSignsDetector$DetectContext(null);
    private final HandSignsDetector$FpsLimiter mFpsLimiter = new HandSignsDetector$FpsLimiter(10);
    private final Runnable mGetFrameTask = new HandSignsDetector$1(this);
    private ImageRetriever$OnImageRetrieverCallback mImageCallback = new HandSignsDetector$2(this);
    private HandSignsNativeWrapper mNativeWrapper = new HandSignsNativeWrapper();
    private BackgroundWorker mWorker = new BackgroundWorker("HandSignsDetector");

    static /* synthetic */ HandSignsDetector$DetectContext access$100(HandSignsDetector handSignsDetector) {
        return handSignsDetector.mDetectContext;
    }

    static /* synthetic */ Handler access$1000(HandSignsDetector handSignsDetector) {
        return handSignsDetector.mResultScheduler;
    }

    static /* synthetic */ void access$1100(HandSignsDetector handSignsDetector) {
        handSignsDetector.postGetFrame();
    }

    static /* synthetic */ boolean access$200(HandSignsDetector handSignsDetector) {
        return handSignsDetector.mIsStarted;
    }

    static /* synthetic */ ImageRetriever$OnImageRetrieverCallback access$300(HandSignsDetector handSignsDetector) {
        return handSignsDetector.mImageCallback;
    }

    static /* synthetic */ BackgroundWorker access$400(HandSignsDetector handSignsDetector) {
        return handSignsDetector.mWorker;
    }

    static /* synthetic */ ImageRetriever access$500(HandSignsDetector handSignsDetector) {
        return handSignsDetector.mImageRetriever;
    }

    static /* synthetic */ void access$600(HandSignsDetector handSignsDetector, int i, int i2, ByteBuffer byteBuffer) {
        handSignsDetector.postDetect(i, i2, byteBuffer);
    }

    static /* synthetic */ HandSignsNativeWrapper access$700(HandSignsDetector handSignsDetector) {
        return handSignsDetector.mNativeWrapper;
    }

    static /* synthetic */ int access$800(HandSignsDetector handSignsDetector) {
        return handSignsDetector.mRoll;
    }

    static /* synthetic */ HandSignsDetectorInterface$DetectResultListener access$900(HandSignsDetector handSignsDetector) {
        return handSignsDetector.mListener;
    }

    public HandSignsDetector(HandSignsDetectorInterface$DetectResultListener handSignsDetectorInterface$DetectResultListener, Handler handler) {
        this.mListener = handSignsDetectorInterface$DetectResultListener;
        this.mResultScheduler = handler;
    }

    @Override // com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface
    public int getDetectWidth() {
        if (this.mDetectContext.isInitialized()) {
            return this.mDetectContext.getDetectWidth();
        }
        return 0;
    }

    @Override // com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface
    public int getDetectHeight() {
        if (this.mDetectContext.isInitialized()) {
            return this.mDetectContext.getDetectHeight();
        }
        return 0;
    }

    @Override // com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface
    public void startDetect(ImageRetriever imageRetriever) {
        this.mImageRetriever = imageRetriever;
        this.mDetectContext.reset();
        this.mIsStarted = true;
        postGetFrame();
    }

    @Override // com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface
    public void stopDetect() {
        if (this.mCurrentDetect != null) {
            this.mWorker.getHandler().removeCallbacks(this.mCurrentDetect);
            this.mCurrentDetect = null;
        }
        this.mWorker.getHandler().removeCallbacks(this.mGetFrameTask);
        synchronized (this.mDetectContext) {
            this.mImageRetriever.unregisterPreviewStreamingCallback(this.mImageCallback);
            this.mImageRetriever = null;
            this.mIsStarted = false;
        }
    }

    @Override // com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface
    public void setLayoutOrientation(CameraActivity$LayoutOrientation cameraActivity$LayoutOrientation) {
        switch (HandSignsDetector$3.$SwitchMap$com$sonyericsson$android$camera$CameraActivity$LayoutOrientation[cameraActivity$LayoutOrientation.ordinal()]) {
            case 1:
                this.mRoll = 270;
                break;
            case 2:
                this.mRoll = 0;
                break;
            case 3:
                this.mRoll = 90;
                break;
            case 4:
                this.mRoll = 180;
                break;
            default:
                throw new RuntimeException("Abnormal orientation: " + cameraActivity$LayoutOrientation);
        }
        if (CamLog.VERBOSE) {
            CamLog.d("Rotation updated to:" + this.mRoll);
        }
    }

    @Override // com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface
    public boolean isStarted() {
        return this.mIsStarted;
    }

    @Override // com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface
    public void release() {
        try {
            this.mWorker.quit();
        } catch (InterruptedException unused) {
        }
        this.mNativeWrapper.release();
    }

    private void postGetFrame() {
        long jHit = this.mFpsLimiter.hit();
        this.mWorker.getHandler().postDelayed(this.mGetFrameTask, jHit);
        if (CamLog.VERBOSE) {
            CamLog.d("Get frame posted with delay: " + jHit);
        }
    }

    private void postDetect(int i, int i2, ByteBuffer byteBuffer) {
        this.mCurrentDetect = new HandSignsDetector$DetectRunnable(this, i, i2, byteBuffer);
        this.mWorker.getHandler().post(this.mCurrentDetect);
        if (CamLog.VERBOSE) {
            CamLog.d("detection posted");
        }
    }
}
