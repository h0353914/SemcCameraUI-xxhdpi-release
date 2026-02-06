package com.sonyericsson.android.camera.controller;

import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Handler;
import com.sonyericsson.android.camera.CameraActivity$LayoutOrientation;
import com.sonyericsson.android.camera.CameraActivity$LayoutOrientationChangedListener;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.device.ImageRetriever;
import com.sonyericsson.android.camera.gestureshutter.HandSignsDetector;
import com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface;
import com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface$DetectResultInterface;
import com.sonyericsson.android.camera.gestureshutter.HandSignsDetectorInterface$DetectResultListener;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.GestureShutterView$AnimationStatusListener;

public class GestureShutter {
    private static final boolean IS_GESTURE_SHUTTER_SUPPORTED = !"".equalsIgnoreCase("noGesture");
    private static final String TAG = "GestureShutter";
    private GestureShutter$ControllerHost mControllerHost;
    private GestureShutter$WindowHost mWindowHost;
    private boolean mIsEnabled = true;
    private boolean mIsGestureShutterOn = false;
    private boolean mIsPreviewing = false;
    private CapturingMode mCapturingMode = CapturingMode.UNKNOWN;
    private boolean mIsSelftimerRunning = false;
    private CameraActivity$LayoutOrientation mLayoutOrientation = CameraActivity$LayoutOrientation.Unknown;
    private ImageRetriever mImageRetriever = null;
    private Handler mUIScheduler = new Handler();
    private HandSignsDetectorInterface mHandSignsDetector = null;
    private GestureShutter$State mState = null;
    private GestureShutterView$AnimationStatusListener mAnimationListener = new GestureShutter$1(this);
    private HandSignsDetectorInterface$DetectResultListener mDetectResultListener = new GestureShutter$2(this);
    private CameraActivity$LayoutOrientationChangedListener mOrientationListener = new GestureShutter$3(this);

    static /* synthetic */ GestureShutter$State access$000(GestureShutter gestureShutter) {
        return gestureShutter.mState;
    }

    static /* synthetic */ CameraActivity$LayoutOrientation access$100(GestureShutter gestureShutter) {
        return gestureShutter.mLayoutOrientation;
    }

    static /* synthetic */ boolean access$1000(GestureShutter gestureShutter) {
        return gestureShutter.mIsEnabled;
    }

    static /* synthetic */ CameraActivity$LayoutOrientation access$102(GestureShutter gestureShutter, CameraActivity$LayoutOrientation cameraActivity$LayoutOrientation) {
        gestureShutter.mLayoutOrientation = cameraActivity$LayoutOrientation;
        return cameraActivity$LayoutOrientation;
    }

    static /* synthetic */ HandSignsDetectorInterface access$1100(GestureShutter gestureShutter) {
        return gestureShutter.createDetector();
    }

    static /* synthetic */ ImageRetriever access$1200(GestureShutter gestureShutter) {
        return gestureShutter.mImageRetriever;
    }

    static /* synthetic */ RectF access$1300(GestureShutter gestureShutter, Rect rect, int i, int i2) {
        return gestureShutter.translateFromDetectToPreview(rect, i, i2);
    }

    static /* synthetic */ GestureShutterView$AnimationStatusListener access$1400(GestureShutter gestureShutter) {
        return gestureShutter.mAnimationListener;
    }

    static /* synthetic */ HandSignsDetectorInterface access$200(GestureShutter gestureShutter) {
        return gestureShutter.mHandSignsDetector;
    }

    static /* synthetic */ HandSignsDetectorInterface access$202(GestureShutter gestureShutter, HandSignsDetectorInterface handSignsDetectorInterface) {
        gestureShutter.mHandSignsDetector = handSignsDetectorInterface;
        return handSignsDetectorInterface;
    }

    static /* synthetic */ boolean access$300(GestureShutter gestureShutter) {
        return gestureShutter.shouldPerformDetection();
    }

    static /* synthetic */ void access$400(GestureShutter gestureShutter, GestureShutter$State gestureShutter$State) {
        gestureShutter.changeState(gestureShutter$State);
    }

    static /* synthetic */ GestureShutter$WindowHost access$500(GestureShutter gestureShutter) {
        return gestureShutter.mWindowHost;
    }

    static /* synthetic */ GestureShutter$WindowHost access$502(GestureShutter gestureShutter, GestureShutter$WindowHost gestureShutter$WindowHost) {
        gestureShutter.mWindowHost = gestureShutter$WindowHost;
        return gestureShutter$WindowHost;
    }

    static /* synthetic */ CameraActivity$LayoutOrientationChangedListener access$600(GestureShutter gestureShutter) {
        return gestureShutter.mOrientationListener;
    }

    static /* synthetic */ GestureShutter$ControllerHost access$700(GestureShutter gestureShutter) {
        return gestureShutter.mControllerHost;
    }

