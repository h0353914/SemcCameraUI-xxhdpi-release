package com.sonyericsson.cameracommon.focusview;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.app.Activity;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout$LayoutParams;
import com.sonyericsson.android.camera.device.CameraParameters$FaceDetectionResult;
import com.sonyericsson.android.camera.device.CameraParameters$ObjectTrackingResult;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver$ScreenAspect;
import com.sonyericsson.cameracommon.animation.FocusRectanglesAnimation;
import com.sonyericsson.cameracommon.animation.FocusRectanglesAnimation$AnimationConfig;
import com.sonyericsson.cameracommon.utility.FaceDetectUtil;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver$LayoutOrientationType;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map$Entry;

/* JADX INFO: loaded from: classes.dex */
public class FocusRectangles {
    private static final String ANIMATION_SCALE_X = "scaleX";
    private static final String ANIMATION_SCALE_Y = "scaleY";
    private static final int FOCUS_RECT_SET_DOWN_ANIMATION_START_DELAY_TIME = 100;
    private static final float INTERPOLATOR_CONTROL_X1 = 0.23f;
    private static final float INTERPOLATOR_CONTROL_X2 = 0.32f;
    private static final float INTERPOLATOR_CONTROL_Y1 = 1.0f;
    private static final float INTERPOLATOR_CONTROL_Y2 = 1.0f;
    public static final String TAG = "FocusRectangles";
    private static final int TRACKED_OBJECT_RECT_REFRESH_TIMEOUT = 1000;
    private Activity mActivity;
    private FocusRectanglesAnimation mAnimation;
    private View mCaptureArea;
    private int mDevicePreviewHeight;
    private int mDevicePreviewWidth;
    private HashMap<String, TaggedRectangle> mFaceRectangles;
    private FocusRectangles$FaceReflectChecker mFaceReflectChecker;
    private FocusActionListener mFocusEventListener;
    private CameraParameters$FaceDetectionResult mLastFaceDetectionResult;
    private View$OnTouchListener mOnTouchListener;
    private RelativeLayout mRectangles;
    private LayoutDependencyResolver$ScreenAspect mScreenAspect;
    private RelativeLayout mSingleAfRect;
    private int mSmileScore;
    private RelativeLayout mTouchAfRect;
    private TaggedRectangle mTrackedObjectRectangle;
    private Handler mHandler = new Handler();
    private TaggedRectangle mPressedRectangle = null;
    private final FocusRectangles$RefreshTrackedObjectRectangleTask mRefreshTrackedObjectRectangleTask = new FocusRectangles$RefreshTrackedObjectRectangleTask(this);
    private final FocusRectangles$OnFaceRectTouchListener mOnFaceRectTouchListener = new FocusRectangles$OnFaceRectTouchListener(this);
    private boolean mIsFaceTouchCaptureEnabled = false;
    private boolean mIsFocusAnimationEnabled = false;
    private FocusRectangles$State mCurrentState = new FocusRectangles$DefaultFocusState(this);
    private boolean mIsRecording = false;
    private String mLatestSelectedFaceUuid = null;
    private int mCurrentOrientation = 2;
    private RectangleTouchEventDispatcher mTouchEventDispatcher = null;
    private Runnable mFocusAnimationTask = null;
    private int mSmileCaptureLevel = -1;
    private boolean mIsManualFocus = false;
    private boolean mObjectTrackingRectSupported = false;
    private FocusRectangles$ObJectTrackingFocusIconState mObJectTrackingFocusIconState = FocusRectangles$ObJectTrackingFocusIconState.NOT_DISPLAY;

    static /* synthetic */ void access$100(FocusRectangles focusRectangles, CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult, boolean z) {
        focusRectangles.updateFaceRectanglesData(cameraParameters$FaceDetectionResult, z);
    }

    static /* synthetic */ RelativeLayout access$1000(FocusRectangles focusRectangles) {
        return focusRectangles.mSingleAfRect;
    }

    static /* synthetic */ void access$1100(FocusRectangles focusRectangles) {
        focusRectangles.resetRectanglesColor();
    }

    static /* synthetic */ TaggedRectangle access$1200(FocusRectangles focusRectangles) {
        return focusRectangles.mTrackedObjectRectangle;
    }

    static /* synthetic */ boolean access$1400(FocusRectangles focusRectangles) {
        return focusRectangles.mObjectTrackingRectSupported;
    }

    static /* synthetic */ FocusRectangles$ObJectTrackingFocusIconState access$1500(FocusRectangles focusRectangles) {
        return focusRectangles.mObJectTrackingFocusIconState;
    }

    static /* synthetic */ void access$1600(FocusRectangles focusRectangles, CameraParameters$ObjectTrackingResult cameraParameters$ObjectTrackingResult) {
        focusRectangles.initObjectTrackingAnimation(cameraParameters$ObjectTrackingResult);
    }

    static /* synthetic */ void access$1700(FocusRectangles focusRectangles, CameraParameters$ObjectTrackingResult cameraParameters$ObjectTrackingResult, boolean z) {
        focusRectangles.playObjectTrackingAnimation(cameraParameters$ObjectTrackingResult, z);
    }

