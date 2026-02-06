package com.sonyericsson.android.camera.view.baselayout;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Animatable2$AnimationCallback;
import android.support.annotation.NonNull;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.ViewStub;
import android.view.Window;
import android.view.WindowManager$LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout$LayoutParams;
import android.widget.TextView;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.SideTouchEventDetector$SideTouchArea;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.FocusRange;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSpeed;
import com.sonyericsson.android.camera.configuration.parameters.WhiteBalance;
import com.sonyericsson.android.camera.debug.DebugParameterUtils;
import com.sonyericsson.android.camera.debug.SideTouchEmulateViewFactory;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.setting.UiControlSettings;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.AutoReviewController;
import com.sonyericsson.android.camera.view.BurstCountView;
import com.sonyericsson.android.camera.view.FrontAngleSwitchButton;
import com.sonyericsson.android.camera.view.PredictiveCaptureIndicatorController;
import com.sonyericsson.android.camera.view.PrimaryShortcutGroup;
import com.sonyericsson.android.camera.view.SuperSlowMotionTriggerAnimationController;
import com.sonyericsson.android.camera.view.baselayout.indicators.IconIndicator;
import com.sonyericsson.android.camera.view.baselayout.indicators.IconTextIndicator;
import com.sonyericsson.android.camera.view.baselayout.indicators.LowBatteryIndicator;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButton;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonGroup;
import com.sonyericsson.android.camera.view.baselayout.settingshortcut.ModeSelectorButton;
import com.sonyericsson.android.camera.view.baselayout.settingshortcut.MruButtonContainer;
import com.sonyericsson.android.camera.view.baselayout.zoombar.Zoombar;
import com.sonyericsson.android.camera.view.modeselector.ModeSelectorInternalMode;
import com.sonyericsson.android.camera.view.overlaycontrol.EnumValueAccessor;
import com.sonyericsson.android.camera.view.overlaycontrol.OverlayControl;
import com.sonyericsson.android.camera.view.overlaycontrol.OverlayControl$StateListener;
import com.sonyericsson.android.camera.view.overlaycontrol.ValueAccessor;
import com.sonyericsson.android.camera.view.tutorial.TutorialController;
import com.sonyericsson.cameracommon.contentsview.ContentLoader$SecurityLevel;
import com.sonyericsson.cameracommon.contentsview.ContentPallet$ThumbnailStateListener;
import com.sonyericsson.cameracommon.contentsview.ContentsContainer;
import com.sonyericsson.cameracommon.contentsview.ContentsViewController;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver$LayoutOrientationType;
import com.sonyericsson.cameracommon.utility.ResourceUtil;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonyericsson.cameracommon.viewfinder.GridLineView;
import com.sonyericsson.cameracommon.viewfinder.indicators.GeotagIndicator;
import com.sonyericsson.cameracommon.viewfinder.indicators.Indicator;
import com.sonyericsson.cameracommon.viewfinder.recordingindicator.RecordingIndicator;
import java.util.LinkedList;

public class BaseLayout {
    private static final String TAG = "BaseLayout";
    private final CameraActivity mActivity;
    private AutoReviewController mAutoReview;
    private FrameLayout mCapturingButtonLayout;
    private Indicator mConditionIndicator;
    private ContentsViewController mContentsViewController;
    private OnScreenButton mExtraButton;
    private FrontAngleSwitchButton mFrontAngleSwitchButton;
    private GeotagIndicator mGeoTag;
    private ViewFinderGestureDetector mGestureDetector;
    private ViewGroup mHeadUpDisplay;
    private FrameLayout mHeadUpDisplayContainer;
    private FrameLayout mHintTextViewContainer;
    private final LowBatteryIndicator mLowBattery;
    private final IconIndicator mLowInternalStorage;
    private final IconIndicator mLowSdCard;
    private ModeSelectorButton mModeButtonShortcut;
    private MruButtonContainer mMruButtonContainer;
    private OnScreenButtonGroup mOnScreenButtonGroup;
    private final IconIndicator mPhotoSmileCapture;
    private View mPreInflatedHeadUpDisplay;
    private PredictiveCaptureIndicatorController mPredictiveCaptureIndicatorController;
    private FrameLayout mPredictiveLaunchCoverContainer;
    private PredictiveLaunchCoverView mPredictiveLaunchCoverView;
    private View mPreferredFocusView;
    private View mPreview;
    private BaseLayout$PreviewContainerLayout mPreviewContainerLayout;
    private PrimaryShortcutGroup mPrimaryShortcut;
    private RecordingIndicator mRecordingIndicator;
    private ViewGroup mRootView;
    private IconTextIndicator mSceneIndicator;
    private final LayoutDependencyResolver$ScreenAspect mScreenAspect;
    private OnScreenButton mSubButton;
    private final SuperSlowMotionTriggerAnimationController mSuperSlowMotionTriggerAnimation;
    private FrameLayout mSwitchAnimationContainer;
    private Indicator mThermal;
    private View mTopIndicatorsContainer;
    private TutorialController mTutorial;
    private final IconIndicator mVideoSmileCapture;
    private Rect mViewFinderRect;
    private View mWindowCover;
    private Zoombar mZoombar;
    private FrameLayout mZoombarGroup;
    public static final BaseLayout$LazyInitializer EMPTY_LAZY_INITIALIZER = new BaseLayout$1();
    private static BaseLayout$IsTalkbackEffective mIsTalkbackEffective = BaseLayout$IsTalkbackEffective.UNKNOWN;
    private FrameLayout mLazyInflatedUiComponentContainerFront = null;
    private FrameLayout mLazyInflatedUiComponentContainerFullScreen = null;
    private BaseLayout$LazyInitializer<OverlayControl> mSemiAutoControl = EMPTY_LAZY_INITIALIZER;
    private BaseLayout$LazyInitializer<OverlayControl> mImageQualityControl = EMPTY_LAZY_INITIALIZER;
    private boolean mIsBlackScreenShowing = false;
    private int mCurrentOrientation = 0;
    private GridLineView mGridLineView = null;
    private SwitchAnimationView mSwitchAnimationView = null;
    private boolean mIsCameraSwitching = false;
    private boolean mIsFirstDrawn = false;
    private BaseLayout$NavigationBarVisibility mNavigationBarVisibility = null;

    static /* synthetic */ ViewFinderGestureDetector access$000(BaseLayout baseLayout) {
        return baseLayout.mGestureDetector;
    }