    static /* synthetic */ boolean access$800(GestureShutter gestureShutter) {
        return gestureShutter.mIsGestureShutterOn;
    }

    static /* synthetic */ boolean access$900(GestureShutter gestureShutter) {
        return gestureShutter.isOperableMode();
    }

    public static boolean isGestureShutterSupported() {
        return IS_GESTURE_SHUTTER_SUPPORTED;
    }

    public GestureShutter(GestureShutter$ControllerHost gestureShutter$ControllerHost, GestureShutter$WindowHost gestureShutter$WindowHost) {
        this.mWindowHost = null;
        this.mControllerHost = null;
        this.mControllerHost = gestureShutter$ControllerHost;
        this.mWindowHost = gestureShutter$WindowHost;
        changeState(new GestureShutter$StateInitializing(this));
    }

    public void setEnabled(boolean z) {
        this.mIsEnabled = z;
        if (z) {
            return;
        }
        changeState(new GestureShutter$StateStopped(this, false));
    }

    private void changeState(GestureShutter$State gestureShutter$State) {
        if (CamLog.VERBOSE) {
            CamLog.d("State is changing from " + this.mState + " to " + gestureShutter$State, new Exception());
        }
        this.mState = gestureShutter$State;
        this.mState.entry();
    }

    private HandSignsDetectorInterface createDetector() {
        if (CamLog.VERBOSE) {
            CamLog.d("Creating HandSignsDetector");
        }
        return new HandSignsDetector(this.mDetectResultListener, this.mUIScheduler);
    }

    private boolean shouldPerformDetection() {
        if (CamLog.VERBOSE) {
            String[] strArr = new String[1];
            StringBuilder sb = new StringBuilder();
            sb.append("shoudPerformDetection? setting is:");
            sb.append(this.mIsGestureShutterOn ? "ON" : "OFF");
            sb.append(" isPreviewing:");
            sb.append(this.mIsPreviewing);
            sb.append(" isSelftimerRunning:");
            sb.append(this.mIsSelftimerRunning);
            sb.append(" capturingMode:");
            sb.append(this.mCapturingMode);
            strArr[0] = sb.toString();
            CamLog.d(strArr);
        }
        return this.mIsGestureShutterOn && this.mIsPreviewing && !this.mIsSelftimerRunning && isOperableMode();
    }

    private boolean isOperableMode() {
        return this.mCapturingMode == CapturingMode.FRONT_PHOTO || this.mCapturingMode == CapturingMode.SUPERIOR_FRONT;
    }

    private RectF translateFromDetectToPreview(Rect rect, int i, int i2) {
        if (i == 0 || i2 == 0) {
            return null;
        }
        RectF rectF = new RectF();
        Point previewSize = this.mWindowHost.getPreviewSize();
        float f = previewSize.x / i;
        float f2 = previewSize.y / i2;
        if (previewSize.x == previewSize.y) {
            Rect viewFinderSize = this.mWindowHost.getViewFinderSize();
            rectF.left = (previewSize.x - (rect.right * f)) + (viewFinderSize.height() / 3.0f);
            rectF.right = (previewSize.x - (rect.left * f)) + (viewFinderSize.height() / 3.0f);
        } else {
            rectF.left = previewSize.x - (rect.right * f);
            rectF.right = previewSize.x - (rect.left * f);
        }
        rectF.top = rect.top * f2;
        rectF.bottom = rect.bottom * f2;
        return rectF;
    }

    public void setWindowHost(GestureShutter$WindowHost gestureShutter$WindowHost) {
        this.mState.setWindowHost(gestureShutter$WindowHost);
    }

    public void handlePreviewStarted(CapturingMode capturingMode, ImageRetriever imageRetriever) {
        this.mImageRetriever = imageRetriever;
        this.mIsPreviewing = true;
        this.mCapturingMode = capturingMode;
        this.mState.updateDetectionStatus();
    }

    public void handlePreviewStopped() {
        this.mIsPreviewing = false;
        this.mImageRetriever = null;
        this.mState.updateDetectionStatus();
    }

    public void handleSettingsChanged(boolean z) {
        this.mIsGestureShutterOn = z;
        this.mState.updateDetectionStatus();
    }

    public void handleSelftimerStarted() {
        this.mIsSelftimerRunning = true;
        this.mState.updateDetectionStatus();
    }

    public void handleSelftimerStopped(boolean z) {
        this.mIsSelftimerRunning = false;
        this.mControllerHost.resetGestureShutterCountDown();
        if (z) {
            return;
        }
        this.mState.updateDetectionStatus();
    }

    public void handleDetectResult(HandSignsDetectorInterface$DetectResultInterface handSignsDetectorInterface$DetectResultInterface) {
        this.mState.handleDetectResult(handSignsDetectorInterface$DetectResultInterface);
    }

    public void release() {
        changeState(new GestureShutter$StateStopped(this, true));
    }
}