    static /* synthetic */ void access$1800(FocusRectangles focusRectangles, CameraParameters$ObjectTrackingResult cameraParameters$ObjectTrackingResult, boolean z) {
        focusRectangles.onObjectTrackedInternal(cameraParameters$ObjectTrackingResult, z);
    }

    static /* synthetic */ String access$1900(FocusRectangles focusRectangles) {
        return focusRectangles.mLatestSelectedFaceUuid;
    }

    static /* synthetic */ String access$1902(FocusRectangles focusRectangles, String str) {
        focusRectangles.mLatestSelectedFaceUuid = str;
        return str;
    }

    static /* synthetic */ RelativeLayout access$200(FocusRectangles focusRectangles) {
        return focusRectangles.mTouchAfRect;
    }

    static /* synthetic */ HashMap access$2000(FocusRectangles focusRectangles) {
        return focusRectangles.mFaceRectangles;
    }

    static /* synthetic */ void access$2100(FocusRectangles focusRectangles, boolean z) {
        focusRectangles.hideFaceRectangles(z);
    }

    static /* synthetic */ void access$2200(FocusRectangles focusRectangles) {
        focusRectangles.hideTrackedObjectRecgantle();
    }

    static /* synthetic */ void access$2300(FocusRectangles focusRectangles) {
        focusRectangles.removeObjectFocusRectAnimation();
    }

    static /* synthetic */ void access$2400(FocusRectangles focusRectangles, boolean z) {
        focusRectangles.resetObjectTrackingRectangleColor(z);
    }

    static /* synthetic */ String access$2500(FocusRectangles focusRectangles, CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
        return focusRectangles.getSelectedFaceUuId(cameraParameters$FaceDetectionResult);
    }

    static /* synthetic */ void access$2600(FocusRectangles focusRectangles, CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult, boolean z, String str) {
        focusRectangles.updateFaceRectanglesData(cameraParameters$FaceDetectionResult, z, str);
    }

    static /* synthetic */ TaggedRectangle access$2700(FocusRectangles focusRectangles) {
        return focusRectangles.mPressedRectangle;
    }

    static /* synthetic */ TaggedRectangle access$2702(FocusRectangles focusRectangles, TaggedRectangle taggedRectangle) {
        focusRectangles.mPressedRectangle = taggedRectangle;
        return taggedRectangle;
    }

    static /* synthetic */ FocusRectangles$FaceReflectChecker access$2800(FocusRectangles focusRectangles) {
        return focusRectangles.mFaceReflectChecker;
    }

    static /* synthetic */ CameraParameters$FaceDetectionResult access$2900(FocusRectangles focusRectangles) {
        return focusRectangles.mLastFaceDetectionResult;
    }

    static /* synthetic */ FocusRectanglesAnimation access$300(FocusRectangles focusRectangles) {
        return focusRectangles.mAnimation;
    }

    static /* synthetic */ void access$3000(FocusRectangles focusRectangles, CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult, boolean z, String str) {
        focusRectangles.faceResultToRectangles(cameraParameters$FaceDetectionResult, z, str);
    }

    static /* synthetic */ void access$3100(FocusRectangles focusRectangles, String str) {
        focusRectangles.changeFacePriority(str);
    }

    static /* synthetic */ FocusActionListener access$3200(FocusRectangles focusRectangles) {
        return focusRectangles.mFocusEventListener;
    }

    static /* synthetic */ boolean access$3300(FocusRectangles focusRectangles) {
        return focusRectangles.mIsFaceTouchCaptureEnabled;
    }

    static /* synthetic */ View access$3400(FocusRectangles focusRectangles) {
        return focusRectangles.mCaptureArea;
    }

    static /* synthetic */ boolean access$3500(FocusRectangles focusRectangles) {
        return focusRectangles.mIsFocusAnimationEnabled;
    }

    static /* synthetic */ Handler access$3700(FocusRectangles focusRectangles) {
        return focusRectangles.mHandler;
    }

    static /* synthetic */ void access$400(FocusRectangles focusRectangles, boolean z) {
        focusRectangles.setAFLocking(z);
    }

    static /* synthetic */ boolean access$500(FocusRectangles focusRectangles) {
        return focusRectangles.mIsManualFocus;
    }

    static /* synthetic */ void access$600(FocusRectangles focusRectangles, Point point, FocusRectangles$FocusSetType focusRectangles$FocusSetType) {
        focusRectangles.setFocusPositionInternal(point, focusRectangles$FocusSetType);
    }

    static /* synthetic */ void access$800(FocusRectangles focusRectangles, FocusRectangles$State focusRectangles$State) {
        focusRectangles.changeState(focusRectangles$State);
    }

    public FocusRectangles(Activity activity, FocusActionListener focusActionListener, int i, int i2, FocusRectanglesViewList focusRectanglesViewList, View view, View$OnTouchListener view$OnTouchListener, LayoutDependencyResolver$ScreenAspect layoutDependencyResolver$ScreenAspect) {
        this.mActivity = activity;
        this.mScreenAspect = layoutDependencyResolver$ScreenAspect;
        this.mFocusEventListener = focusActionListener;
        this.mDevicePreviewWidth = i;
        this.mDevicePreviewHeight = i2;
        this.mAnimation = new FocusRectanglesAnimation(this.mActivity);
        this.mCaptureArea = view;
        this.mOnTouchListener = view$OnTouchListener;
        initialize(focusRectanglesViewList);
        this.mFaceReflectChecker = new FocusRectangles$FaceReflectChecker(this, null);
    }