    static /* synthetic */ ViewGroup access$100(BaseLayout baseLayout) {
        return baseLayout.mRootView;
    }

    static /* synthetic */ BaseLayout$IsTalkbackEffective access$200() {
        return mIsTalkbackEffective;
    }

    static /* synthetic */ BaseLayout$IsTalkbackEffective access$202(BaseLayout$IsTalkbackEffective baseLayout$IsTalkbackEffective) {
        mIsTalkbackEffective = baseLayout$IsTalkbackEffective;
        return baseLayout$IsTalkbackEffective;
    }

    static /* synthetic */ CameraActivity access$300(BaseLayout baseLayout) {
        return baseLayout.mActivity;
    }

    static /* synthetic */ boolean access$400(BaseLayout baseLayout) {
        return baseLayout.mIsFirstDrawn;
    }

    static /* synthetic */ boolean access$402(BaseLayout baseLayout, boolean z) {
        baseLayout.mIsFirstDrawn = z;
        return z;
    }

    static /* synthetic */ Rect access$500(BaseLayout baseLayout) {
        return baseLayout.mViewFinderRect;
    }

    static /* synthetic */ LayoutDependencyResolver$ScreenAspect access$600(BaseLayout baseLayout) {
        return baseLayout.mScreenAspect;
    }

    public BaseLayout(CameraActivity cameraActivity, LayoutDependencyResolver$ScreenAspect layoutDependencyResolver$ScreenAspect) {
        this.mViewFinderRect = null;
        this.mActivity = cameraActivity;
        this.mScreenAspect = layoutDependencyResolver$ScreenAspect;
        if (PerfLog.IS_ENABLE) {
            this.mRootView = new BaseLayout$RootViewForRefLogEnabled(this, this.mActivity);
        } else {
            this.mRootView = new BaseLayout$RootView(this, this.mActivity);
        }
        this.mViewFinderRect = LayoutDependencyResolver.getViewFinderSize(cameraActivity);
        for (View view : createContainer(this.mActivity)) {
            this.mRootView.addView(view);
        }
        setupPreferredFocusView();
        setupPreviewContainer();
        setupSwitchAnimationContainer();
        this.mLowBattery = new LowBatteryIndicator(cameraActivity, "low-battery");
        this.mLowInternalStorage = new IconIndicator("low-internal-storage");
        this.mLowSdCard = new IconIndicator("low-sd-card");
        this.mPhotoSmileCapture = new IconIndicator("photo-smile-capture");
        this.mVideoSmileCapture = new IconIndicator("video-smile-capture");
        this.mSuperSlowMotionTriggerAnimation = new SuperSlowMotionTriggerAnimationController();
        LayoutDependencyResolver.requestToDimSystemUi(this.mRootView);
    }

    public void setOnViewFinderGestureDetector(ViewFinderGestureDetector$OnViewFinderGestureDetectorListener viewFinderGestureDetector$OnViewFinderGestureDetectorListener) {
        if (this.mGestureDetector == null) {
            this.mGestureDetector = new ViewFinderGestureDetector(this.mActivity);
        }
        this.mGestureDetector.setOnGestureDetectorListener(viewFinderGestureDetector$OnViewFinderGestureDetectorListener);
    }