    public void enableFaceTouchCapture() {
        this.mIsFaceTouchCaptureEnabled = true;
    }

    public void disableFaceTouchCapture() {
        this.mIsFaceTouchCaptureEnabled = false;
    }

    public void clearTouched() {
        this.mOnFaceRectTouchListener.clearTouched();
    }

    public void updateDevicePreviewSize(int i, int i2) {
        this.mDevicePreviewWidth = i;
        this.mDevicePreviewHeight = i2;
        updateRectanglesCoordinates();
    }

    private void initialize(FocusRectanglesViewList focusRectanglesViewList) {
        this.mRectangles = focusRectanglesViewList.rectanglesContainer;
        LayoutInflater layoutInflater = this.mActivity.getLayoutInflater();
        this.mFaceRectangles = new HashMap<>();
        this.mTouchEventDispatcher = new RectangleTouchEventDispatcher(this.mFaceRectangles);
        this.mRectangles.setOnTouchListener(this.mTouchEventDispatcher);
        View[] viewArr = focusRectanglesViewList.faceViewList != null ? focusRectanglesViewList.faceViewList : null;
        for (int i = 0; i < 5; i++) {
            addTaggedRectangle(layoutInflater, Integer.toString(i), viewArr != null ? (TaggedRectangle) viewArr[i] : null);
        }
        this.mTrackedObjectRectangle = focusRectanglesViewList.trackedObjectView;
        if (this.mTrackedObjectRectangle == null) {
            this.mTrackedObjectRectangle = (TaggedRectangle) layoutInflater.inflate(2131492923, (ViewGroup) null);
        }
        this.mTrackedObjectRectangle.setVisibility(4);
        this.mRectangles.addView(this.mTrackedObjectRectangle, new ViewGroup$LayoutParams(-1, -1));
        this.mTrackedObjectRectangle.prepare(3);
        this.mTrackedObjectRectangle.setRectImageSize(0, 0, this.mActivity.getResources().getDimensionPixelSize(2131165336), this.mActivity.getResources().getDimensionPixelSize(2131165335));
        ((ImageView) this.mTrackedObjectRectangle.findViewById(2131296528)).setOnTouchListener(this.mOnTouchListener);
        this.mSingleAfRect = focusRectanglesViewList.singleAfView;
        if (this.mSingleAfRect == null) {
            this.mSingleAfRect = (RelativeLayout) layoutInflater.inflate(2131492924, (ViewGroup) null);
        }
        this.mSingleAfRect.setVisibility(4);
        this.mRectangles.addView(this.mSingleAfRect, new RelativeLayout$LayoutParams(-1, -1));
        this.mTouchAfRect = focusRectanglesViewList.touchAfView;
        if (this.mTouchAfRect == null) {
            this.mTouchAfRect = (RelativeLayout) layoutInflater.inflate(2131492924, (ViewGroup) null);
        }
        this.mTouchAfRect.setVisibility(4);
        this.mRectangles.addView(this.mTouchAfRect, new RelativeLayout$LayoutParams(-1, -1));
        ((ImageView) this.mTouchAfRect.findViewById(2131296347)).setOnTouchListener(this.mOnTouchListener);
        updateRectanglesCoordinates();
    }

    private TaggedRectangle addTaggedRectangle(LayoutInflater layoutInflater, String str, TaggedRectangle taggedRectangle) {
        if (this.mFaceRectangles.size() >= 5) {
            return null;
        }
        Rect rect = new Rect();
        ViewGroup$LayoutParams viewGroup$LayoutParams = new ViewGroup$LayoutParams(-1, -1);
        if (taggedRectangle == null) {
            taggedRectangle = (TaggedRectangle) layoutInflater.inflate(2131492923, (ViewGroup) null);
        }
        this.mRectangles.addView(taggedRectangle, viewGroup$LayoutParams);
        taggedRectangle.prepare(0);
        taggedRectangle.setRectPosition(rect.centerX(), rect.centerY(), rect.width(), rect.height());
        taggedRectangle.setRectangleOnTouchListener(this.mOnFaceRectTouchListener);
        this.mFaceRectangles.put(str, taggedRectangle);
        return taggedRectangle;
    }

    private void updateRectanglesCoordinates() {
        Rect surfaceViewRect = LayoutDependencyResolver.getSurfaceViewRect(this.mActivity, this.mDevicePreviewWidth / this.mDevicePreviewHeight, this.mScreenAspect);
        setRectSizeAndPosition(this.mRectangles, surfaceViewRect.left, surfaceViewRect.top, surfaceViewRect.width(), surfaceViewRect.height());
        Iterator<String> it = this.mFaceRectangles.keySet().iterator();
        while (it.hasNext()) {
            this.mFaceRectangles.get(it.next()).setSize(surfaceViewRect.width(), surfaceViewRect.height());
        }
        changeState(new FocusRectangles$DefaultFocusState(this));
    }

    public void release() {
        this.mActivity = null;
        this.mFocusEventListener = null;
    }

    public void onAutoFocusStarted() {
        this.mCurrentState.handleOnAutoFocusStarted();
    }

    public void onAutoFocusDone(boolean z) {
        this.mCurrentState.handleOnAutoFocusDone(z);
    }

    public void onAutoFocusCanceled() {
        this.mCurrentState.handleOnAutoFocusCanceled();
    }

    public void setFocusPosition(Point point, FocusRectangles$FocusSetType focusRectangles$FocusSetType) {
        int[] iArr = new int[2];
        this.mRectangles.getLocationOnScreen(iArr);
        this.mCurrentState.handleSetFocusPosition(new Point(point.x - iArr[0], point.y - iArr[1]), focusRectangles$FocusSetType);
    }

    public void startFaceDetection() {
        this.mCurrentState.handleStartFaceDetection();
    }

    public void onFaceDetected(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
        this.mCurrentState.handleOnFaceDetected(cameraParameters$FaceDetectionResult);
    }

    public void startObjectTracking() {
        this.mObJectTrackingFocusIconState = FocusRectangles$ObJectTrackingFocusIconState.NOT_DISPLAY;
        this.mCurrentState.handleStartObjectTracking();
    }

    public void onObjectTracked(CameraParameters$ObjectTrackingResult cameraParameters$ObjectTrackingResult) {
        this.mCurrentState.handleOnTrackedObjectStateUpdated(cameraParameters$ObjectTrackingResult);
    }

    public void onObjectRemoved() {
        this.mCurrentState.handleOnObjectRemoved();
    }

    public void onObjectLost() {
        if (this.mObjectTrackingRectSupported) {
            this.mTrackedObjectRectangle.changeRectangleResource(2131230872);
        }
        this.mCurrentState.handleOnObjectLost();
    }

    public void onObjectFocused() {
        this.mTrackedObjectRectangle.changeRectangleResource(2131230871);
    }

    public void clearExceptTouchFocus() {
        this.mCurrentState.handleClearExceptTouchFocus();
    }

    public void clearAllFocus() {
        clearAllFocusExceptFace();
        clearFaceDetection();
    }

    public void clearAllFocusExceptFace() {
        this.mCurrentState.handleClearAllFocusExceptFace();
    }

    public void clearTouchFocus() {
        changeState(new FocusRectangles$DefaultFocusState(this));
        setFocusPositionInternal(null, null);
        this.mTouchAfRect.setVisibility(4);
        removeTouchFocusRectAnimation();
        resetTouchFocusRectangleColor();
    }

    public void clearSingleAutoFocus() {
        this.mSingleAfRect.setVisibility(4);
        removeSingleFocusRectAnimation();
        resetSingleFocusRectangleColor();
    }

    public void clearFaceDetection() {
        hideFaceRectangles(false);
        resetFaceRectangleColor();
        this.mTouchEventDispatcher.updateFaceList(null);
    }

    public void clearObjectTracking() {
        this.mCurrentState.handleClearObjectTracking();
    }

    public void onUiComponentOverlaid() {
        this.mCurrentState.handleOnUiComponentOverlaid();
    }

    public void onUiComponentRemoved() {
        this.mCurrentState.handleOnUiComponentRemoved();
    }

    public void reset() {
        stopRecording();
        setAFLocking(false);
        setLockedBySelfTimer(false);
    }

    public void startRecording() {
        this.mIsRecording = true;
    }

    public void stopRecording() {
        this.mIsRecording = false;
    }

    private void setAFLocking(boolean z) {
        if (z) {
            this.mCurrentState.handleStartAfLock();
        } else {
            this.mCurrentState.handleStopAfLock();
        }
        setEnableFaceFocusTouch(!z);
    }

    public void setLockedBySelfTimer(boolean z) {
        setEnableFaceFocusTouch(!z);
    }

    public void setEnableFaceFocusTouch(boolean z) {
        if (this.mFaceRectangles == null) {
            return;
        }
        Iterator<Map$Entry<String, TaggedRectangle>> it = this.mFaceRectangles.entrySet().iterator();
        while (it.hasNext()) {
            TaggedRectangle value = it.next().getValue();
            value.setRectangleOnTouchListener((z || value.isPressed()) ? this.mOnFaceRectTouchListener : null);
        }
    }

    private void updateFaceRectanglesData(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult, boolean z) {
        updateFaceRectanglesData(cameraParameters$FaceDetectionResult, z, null);
    }

    private void updateFaceRectanglesData(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult, boolean z, String str) {
        this.mLastFaceDetectionResult = cameraParameters$FaceDetectionResult;
        faceResultToRectangles(cameraParameters$FaceDetectionResult, z, str);
        if (this.mFaceReflectChecker.isWaitingForFaceReflected()) {
            this.mFaceReflectChecker.check(cameraParameters$FaceDetectionResult);
        }
    }