    public void setViewFinderGestureDetectorEnabled(boolean z, boolean z2) {
        if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
            z2 = z;
            z = z2;
        }
        if (this.mGestureDetector == null) {
            this.mGestureDetector = new ViewFinderGestureDetector(this.mActivity);
        }
        if (z) {
            if (z2) {
                this.mGestureDetector.setAcceptDragDirection(ViewFinderGestureDetector$Direction.VERTICAL, ViewFinderGestureDetector$Direction.HORIZONTAL);
                return;
            } else {
                this.mGestureDetector.setAcceptDragDirection(ViewFinderGestureDetector$Direction.HORIZONTAL);
                return;
            }
        }
        if (z2) {
            this.mGestureDetector.setAcceptDragDirection(ViewFinderGestureDetector$Direction.VERTICAL);
        } else {
            this.mGestureDetector.setAcceptDragDirection(ViewFinderGestureDetector$Direction.NONE);
        }
    }

    public void setStartDraggingSlopEnabled(boolean z) {
        if (this.mGestureDetector == null) {
            this.mGestureDetector = new ViewFinderGestureDetector(this.mActivity);
        }
        this.mGestureDetector.setStartDraggingSlopEnabled(z);
    }

    public void addViewFinderGestureDetectorExclusiveView(View view) {
        if (this.mGestureDetector == null) {
            this.mGestureDetector = new ViewFinderGestureDetector(this.mActivity);
        }
        this.mGestureDetector.addExclusiveView(view);
    }

    public boolean isInDefaultDisplaySize() {
        return getDisplaySizeDensity() == 1.0f;
    }

    public boolean isInLargerOrMoreDisplaySize() {
        return getDisplaySizeDensity() >= 4.0f;
    }

    public float getDisplaySizeDensity() {
        return this.mActivity.getResources().getDisplayMetrics().density;
    }

    private View[] createContainer(@NonNull Context context) {
        View[] viewArr = new View[BaseLayout$ViewRootChild.values().length];
        this.mPreferredFocusView = new View(context);
        this.mPreviewContainerLayout = new BaseLayout$PreviewContainerLayout(context);
        this.mSwitchAnimationContainer = new FrameLayout(context);
        this.mCapturingButtonLayout = (FrameLayout) LayoutInflater.from(context).inflate(2131492906, (ViewGroup) null);
        this.mHeadUpDisplayContainer = new FrameLayout(context);
        this.mPredictiveLaunchCoverContainer = new FrameLayout(context);
        viewArr[BaseLayout$ViewRootChild.PREFERRED_FOCUS.getIndex()] = this.mPreferredFocusView;
        viewArr[BaseLayout$ViewRootChild.PREVIEW_CONTAINER_LAYOUT.getIndex()] = this.mPreviewContainerLayout;
        viewArr[BaseLayout$ViewRootChild.SWITCH_ANIMATION_CONTAINER.getIndex()] = this.mSwitchAnimationContainer;
        viewArr[BaseLayout$ViewRootChild.CAPTURE_BUTTON_LAYOUT.getIndex()] = this.mCapturingButtonLayout;
        viewArr[BaseLayout$ViewRootChild.HEAD_UP_DISPLAY_CONTAINER.getIndex()] = this.mHeadUpDisplayContainer;
        viewArr[BaseLayout$ViewRootChild.PREDICTIVE_LAUNCH_COVER_CONTAINER.getIndex()] = this.mPredictiveLaunchCoverContainer;
        return viewArr;
    }

    private void setupPreviewContainer() {
        FrameLayout$LayoutParams frameLayout$LayoutParams = new FrameLayout$LayoutParams(-1, -1);
        frameLayout$LayoutParams.setLayoutDirection(0);
        Rect rectAccordingToLayoutOrientation = LayoutOrientationResolver.getInstance().getRectAccordingToLayoutOrientation(this.mViewFinderRect);
        frameLayout$LayoutParams.width = rectAccordingToLayoutOrientation.width();
        frameLayout$LayoutParams.height = rectAccordingToLayoutOrientation.height();
        frameLayout$LayoutParams.gravity = 80;
        this.mPreviewContainerLayout.setLayoutParams(frameLayout$LayoutParams);
        this.mCapturingButtonLayout.setVisibility(4);
    }

    private void setupSwitchAnimationContainer() {
        this.mSwitchAnimationContainer.setLayoutParams(new FrameLayout$LayoutParams(-1, -1));
    }

    public void attachToWindow() {
        this.mActivity.getWindow().addContentView(this.mRootView, new WindowManager$LayoutParams(-1, -1));
    }

    public void setPreviewSurface(View view) {
        this.mPreview = view;
    }

    public void setupPreviewView() {
        if (this.mPreview != null) {
            this.mPreviewContainerLayout.mPreviewContainer.addView(this.mPreview, 0);
        }
    }

    public void setupAutoReview() {
        if (this.mAutoReview == null) {
            this.mAutoReview = new AutoReviewController(this.mActivity, this);
        }
        if (isHeadUpDisplayReady()) {
            this.mAutoReview.setup();
        }
    }

    private void updateLayout() {
        int i;
        float fHeight;
        if (CamLog.VERBOSE) {
            CamLog.d("updateLayout() is called.");
        }
        if (isHeadUpDisplayReady()) {
            float fHeight2 = 0.0f;
            if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
                if (CamLog.VERBOSE) {
                    CamLog.d("ActivityInfo.SCREEN_ORIENTATION_PORTRAIT");
                }
                i = 90;
                fHeight = (this.mViewFinderRect.height() - this.mViewFinderRect.width()) / 2.0f;
                fHeight2 = (this.mViewFinderRect.height() - this.mViewFinderRect.width()) / 2.0f;
            } else {
                if (CamLog.VERBOSE) {
                    CamLog.d("ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE");
                }
                i = 0;
                fHeight = 0.0f;
            }
            this.mPreviewContainerLayout.updatePreviewContainerLayout(this.mViewFinderRect, this.mScreenAspect);
            this.mHeadUpDisplay.setRotation(i);
            this.mHeadUpDisplay.setTranslationX(fHeight);
            this.mHeadUpDisplay.setTranslationY(fHeight2);
            updateOnScreenButtonLayout();
            adjustmentWithSystemLayout();
        }
    }

    private void updateOnScreenButtonLayout() {
        float fHeight;
        if (this.mCapturingButtonLayout == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("updateOnScreenButtonLayout: pre-loaded layout is null");
                return;
            }
            return;
        }
        int configurationOrientation = LayoutOrientationResolver.getInstance().getConfigurationOrientation();
        int i = 0;
        if (CamLog.VERBOSE) {
            CamLog.d("updateOnScreenButtonLayout: orientation = " + configurationOrientation);
        }
        float fWidth = 0.0f;
        if (configurationOrientation == 1) {
            i = 90;
            fHeight = (this.mViewFinderRect.height() - this.mViewFinderRect.width()) / 2.0f;
            fWidth = (this.mViewFinderRect.width() - this.mViewFinderRect.height()) / 2.0f;
            if (this.mActivity.getResources().getConfiguration().getLayoutDirection() == 1) {
                fHeight *= -1.0f;
            }
        } else {
            fHeight = 0.0f;
        }
        this.mCapturingButtonLayout.setRotation(i);
        this.mCapturingButtonLayout.setTranslationX(fHeight);
        this.mCapturingButtonLayout.setTranslationY(fWidth);
    }

    private void adjustmentWithSystemLayout() {
        int navigationBarMargin = LayoutDependencyResolver.getNavigationBarMargin(this.mActivity);
        if (navigationBarMargin <= 0) {
            return;
        }
        for (int i : new int[]{2131296426, 2131296611, 2131296313, 2131296438}) {
            ((ViewGroup$MarginLayoutParams) ((ViewGroup) this.mHeadUpDisplay.findViewById(i)).getLayoutParams()).setMargins(0, 0, navigationBarMargin, 0);
        }
    }

    public void setupPreferentialHeadUpDisplays() {
        CamLog.d("[APP DETAIL] setup on-screen button : E");
        if (setupCaptureButtonGroup(this.mCapturingButtonLayout.findViewById(2131296342))) {
            this.mRootView.setBackgroundColor(0);
            this.mCapturingButtonLayout.getLayoutParams().width = this.mViewFinderRect.width();
            this.mCapturingButtonLayout.getLayoutParams().height = this.mViewFinderRect.height();
            View viewFindViewById = this.mCapturingButtonLayout.findViewById(2131296344);
            if (viewFindViewById != null) {
                int navigationBarMargin = LayoutDependencyResolver.getNavigationBarMargin(this.mActivity);
                if (this.mScreenAspect != LayoutDependencyResolver$ScreenAspect.SIXTEEN_NINE) {
                    viewFindViewById.getLayoutParams().width = calculateCaptureButtonAreaHeight() - navigationBarMargin;
                } else {
                    viewFindViewById.getLayoutParams().width = calculateCaptureButtonAreaHeight();
                }
                ((ViewGroup$MarginLayoutParams) viewFindViewById.getLayoutParams()).setMargins(0, 0, navigationBarMargin, 0);
            }
            updateOnScreenButtonLayout();
        } else {
            CamLog.d("fail to setup");
        }
        CamLog.d("[APP DETAIL] setup on-screen button : X");
    }

    public void setup(ContentPallet$ThumbnailStateListener contentPallet$ThumbnailStateListener) {
        boolean z;
        if (isHeadUpDisplayReady()) {
            z = false;
        } else {
            if (CamLog.VERBOSE) {
                CamLog.d("INFLATE LAYOUT IN COMMON");
            }
            inflate();
            updateLayout();
            z = true;
        }
        LayoutDependencyResolver.resolveLayoutDependencyOnDevice(this.mActivity, this.mHeadUpDisplay);
        if (this.mGestureDetector == null) {
            this.mGestureDetector = new ViewFinderGestureDetector(this.mActivity);
            setViewFinderGestureDetectorEnabled(true, true);
        }
        setupTutorial();
        switchCaptureButtonGroupContainer();
        setupCaptureButtonGroup();
        if (z || !this.mContentsViewController.isLoading()) {
            setupContentsView(contentPallet$ThumbnailStateListener);
        }
        setupSettingIndicators();
        setupTopIndicators();
        setupZoombar();
        setupRecordingIndicator();
        setupGridLineView();
        setupPrimaryShortcut();
        setupModeShortcut();
        setupSceneIndicators();
        setupPredictiveCaptureIndicator();
        setupFrontAngleSwitchButton();
        setOrientation(this.mCurrentOrientation);
        updateAppsUiMarginsForTalkBack();
        setupSwitchAnimationView();
        if (DebugParameterUtils.INSTANCE.isEmulateSideTouchEnabled(this.mActivity)) {
            View viewCreate = SideTouchEmulateViewFactory.INSTANCE.create(this.mHeadUpDisplay, SideTouchEventDetector$SideTouchArea.LEFT);
            if (viewCreate != null) {
                addViewFinderGestureDetectorExclusiveView(viewCreate);
            }
            if (SideTouchEmulateViewFactory.INSTANCE.create(this.mHeadUpDisplay, SideTouchEventDetector$SideTouchArea.RIGHT) != null) {
                addViewFinderGestureDetectorExclusiveView(viewCreate);
            }
        }
        this.mSuperSlowMotionTriggerAnimation.setup(this.mPreviewContainerLayout.mPreviewContainer);
    }

    public void release() {
        if (this.mContentsViewController != null) {
            this.mContentsViewController.release();
        }
        if (this.mLazyInflatedUiComponentContainerFront != null) {
            this.mLazyInflatedUiComponentContainerFront.setOnTouchListener(null);
        }
        if (this.mLazyInflatedUiComponentContainerFullScreen != null) {
            this.mLazyInflatedUiComponentContainerFullScreen.setOnTouchListener(null);
        }
        this.mContentsViewController = null;
        this.mLazyInflatedUiComponentContainerFront = null;
        this.mLazyInflatedUiComponentContainerFullScreen = null;
        this.mWindowCover = null;
        this.mHeadUpDisplay = null;
        this.mHeadUpDisplayContainer = null;
        this.mPredictiveLaunchCoverContainer = null;
    }

    public SuperSlowMotionTriggerAnimationController getSuperSlowMotionTriggerAnimation() {
        return this.mSuperSlowMotionTriggerAnimation;
    }

    public GeotagIndicator getGeoTagIndicator() {
        return this.mGeoTag;
    }

    public LowBatteryIndicator getBatteryIndicator() {
        return this.mLowBattery;
    }

    public IconIndicator getLowMemoryInternalIndicator() {
        return this.mLowInternalStorage;
    }

    public IconIndicator getLowMemorySdIndicator() {
        return this.mLowSdCard;
    }

    public Indicator getThermalIndicator() {
        return this.mThermal;
    }

    public IconIndicator getPhotoSmileCaptureIndicator() {
        return this.mPhotoSmileCapture;
    }

    public IconIndicator getVideoSmileCaptureIndicator() {
        return this.mVideoSmileCapture;
    }

    public PredictiveCaptureIndicatorController getPredictiveCaptureIndicatorController() {
        return this.mPredictiveCaptureIndicatorController;
    }

    public IconTextIndicator getSceneIndicator() {
        return this.mSceneIndicator;
    }

    public Indicator getConditionIndicator() {
        return this.mConditionIndicator;
    }

    public ModeSelectorButton getModeButtonShortcut() {
        return this.mModeButtonShortcut;
    }

    public MruButtonContainer getMruButtonContainer() {
        return this.mMruButtonContainer;
    }

    public BaseLayout$LazyInitializer<OverlayControl> getSemiAutoControl() {
        return this.mSemiAutoControl;
    }

    public BaseLayout$LazyInitializer<OverlayControl> getImageQualityControl() {
        return this.mImageQualityControl;
    }

    public void setOrientation(int i) {
        if (CamLog.VERBOSE) {
            CamLog.d("setOrientation: ");
        }
        setOrientation(i, i);
    }

    public void setOrientation(int i, int i2) {
        this.mCurrentOrientation = i;
        if (this.mPredictiveLaunchCoverView != null) {
            this.mPredictiveLaunchCoverView.updateLayout(i);
        }
        if (this.mCapturingButtonLayout != null) {
            this.mOnScreenButtonGroup.setUiOrientation(i);
        }
        if (this.mHeadUpDisplay != null) {
            this.mTutorial.setUiOrientation(i);
            this.mOnScreenButtonGroup.setUiOrientation(i);
            this.mContentsViewController.setSensorOrientation(i);
            this.mGeoTag.setSensorOrientation(i2);
            this.mThermal.setSensorOrientation(i2);
            this.mSceneIndicator.setSensorOrientation(i2);
            this.mConditionIndicator.setSensorOrientation(i2);
            this.mZoombar.setSensorOrientation(i2);
            this.mRecordingIndicator.setOrientation(i2);
            this.mPrimaryShortcut.setUiOrientation(i);
            this.mPredictiveCaptureIndicatorController.setOrientation(i);
            this.mLowBattery.setSensorOrientation(i);
            this.mLowInternalStorage.setSensorOrientation(i);
            this.mLowSdCard.setSensorOrientation(i);
            this.mPhotoSmileCapture.setSensorOrientation(i);
            this.mVideoSmileCapture.setSensorOrientation(i);
            this.mModeButtonShortcut.setUiOrientation(i);
            this.mMruButtonContainer.setRotation(RotationUtil.getAngle(i));
            if (this.mFrontAngleSwitchButton != null) {
                this.mFrontAngleSwitchButton.setUiOrientation(i);
            }
            if (this.mSemiAutoControl.isInitialized()) {
                this.mSemiAutoControl.get().setOrientation(i);
            }
            if (this.mImageQualityControl.isInitialized()) {
                this.mImageQualityControl.get().setOrientation(i);
            }
        }
    }

    public View getPreview() {
        return this.mPreview;
    }

    public ViewGroup getPreviewContainer() {
        return this.mPreviewContainerLayout.mPreviewContainer;
    }

    public Rect getViewFinderRect() {
        return this.mViewFinderRect;
    }

    public void setupImageQualityControl(UiControlSettings uiControlSettings, OverlayControl$StateListener overlayControl$StateListener, EnumValueAccessor<CapturingMode> enumValueAccessor, EnumValueAccessor<FocusRange> enumValueAccessor2, EnumValueAccessor<ShutterSpeed> enumValueAccessor3, EnumValueAccessor<Iso> enumValueAccessor4, EnumValueAccessor<Ev> enumValueAccessor5, EnumValueAccessor<WhiteBalance> enumValueAccessor6) {
        if (this.mImageQualityControl.isInitialized()) {
            this.mImageQualityControl.get().release();
        }
        this.mImageQualityControl = new BaseLayout$2(this, (ViewGroup) getActivity().findViewById(2131296486), uiControlSettings, overlayControl$StateListener, enumValueAccessor, enumValueAccessor2, enumValueAccessor3, enumValueAccessor4, enumValueAccessor5, enumValueAccessor6);
    }

    public void setupSemiAutoControl(OverlayControl$StateListener overlayControl$StateListener, ValueAccessor<Float> valueAccessor, ValueAccessor<Float> valueAccessor2, boolean z) {
        if (this.mSemiAutoControl.isInitialized()) {
            this.mSemiAutoControl.get().release();
        }
        this.mSemiAutoControl = new BaseLayout$3(this, (ViewGroup) getActivity().findViewById(2131296412), overlayControl$StateListener, valueAccessor, valueAccessor2, z);
    }

    private void setupCaptureButtonGroup() {
        if (setupCaptureButtonGroup(this.mActivity.findViewById(2131296342)) || !CamLog.VERBOSE) {
            return;
        }
        CamLog.w("setupCaptureButtonGroup: fails to setup");
    }

    public int calculateCaptureButtonAreaHeight() {
        float f = this.mActivity.getResources().getDisplayMetrics().densityDpi;
        this.mActivity.getResources().getDisplayMetrics();
        float f2 = f / DisplayMetrics.DENSITY_DEVICE_STABLE;
        Rect viewFinderSize = LayoutDependencyResolver.getViewFinderSize(this.mActivity.getApplicationContext());
        int iMax = (int) (Math.max(viewFinderSize.width(), viewFinderSize.height()) * f2);
        int iMin = (((int) (Math.min(viewFinderSize.width(), viewFinderSize.height()) * f2)) * 4) / 3;
        int top = (int) (this.mPreview.getTop() * f2);
        int height = (int) (this.mPreview.getHeight() * f2);
        int width = (int) (this.mPreview.getWidth() * f2);
        int dimensionPixelSize = this.mScreenAspect != LayoutDependencyResolver$ScreenAspect.SIXTEEN_NINE ? getActivity().getResources().getDimensionPixelSize(2131165456) : 0;
        if (width == height) {
            top = (top + height) - iMin;
        }
        return (((iMax - iMin) - top) - dimensionPixelSize) - LayoutDependencyResolver.getNavigationBarMargin(this.mActivity);
    }

    private boolean setupCaptureButtonGroup(View view) {
        if (!(view instanceof OnScreenButtonGroup)) {
            return false;
        }
        if (this.mOnScreenButtonGroup == null) {
            this.mOnScreenButtonGroup = (OnScreenButtonGroup) view;
        }
        this.mSubButton = (OnScreenButton) this.mOnScreenButtonGroup.findViewById(2131296632);
        this.mExtraButton = (OnScreenButton) this.mOnScreenButtonGroup.findViewById(2131296396);
        if (this.mGestureDetector == null) {
            return true;
        }
        this.mGestureDetector.addExclusiveView(this.mExtraButton);
        this.mGestureDetector.addExclusiveView(this.mSubButton);
        this.mGestureDetector.addExclusiveView(this.mOnScreenButtonGroup.findViewById(2131296460));
        return true;
    }

    public OnScreenButtonGroup getOnScreenButtonGroup() {
        return this.mOnScreenButtonGroup;
    }

    public OnScreenButton getOnScreenSubButton() {
        return this.mSubButton;
    }

    public OnScreenButton getOnScreenExtraButton() {
        return this.mExtraButton;
    }

    private void setupTutorial() {
        if (this.mTutorial == null) {
            this.mTutorial = new TutorialController(getRootView(), getActivity().getWindow());
        }
    }

    private void setupFrontAngleSwitchButton() {
        if (this.mFrontAngleSwitchButton == null && PlatformCapability.isSuperWideSupported(CameraInfo$CameraId.FRONT)) {
            this.mFrontAngleSwitchButton = (FrontAngleSwitchButton) this.mActivity.findViewById(2131296408);
            FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) this.mFrontAngleSwitchButton.getLayoutParams();
            frameLayout$LayoutParams.rightMargin = calculateCaptureButtonAreaHeight();
            this.mFrontAngleSwitchButton.setLayoutParams(frameLayout$LayoutParams);
        }
    }

    private void setupPreferredFocusView() {
        if (this.mPreferredFocusView != null) {
            this.mPreferredFocusView.setLayoutParams(new FrameLayout$LayoutParams(1, 1));
            this.mPreferredFocusView.setFocusable(true);
            this.mPreferredFocusView.setFocusableInTouchMode(true);
            this.mPreferredFocusView.requestFocus();
        }
    }

    public FrontAngleSwitchButton getFrontAngleSwitchButton() {
        return this.mFrontAngleSwitchButton;
    }

    public TutorialController getTutorial() {
        return this.mTutorial;
    }

    public RecordingIndicator getRecordingIndicator() {
        return this.mRecordingIndicator;
    }

    public AutoReviewController getAutoReview() {
        return this.mAutoReview;
    }

    private void setupContentsView(ContentPallet$ThumbnailStateListener contentPallet$ThumbnailStateListener) {
        ContentLoader$SecurityLevel contentLoader$SecurityLevel;
        if (this.mActivity.isDeviceInSecurityLock()) {
            contentLoader$SecurityLevel = ContentLoader$SecurityLevel.NEWLY_ADDED_CONTENT_ONLY;
        } else {
            contentLoader$SecurityLevel = ContentLoader$SecurityLevel.NORMAL;
        }
        LinkedList linkedList = null;
        if (isCameraSwitching()) {
            return;
        }
        if (this.mContentsViewController != null) {
            linkedList = new LinkedList();
            linkedList.addAll(this.mContentsViewController.getLocalContentInfo());
            this.mContentsViewController.release();
        }
        this.mContentsViewController = new ContentsViewController(this.mActivity, this.mActivity.getStorage(), contentLoader$SecurityLevel, contentPallet$ThumbnailStateListener);
        if (linkedList != null) {
            this.mContentsViewController.getLocalContentInfo().addAll(linkedList);
        }
        this.mContentsViewController.setSensorOrientation(this.mCurrentOrientation);
        this.mContentsViewController.reload();
        addViewFinderGestureDetectorExclusiveView((ContentsContainer) this.mActivity.findViewById(2131296370));
    }

    public int getCurrentOrientation() {
        return this.mCurrentOrientation;
    }

    public ContentsViewController getContentsViewController() {
        return this.mContentsViewController;
    }

    private void setupModeShortcut() {
        this.mModeButtonShortcut = (ModeSelectorButton) this.mHeadUpDisplay.findViewById(2131296467);
        boolean zExists = ModeSelectorInternalMode.exists(getActivity().getLaunchCondition().getCapturingMode());
        this.mModeButtonShortcut.update(zExists);
        this.mMruButtonContainer = (MruButtonContainer) this.mHeadUpDisplay.findViewById(2131296474);
        this.mMruButtonContainer.setAvailability(!zExists);
    }

    private void setupTopIndicators() {
        this.mTopIndicatorsContainer = this.mActivity.findViewById(2131296668);
        this.mLowBattery.setup((ViewStub) this.mTopIndicatorsContainer.findViewById(2131296455));
        this.mLowInternalStorage.setup((ViewStub) this.mTopIndicatorsContainer.findViewById(2131296457));
        this.mLowSdCard.setup((ViewStub) this.mTopIndicatorsContainer.findViewById(2131296459));
        this.mPhotoSmileCapture.setup((ViewStub) this.mTopIndicatorsContainer.findViewById(2131296494));
        this.mVideoSmileCapture.setup((ViewStub) this.mTopIndicatorsContainer.findViewById(2131296695));
    }

    private void setupSettingIndicators() {
        this.mGeoTag = new GeotagIndicator((ImageView) this.mActivity.findViewById(2131296410));
        this.mGeoTag.setSensorOrientation(this.mCurrentOrientation);
        this.mThermal = new Indicator((ImageView) this.mActivity.findViewById(2131296658));
        this.mThermal.setSensorOrientation(this.mCurrentOrientation);
    }

    private void setupSceneIndicators() {
        this.mSceneIndicator = new IconTextIndicator((ImageView) this.mActivity.findViewById(2131296551), (TextView) this.mActivity.findViewById(2131296552));
        this.mSceneIndicator.setSensorOrientation(this.mCurrentOrientation);
        this.mConditionIndicator = new Indicator((ImageView) this.mActivity.findViewById(2131296550));
        this.mConditionIndicator.setSensorOrientation(this.mCurrentOrientation);
    }

    private void setupZoombar() {
        if (this.mZoombarGroup == null) {
            this.mZoombarGroup = (FrameLayout) this.mActivity.getLayoutInflater().inflate(2131493030, (ViewGroup) null);
            this.mZoombar = (Zoombar) this.mZoombarGroup.findViewById(2131296700);
            this.mZoombar.setSensorOrientation(this.mCurrentOrientation);
            this.mZoombar.hideImmediately();
            getLazyInflatedUiComponentContainerBack().addView(this.mZoombarGroup);
        }
        repositionZoombar();
    }

    public void repositionZoombar() {
        int width;
        if (isHeadUpDisplayReady()) {
            FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) this.mZoombarGroup.getLayoutParams();
            if (this.mPreview.getWidth() == this.mPreview.getHeight()) {
                frameLayout$LayoutParams.leftMargin = LayoutDependencyResolver.getViewFinderSize(this.mActivity).height() / 3;
            } else {
                frameLayout$LayoutParams.leftMargin = 0;
            }
            int i = frameLayout$LayoutParams.width;
            if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
                width = this.mPreview.getHeight();
            } else {
                width = this.mPreview.getWidth();
            }
            if (width != i) {
                frameLayout$LayoutParams.width = width;
                this.mZoombarGroup.requestLayout();
            }
        }
    }

    public View getTopIndicator() {
        return this.mTopIndicatorsContainer;
    }

    private void setupRecordingIndicator() {
        if (this.mRecordingIndicator == null) {
            this.mRecordingIndicator = (RecordingIndicator) this.mActivity.findViewById(2131296523);
            this.mRecordingIndicator.setScreenAspect(this.mScreenAspect);
            this.mRecordingIndicator.setOrientation(this.mCurrentOrientation);
            this.mRecordingIndicator.setVisibility(8);
            this.mRecordingIndicator.prepareBeforeRecording(0);
        }
    }

    public void setupPredictiveCaptureIndicator() {
        if (this.mPredictiveCaptureIndicatorController == null) {
            this.mPredictiveCaptureIndicatorController = new PredictiveCaptureIndicatorController(this.mActivity, this.mScreenAspect);
            this.mPredictiveCaptureIndicatorController.setOrientation(this.mCurrentOrientation);
        }
    }

    public boolean isHeadUpDisplayReady() {
        return this.mHeadUpDisplay != null;
    }

    public void hideContentsViewController() {
        if (this.mContentsViewController != null) {
            this.mContentsViewController.hide();
        }
    }

    public void reloadContentsViewController(ContentPallet$ThumbnailStateListener contentPallet$ThumbnailStateListener) {
        if (this.mContentsViewController == null) {
            setupContentsView(contentPallet$ThumbnailStateListener);
        } else {
            this.mContentsViewController.reload();
        }
    }

    public void resume() {
        this.mIsFirstDrawn = false;
        updateLayout();
        if (this.mHeadUpDisplay != null) {
            this.mHeadUpDisplay.setVisibility(0);
        }
    }

    public void pause() {
        if (this.mContentsViewController != null) {
            this.mContentsViewController.pause();
        }
        if (this.mRecordingIndicator != null) {
            this.mRecordingIndicator.setConstraint(false);
            this.mRecordingIndicator.prepareBeforeRecording(0);
            this.mRecordingIndicator.setVisibility(8);
        }
        if (this.mLazyInflatedUiComponentContainerFront != null) {
            this.mLazyInflatedUiComponentContainerFront.setOnTouchListener(null);
        }
        if (this.mGridLineView != null) {
            if (!this.mActivity.isOneShot()) {
                this.mGridLineView.setAlpha(0.0f);
            }
            this.mGridLineView.disable();
        }
        if (this.mHeadUpDisplay != null) {
            this.mHeadUpDisplay.setVisibility(4);
        }
        if (this.mMruButtonContainer != null) {
            this.mMruButtonContainer.setAvailability(false);
        }
    }

    public void showContentsViewController() {
        if (this.mContentsViewController != null) {
            this.mContentsViewController.show();
        }
    }

    public void refresh() {
        this.mHeadUpDisplay.requestLayout();
        this.mHeadUpDisplay.invalidate();
    }

    public void showBlackScreen() {
        if (this.mIsBlackScreenShowing) {
            return;
        }
        this.mIsBlackScreenShowing = true;
        this.mRootView.setBackgroundColor(-16777216);
    }

    public void hideBlackScreen() {
        if (this.mIsBlackScreenShowing) {
            this.mIsBlackScreenShowing = false;
            this.mRootView.setBackground(null);
        }
    }

    public void setupBlankScreen() {
        LayoutInflater layoutInflater;
        if (this.mWindowCover != null || (layoutInflater = this.mActivity.getLayoutInflater()) == null) {
            return;
        }
        this.mWindowCover = layoutInflater.inflate(2131492905, (ViewGroup) null);
        Window window = this.mActivity.getWindow();
        window.addContentView(this.mWindowCover, window.getAttributes());
    }

    public void showBlankScreen() {
        if (this.mWindowCover != null) {
            this.mWindowCover.setVisibility(0);
        }
    }

    public Zoombar getZoomBar() {
        return this.mZoombar;
    }

    private void inflate() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.mActivity);
        if (this.mPreInflatedHeadUpDisplay != null) {
            if (CamLog.VERBOSE) {
                CamLog.d("HeadUpDisplay is already inflated.");
            }
            this.mHeadUpDisplay = (ViewGroup) this.mPreInflatedHeadUpDisplay;
            this.mPreInflatedHeadUpDisplay = null;
        } else {
            if (CamLog.VERBOSE) {
                CamLog.d("HeadUpDisplay is not inflated.");
            }
            this.mHeadUpDisplay = (ViewGroup) layoutInflaterFrom.inflate(2131492899, (ViewGroup) null);
        }
        this.mHeadUpDisplayContainer.addView(this.mHeadUpDisplay);
        this.mHeadUpDisplay.getLayoutParams().width = this.mViewFinderRect.width();
        this.mHeadUpDisplay.getLayoutParams().height = this.mViewFinderRect.height();
        this.mLazyInflatedUiComponentContainerFront = (FrameLayout) this.mActivity.findViewById(2131296438);
        this.mLazyInflatedUiComponentContainerFullScreen = (FrameLayout) this.mActivity.findViewById(2131296441);
    }

    public void setPreInflatedHeadUpDisplay(View view) {
        this.mPreInflatedHeadUpDisplay = view;
    }

    public void requestToDimSystemUi() {
        LayoutDependencyResolver.requestToDimSystemUi(this.mRootView);
        setCurrentNavigationBarVisibility(BaseLayout$NavigationBarVisibility.LOW_PROFILE);
    }

    public void requestToRecoverSystemUi() {
        LayoutDependencyResolver.requestToRecoverSystemUi(this.mRootView);
        setCurrentNavigationBarVisibility(BaseLayout$NavigationBarVisibility.VISIBLE);
    }

    public void requestToRestoreSystemUi() {
        if (this.mNavigationBarVisibility == null) {
        }
        switch (BaseLayout$4.$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayout$NavigationBarVisibility[getPreviousNavigationBarVisibility().ordinal()]) {
            case 1:
                requestToRecoverSystemUi();
                break;
            case 2:
                requestToDimSystemUi();
                break;
        }
    }

    void setCurrentNavigationBarVisibility(BaseLayout$NavigationBarVisibility baseLayout$NavigationBarVisibility) {
        this.mNavigationBarVisibility = baseLayout$NavigationBarVisibility;
    }

    private BaseLayout$NavigationBarVisibility getPreviousNavigationBarVisibility() {
        return this.mNavigationBarVisibility;
    }

    public ViewGroup getRootView() {
        return this.mRootView;
    }

    public FrameLayout getCenterContainer() {
        return (FrameLayout) this.mActivity.findViewById(2131296348);
    }

    public FrameLayout getHintTextViewContainer() {
        if (this.mHintTextViewContainer != null) {
            return this.mHintTextViewContainer;
        }
        this.mHintTextViewContainer = (FrameLayout) this.mActivity.findViewById(2131296419);
        return this.mHintTextViewContainer;
    }

    public FrameLayout getPreviewOverlayContainer() {
        return this.mPreviewContainerLayout.mPreviewOverlayContainer;
    }

    public RelativeLayout getPreviewContainerRoot() {
        return this.mPreviewContainerLayout;
    }

    public FrameLayout getLazyInflatedUiComponentContainerBack() {
        FrameLayout frameLayout = (FrameLayout) this.mActivity.findViewById(2131296440);
        if (this.mScreenAspect == LayoutDependencyResolver$ScreenAspect.EIGHTEEN_NINE) {
            frameLayout.setPadding(ResourceUtil.getDimensionPixelSize(this.mActivity, this.mActivity.getPackageName(), 2131165428), 0, 0, 0);
        }
        return frameLayout;
    }

    public CameraActivity getActivity() {
        return this.mActivity;
    }

    public BurstCountView getBurstCountView() {
        FrameLayout centerContainer = getCenterContainer();
        View viewFindViewById = centerContainer.findViewById(2131296322);
        if (viewFindViewById == null) {
            View.inflate(this.mActivity, 2131493010, centerContainer);
            viewFindViewById = centerContainer.findViewById(2131296322);
        }
        return (BurstCountView) viewFindViewById;
    }

    public void showLeftIconContainer() {
        this.mActivity.findViewById(2131296443).setVisibility(0);
    }

    public void hideLeftIconContainer() {
        this.mActivity.findViewById(2131296443).setVisibility(4);
    }

    public void hideAutoReview() {
        if (this.mAutoReview != null) {
            this.mAutoReview.hide();
        }
    }

    public void setGridLineViewEnabled(boolean z) {
        if (z) {
            enableGridLineView();
        } else {
            disableGridLineView();
        }
    }

    public void enableGridLineView() {
        if (this.mGridLineView != null) {
            this.mGridLineView.enable();
        }
    }

    public void disableGridLineView() {
        if (this.mGridLineView != null) {
            this.mGridLineView.disable();
        }
    }

    public void updateGridLine(int i, int i2) {
        if (this.mGridLineView == null || i <= 1 || i2 <= 1) {
            return;
        }
        this.mGridLineView.setViewSize(i, i2);
    }

    private void setupGridLineView() {
        if (this.mGridLineView == null) {
            this.mGridLineView = new GridLineView(this.mActivity);
            this.mGridLineView.setVisibility(4);
            Rect rectAccordingToLayoutOrientation = LayoutOrientationResolver.getInstance().getRectAccordingToLayoutOrientation(this.mViewFinderRect);
            updateGridLine(rectAccordingToLayoutOrientation.width(), rectAccordingToLayoutOrientation.height());
            this.mPreviewContainerLayout.mPreviewContainer.addView(this.mGridLineView);
        }
    }

    private void setupPrimaryShortcut() {
        this.mPrimaryShortcut = (PrimaryShortcutGroup) this.mActivity.findViewById(2131296509);
    }

    public PrimaryShortcutGroup getPrimaryShortcut() {
        return this.mPrimaryShortcut;
    }

    public GridLineView getGridLineView() {
        return this.mGridLineView;
    }

    public void updatePreviewContainer(int i, int i2) {
        RelativeLayout$LayoutParams relativeLayout$LayoutParams = (RelativeLayout$LayoutParams) getPreviewContainer().getLayoutParams();
        if (i == i2) {
            Rect viewFinderSize = LayoutDependencyResolver.getViewFinderSize(this.mActivity);
            if (LayoutOrientationResolver.getInstance().getConfigurationOrientation() == 1) {
                relativeLayout$LayoutParams.leftMargin = 0;
                relativeLayout$LayoutParams.topMargin = viewFinderSize.height() / 3;
            } else {
                relativeLayout$LayoutParams.topMargin = 0;
                relativeLayout$LayoutParams.leftMargin = viewFinderSize.height() / 3;
            }
        } else if (LayoutOrientationResolver.getInstance().getConfigurationOrientation() == 1) {
            relativeLayout$LayoutParams.topMargin = 0;
        } else {
            relativeLayout$LayoutParams.leftMargin = 0;
        }
        relativeLayout$LayoutParams.width = i;
        relativeLayout$LayoutParams.height = i2;
        getPreviewContainer().setLayoutParams(relativeLayout$LayoutParams);
    }

    public void updateAppsUiMarginsForTalkBack() {
        int navigationBarMargin = mIsTalkbackEffective == BaseLayout$IsTalkbackEffective.TALKBACK_ON ? LayoutDependencyResolver.getNavigationBarMargin(this.mActivity) : 0;
        View viewFindViewById = this.mActivity.findViewById(2131296439);
        if (viewFindViewById != null) {
            ((ViewGroup$MarginLayoutParams) viewFindViewById.getLayoutParams()).setMargins(0, 0, navigationBarMargin, 0);
            viewFindViewById.requestLayout();
        }
    }

    private void setupSwitchAnimationView() {
        if (this.mSwitchAnimationView == null) {
            this.mSwitchAnimationView = new SwitchAnimationView(this.mActivity);
            this.mSwitchAnimationContainer.addView(this.mSwitchAnimationView);
        }
    }

    public void computeRadiusOfAnimation() {
        if (this.mSwitchAnimationView == null) {
            return;
        }
        this.mSwitchAnimationView.setMaxRadius(this.mViewFinderRect);
    }

    public SwitchAnimationView getSwitchAnimationView() {
        return this.mSwitchAnimationView;
    }

    private void switchCaptureButtonGroupContainer() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        if (this.mCapturingButtonLayout == null || this.mOnScreenButtonGroup == null || (viewGroup = (ViewGroup) this.mHeadUpDisplay.findViewById(2131296341)) == null || (viewGroup2 = (ViewGroup) this.mCapturingButtonLayout.findViewById(2131296500)) == null) {
            return;
        }
        viewGroup2.removeView(this.mOnScreenButtonGroup);
        viewGroup.addView(this.mOnScreenButtonGroup);
        this.mCapturingButtonLayout.setVisibility(8);
        this.mCapturingButtonLayout = null;
        if (this.mIsBlackScreenShowing) {
            return;
        }
        this.mRootView.setBackground(null);
    }

    public boolean isAutoReviewShowing() {
        if (this.mAutoReview != null) {
            return this.mAutoReview.isShowing();
        }
        return false;
    }

    public void setIsCameraSwitching(boolean z) {
        this.mIsCameraSwitching = z;
    }

    public boolean isCameraSwitching() {
        return this.mIsCameraSwitching;
    }

    public void setupPredictiveLaunchCoverView(PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener predictiveLaunchCoverView$PredictiveLaunchCoverTouchListener, PredictiveLaunchCoverView$PredictiveLaunchCoverType predictiveLaunchCoverView$PredictiveLaunchCoverType) {
        if (this.mPredictiveLaunchCoverContainer == null || this.mPredictiveLaunchCoverView != null) {
            return;
        }
        this.mPredictiveLaunchCoverView = PredictiveLaunchCoverView.inflate(getActivity(), predictiveLaunchCoverView$PredictiveLaunchCoverTouchListener, predictiveLaunchCoverView$PredictiveLaunchCoverType);
        this.mPredictiveLaunchCoverContainer.addView(this.mPredictiveLaunchCoverView);
        this.mPredictiveLaunchCoverView.updateLayout(2);
    }

    public PredictiveLaunchCoverView getPredictiveLaunchCoverView() {
        return this.mPredictiveLaunchCoverView;
    }

    public void releasePredictiveLaunchCover() {
        if (this.mPredictiveLaunchCoverView != null) {
            this.mPredictiveLaunchCoverView.setOnTouchListener(null);
            this.mPredictiveLaunchCoverView.setVisibility(8);
            this.mPredictiveLaunchCoverContainer.removeView(this.mPredictiveLaunchCoverView);
            this.mPredictiveLaunchCoverView = null;
        }
    }

    public void hidePredictiveLaunchCover(Animatable2$AnimationCallback animatable2$AnimationCallback) {
        if (this.mPredictiveLaunchCoverView != null) {
            this.mPredictiveLaunchCoverView.hide(animatable2$AnimationCallback);
        }
    }
}