    private void updateFaceRectangles(FaceInformationList faceInformationList, String str, int i, boolean z) {
        if (str == null) {
            str = faceInformationList.getUserSelectedUuid();
            if (CamLog.VERBOSE) {
                CamLog.d("updateFaceRectangles: uuid is not specified, use uuid from API, uuid = " + str);
            }
        }
        int i2 = 0;
        for (TaggedRectangle taggedRectangle : this.mFaceRectangles.values()) {
            if (taggedRectangle == null) {
                if (CamLog.VERBOSE) {
                    CamLog.d("updateFaceRectangles: view is null, index = " + i2);
                }
                i2++;
            } else {
                taggedRectangle.clearUpdated();
                if (i2 < faceInformationList.getNamedFaceList().size()) {
                    NamedFace namedFace = faceInformationList.getNamedFace(i2);
                    if (namedFace == null) {
                        if (CamLog.VERBOSE) {
                            CamLog.d("updateFaceRectangles: namedFace is null, index = " + i2);
                        }
                        i2++;
                    } else {
                        updateRectangle(taggedRectangle, namedFace, i, z);
                        if (namedFace.mUuid.equals(str)) {
                            taggedRectangle.changeRectangleResource(2131230869);
                            taggedRectangle.stopAnimation();
                            if (this.mSmileCaptureLevel == -1) {
                                taggedRectangle.setSmileGaugeVisibility(4);
                            } else {
                                taggedRectangle.setSmileLevel(this.mSmileCaptureLevel);
                                taggedRectangle.setSmileGaugeVisibility(0);
                                updateSmileGauge(taggedRectangle, faceInformationList, this.mSmileCaptureLevel, i);
                            }
                            this.mLatestSelectedFaceUuid = taggedRectangle.getUuid();
                        } else {
                            taggedRectangle.setSmileGaugeVisibility(4);
                        }
                    }
                } else {
                    taggedRectangle.hide();
                    taggedRectangle.update(null, i);
                }
                i2++;
            }
        }
    }

    public int getSelectedFaceSmileScore() {
        int i = this.mSmileScore;
        this.mSmileScore = 0;
        return i;
    }

    private void updateSmileGauge(TaggedRectangle taggedRectangle, FaceInformationList faceInformationList, int i, int i2) {
        NamedFace namedFaceByUuid = faceInformationList.getNamedFaceByUuid(taggedRectangle.getUuid());
        if (namedFaceByUuid == null) {
            return;
        }
        Rect rectConvertFromActiveArrayToView = PositionConverter.getInstance().convertFromActiveArrayToView(namedFaceByUuid.mFacePosition);
        taggedRectangle.setSmileGaugesPosition(rectConvertFromActiveArrayToView.left, rectConvertFromActiveArrayToView.top, rectConvertFromActiveArrayToView.right, rectConvertFromActiveArrayToView.bottom, i2);
        taggedRectangle.setSmileLevel(i);
        taggedRectangle.setSmileScore(namedFaceByUuid.mSmileScore);
        this.mSmileScore = namedFaceByUuid.mSmileScore;
    }

    private void updateRectangle(TaggedRectangle taggedRectangle, NamedFace namedFace, int i, boolean z) {
        Rect rectConvertFromActiveArrayToView = PositionConverter.getInstance().convertFromActiveArrayToView(namedFace.mFacePosition);
        CamLog.d("Converted rectangle: " + rectConvertFromActiveArrayToView);
        taggedRectangle.setRectPosition(rectConvertFromActiveArrayToView.centerX(), rectConvertFromActiveArrayToView.centerY(), rectConvertFromActiveArrayToView.width(), rectConvertFromActiveArrayToView.height());
        if (z) {
            taggedRectangle.changeRectangleResource(0);
            taggedRectangle.hide();
        } else {
            taggedRectangle.changeRectangleResource(2131230868);
        }
        if (!(taggedRectangle.getVisibility() == 0)) {
            taggedRectangle.startRectangleAnimation(i);
        }
        taggedRectangle.update(namedFace.mUuid, i);
        taggedRectangle.setUpdated();
        if (taggedRectangle.getVisibility() != 0) {
            taggedRectangle.requestLayout();
            taggedRectangle.setVisibility(0);
        }
    }

    private void setRectSizeAndPosition(RelativeLayout relativeLayout, int i, int i2, int i3, int i4) {
        RelativeLayout$LayoutParams relativeLayout$LayoutParams = (RelativeLayout$LayoutParams) relativeLayout.getLayoutParams();
        if (relativeLayout$LayoutParams != null) {
            relativeLayout$LayoutParams.leftMargin = i;
            relativeLayout$LayoutParams.topMargin = i2;
            relativeLayout$LayoutParams.width = i3;
            relativeLayout$LayoutParams.height = i4;
            if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.LANDSCAPE) {
                relativeLayout$LayoutParams.addRule(15, -1);
                relativeLayout$LayoutParams.removeRule(14);
            } else {
                relativeLayout$LayoutParams.removeRule(15);
                relativeLayout$LayoutParams.addRule(14, -1);
            }
            relativeLayout.setLayoutParams(relativeLayout$LayoutParams);
        }
    }

    private void hideFaceRectangles(boolean z) {
        for (TaggedRectangle taggedRectangle : this.mFaceRectangles.values()) {
            if (z) {
                taggedRectangle.changeRectangleResource(0);
            }
            taggedRectangle.hide();
        }
    }

    private void hideTrackedObjectRecgantle() {
        this.mTrackedObjectRectangle.setVisibility(4);
    }

    private void removeTouchFocusRectAnimation() {
        ImageView imageView = (ImageView) this.mTouchAfRect.findViewById(2131296347);
        this.mIsFocusAnimationEnabled = false;
        if (imageView.getAnimation() == null) {
            return;
        }
        this.mAnimation.cancelAfFocusAnimationTouch(imageView);
        imageView.clearAnimation();
        imageView.setAnimation(null);
    }

    private void removeSingleFocusRectAnimation() {
        ImageView imageView = (ImageView) this.mSingleAfRect.findViewById(2131296347);
        if (imageView.getAnimation() == null) {
            return;
        }
        this.mAnimation.cancelAfFocusAnimationSingle(imageView);
        imageView.clearAnimation();
        imageView.setAnimation(null);
    }

    private void removeObjectFocusRectAnimation() {
        if (this.mTrackedObjectRectangle.getAnimation() == null) {
            return;
        }
        this.mAnimation.cancelAfFocusAnimationObject(this.mTrackedObjectRectangle);
        this.mTrackedObjectRectangle.clearAnimation();
        this.mTrackedObjectRectangle.setAnimation(null);
    }

    private void resetRectanglesColor() {
        resetFaceRectangleColor();
        resetObjectTrackingRectangleColor(false);
        resetTouchFocusRectangleColor();
        resetSingleFocusRectangleColor();
    }

    private void resetFaceRectangleColor() {
        for (TaggedRectangle taggedRectangle : this.mFaceRectangles.values()) {
            taggedRectangle.changeRectangleResource(0);
            taggedRectangle.setSmileGaugeVisibility(4);
        }
    }

    private void resetObjectTrackingRectangleColor(boolean z) {
        this.mTrackedObjectRectangle.changeRectangleResource(z ? getSuccessIcon() : getNormalIcon());
    }

    private void resetTouchFocusRectangleColor() {
        ImageView imageView = (ImageView) this.mTouchAfRect.findViewById(2131296347);
        imageView.setVisibility(0);
        this.mAnimation.startFocusAnimation(imageView, 2131230866);
    }

    private void resetSingleFocusRectangleColor() {
        ((ImageView) this.mSingleAfRect.findViewById(2131296347)).setBackgroundResource(2131230866);
    }

    private void setFocusPositionInternal(Point point, FocusRectangles$FocusSetType focusRectangles$FocusSetType) {
        if (point == null) {
            this.mTouchAfRect.scrollTo(0, 0);
            return;
        }
        if (focusRectangles$FocusSetType == FocusRectangles$FocusSetType.FIRST) {
            hideFaceRectangles(true);
        }
        int iWidth = point.x;
        int iHeight = point.y;
        Rect surfaceViewRect = LayoutDependencyResolver.getSurfaceViewRect(this.mActivity, this.mDevicePreviewWidth / this.mDevicePreviewHeight, this.mScreenAspect);
        FocusRectanglesAnimation$AnimationConfig touchAnimationConfig = this.mAnimation.getTouchAnimationConfig();
        if (iWidth < touchAnimationConfig.mToWidth / 2) {
            iWidth = touchAnimationConfig.mToWidth / 2;
        } else if (surfaceViewRect.right - (touchAnimationConfig.mToWidth / 2) < iWidth) {
            iWidth = surfaceViewRect.width() - (touchAnimationConfig.mToWidth / 2);
        }
        if (iHeight < touchAnimationConfig.mToHeight / 2) {
            iHeight = touchAnimationConfig.mToHeight / 2;
        } else if (surfaceViewRect.bottom - (touchAnimationConfig.mToHeight / 2) < iHeight) {
            iHeight = surfaceViewRect.height() - (touchAnimationConfig.mToHeight / 2);
        }
        this.mTouchAfRect.scrollTo((surfaceViewRect.width() / 2) - iWidth, (surfaceViewRect.height() / 2) - iHeight);
        this.mTouchAfRect.setVisibility(0);
        playTouchFocusStartAnimation(focusRectangles$FocusSetType);
    }

    private void playTouchFocusStartAnimation(FocusRectangles$FocusSetType focusRectangles$FocusSetType) {
        if (this.mIsFaceTouchCaptureEnabled) {
            return;
        }
        switch (FocusRectangles$4.$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$FocusSetType[focusRectangles$FocusSetType.ordinal()]) {
            case 1:
                playOnTouchDownAnimationForTouchFocusRect();
                break;
            case 2:
                playOnTouchUpAnimationForTouchFocusRect();
                break;
        }
    }

    private void playOnTouchDownAnimationForTouchFocusRect() {
        if (this.mTouchAfRect.getVisibility() == 0) {
            ImageView imageView = (ImageView) this.mTouchAfRect.findViewById(2131296347);
            imageView.setBackgroundResource(2131230868);
            this.mIsFocusAnimationEnabled = true;
            imageView.setVisibility(4);
            this.mFocusAnimationTask = new FocusRectangles$1(this);
            this.mHandler.postDelayed(this.mFocusAnimationTask, 100L);
        }
    }

    private void playOnTouchUpAnimationForTouchFocusRect() {
        if (this.mTouchAfRect.getVisibility() == 0) {
            if (this.mFocusAnimationTask != null) {
                this.mHandler.removeCallbacks(this.mFocusAnimationTask);
            }
            this.mFocusAnimationTask = new FocusRectangles$2(this);
            this.mHandler.post(this.mFocusAnimationTask);
            this.mIsFocusAnimationEnabled = true;
        }
    }

    private void onObjectTrackedInternal(CameraParameters$ObjectTrackingResult cameraParameters$ObjectTrackingResult, boolean z) {
        int iCenterX;
        int iCenterY;
        if (cameraParameters$ObjectTrackingResult.mIsLost) {
            this.mHandler.postDelayed(this.mRefreshTrackedObjectRectangleTask, 1000L);
            return;
        }
        this.mHandler.removeCallbacks(this.mRefreshTrackedObjectRectangleTask);
        Rect surfaceViewRect = LayoutDependencyResolver.getSurfaceViewRect(this.mActivity, this.mDevicePreviewWidth / this.mDevicePreviewHeight, this.mScreenAspect);
        float fWidth = surfaceViewRect.width() / this.mDevicePreviewWidth;
        float fHeight = surfaceViewRect.height() / this.mDevicePreviewHeight;
        if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
            iCenterX = (int) ((this.mDevicePreviewWidth - cameraParameters$ObjectTrackingResult.mRectOfTrackedObject.centerY()) * fWidth);
            iCenterY = (int) (cameraParameters$ObjectTrackingResult.mRectOfTrackedObject.centerX() * fHeight);
        } else {
            iCenterX = (int) (cameraParameters$ObjectTrackingResult.mRectOfTrackedObject.centerX() * fWidth);
            iCenterY = (int) (cameraParameters$ObjectTrackingResult.mRectOfTrackedObject.centerY() * fHeight);
        }
        FocusRectanglesAnimation$AnimationConfig objectAnimationConfig = this.mAnimation.getObjectAnimationConfig();
        Rect rect = new Rect(iCenterX - (objectAnimationConfig.mFromWidth / 2), iCenterY - (objectAnimationConfig.mFromHeight / 2), iCenterX + (objectAnimationConfig.mFromWidth / 2), iCenterY + (objectAnimationConfig.mFromHeight / 2));
        this.mTrackedObjectRectangle.setRectImageSize(rect.centerX(), rect.centerY(), -2, -2);
        resetObjectTrackingRectangleColor(z);
        this.mTrackedObjectRectangle.setVisibility(0);
        this.mTrackedObjectRectangle.requestLayout();
    }

    private void changeFacePriority(String str) {
        TaggedRectangle taggedRectangle = this.mFaceRectangles.get(str);
        if (taggedRectangle == null) {
            CamLog.e("changeFacePriority() faceUuid " + str + " not found.");
            return;
        }
        Rect rectConvertFromViewToActiveArray = PositionConverter.getInstance().convertFromViewToActiveArray(taggedRectangle.getFaceRect());
        Point point = new Point(rectConvertFromViewToActiveArray.centerX(), rectConvertFromViewToActiveArray.centerY());
        this.mFocusEventListener.onFaceSelected(point);
        this.mFaceReflectChecker.requestToWaitForFaceReflected(point);
    }

    private void faceResultToRectangles(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult, boolean z, String str) {
        FaceInformationList faceInformationList = cameraParameters$FaceDetectionResult != null ? FaceDetectUtil.getFaceInformationList(cameraParameters$FaceDetectionResult, new Rect(0, 0, this.mDevicePreviewWidth, this.mDevicePreviewHeight), getSelectedFaceUuId(cameraParameters$FaceDetectionResult)) : null;
        this.mTouchEventDispatcher.updateFaceList(faceInformationList);
        if (faceInformationList == null || z) {
            return;
        }
        updateFaceRectangles(faceInformationList, str, this.mCurrentOrientation, z);
    }

    public boolean isTouchFocus() {
        return this.mCurrentState.getClass().equals(FocusRectangles$TouchFocusState.class);
    }

    public Rect getTouchFocusIconSize() {
        return new Rect(0, 0, this.mActivity.getResources().getDimensionPixelSize(2131165338), this.mActivity.getResources().getDimensionPixelSize(2131165337));
    }

    public void setOrientation(int i) {
        this.mCurrentOrientation = i;
    }

    public void setVisibility(int i) {
        this.mRectangles.setVisibility(i);
    }

    private void changeState(FocusRectangles$State focusRectangles$State) {
        if (CamLog.VERBOSE) {
            CamLog.d("changeState to: " + focusRectangles$State.getClass().getSimpleName());
        }
        this.mCurrentState = focusRectangles$State;
    }

    protected int getNormalIcon() {
        return this.mIsRecording ? this.mObjectTrackingRectSupported ? 2131230871 : 2131230865 : this.mObjectTrackingRectSupported ? 2131230871 : 2131230866;
    }

    protected int getTouchIcon() {
        return this.mIsRecording ? this.mObjectTrackingRectSupported ? 2131230870 : 2131230865 : this.mObjectTrackingRectSupported ? 2131230870 : 2131230866;
    }

    protected int getTouchAfFocusingIcon() {
        return this.mIsManualFocus ? 0 : 2131230866;
    }

    protected int getTouchAfSuccessIcon() {
        return this.mIsManualFocus ? 0 : 2131230865;
    }

    protected int getAfFocusingIcon() {
        return this.mObjectTrackingRectSupported ? 2131230871 : 2131230866;
    }

    protected int getSuccessIcon() {
        return this.mObjectTrackingRectSupported ? 2131230871 : 2131230865;
    }

    private void displayObjectTrackingFocusFrame(Rect rect) {
        this.mTrackedObjectRectangle.setScaleX(1.0f);
        this.mTrackedObjectRectangle.setScaleY(1.0f);
        this.mTrackedObjectRectangle.setRectImageSize(rect.centerX(), rect.centerY(), rect.width(), rect.height());
        this.mTrackedObjectRectangle.setVisibility(0);
        ViewGroup$LayoutParams layoutParams = this.mTrackedObjectRectangle.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        this.mTrackedObjectRectangle.requestLayout();
    }

    private void initObjectTrackingAnimation(CameraParameters$ObjectTrackingResult cameraParameters$ObjectTrackingResult) {
        Rect rectConvertFromActiveArrayToView = PositionConverter.getInstance().convertFromActiveArrayToView(cameraParameters$ObjectTrackingResult.mRectOfTrackedObject);
        this.mTrackedObjectRectangle.changeRectangleResource(getTouchIcon());
        this.mObJectTrackingFocusIconState = FocusRectangles$ObJectTrackingFocusIconState.TOUCH_ICON;
        int dimensionPixelSize = this.mActivity.getResources().getDimensionPixelSize(2131165336);
        int dimensionPixelSize2 = this.mActivity.getResources().getDimensionPixelSize(2131165335);
        int i = rectConvertFromActiveArrayToView.left;
        int i2 = rectConvertFromActiveArrayToView.top;
        int i3 = rectConvertFromActiveArrayToView.right;
        int i4 = (rectConvertFromActiveArrayToView.bottom - i2) / 2;
        int i5 = i + ((i3 - i) / 2);
        int i6 = dimensionPixelSize / 2;
        rectConvertFromActiveArrayToView.left = i5 - i6;
        int i7 = i2 + i4;
        int i8 = dimensionPixelSize2 / 2;
        rectConvertFromActiveArrayToView.top = i7 - i8;
        rectConvertFromActiveArrayToView.right = i5 + i6;
        rectConvertFromActiveArrayToView.bottom = i7 + i8;
        displayObjectTrackingFocusFrame(rectConvertFromActiveArrayToView);
    }

    private void playObjectTrackingAnimation(CameraParameters$ObjectTrackingResult cameraParameters$ObjectTrackingResult, boolean z) {
        Rect rect = new Rect(0, 0, this.mTrackedObjectRectangle.getRectImageWidth(), this.mTrackedObjectRectangle.getRectImageHeight());
        Rect rectConvertFromActiveArrayToView = PositionConverter.getInstance().convertFromActiveArrayToView(cameraParameters$ObjectTrackingResult.mRectOfTrackedObject);
        resetObjectTrackingRectangleColor(z);
        displayObjectTrackingFocusFrame(rectConvertFromActiveArrayToView);
        if (this.mObJectTrackingFocusIconState == FocusRectangles$ObJectTrackingFocusIconState.TOUCH_ICON) {
            this.mObJectTrackingFocusIconState = FocusRectangles$ObJectTrackingFocusIconState.TRACKING_ICON;
            ObjectAnimator objectTrackingAnimator = getObjectTrackingAnimator(this.mTrackedObjectRectangle, 300, rect, rectConvertFromActiveArrayToView);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(objectTrackingAnimator);
            animatorSet.setInterpolator(new PathInterpolator(0.23f, 1.0f, 0.32f, 1.0f));
            animatorSet.addListener(new FocusRectangles$3(this));
            animatorSet.start();
        }
    }

    private String getSelectedFaceUuId(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
        if (cameraParameters$FaceDetectionResult.extFaceList.size() == 0) {
            return null;
        }
        return Integer.toString(cameraParameters$FaceDetectionResult.extFaceList.get(cameraParameters$FaceDetectionResult.indexOfSelectedFace).id);
    }

    private ObjectAnimator getObjectTrackingAnimator(TaggedRectangle taggedRectangle, int i, Rect rect, Rect rect2) {
        PathInterpolator pathInterpolator = new PathInterpolator(0.23f, 1.0f, 0.32f, 1.0f);
        this.mTrackedObjectRectangle.setScaleX(rect.width() / rect2.width());
        this.mTrackedObjectRectangle.setScaleY(rect.height() / rect2.height());
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(taggedRectangle, PropertyValuesHolder.ofFloat("scaleX", 1.0f), PropertyValuesHolder.ofFloat("scaleY", 1.0f));
        objectAnimatorOfPropertyValuesHolder.setDuration(i);
        objectAnimatorOfPropertyValuesHolder.setInterpolator(pathInterpolator);
        return objectAnimatorOfPropertyValuesHolder;
    }

    public void setObjectTrackingRectSupported(boolean z) {
        this.mObjectTrackingRectSupported = z;
    }

    public void setFocusIconType(boolean z) {
        this.mIsManualFocus = z;
    }

    public void setSmileCaptureThreshold(int i) {
        this.mSmileCaptureLevel = i;
    }
}
