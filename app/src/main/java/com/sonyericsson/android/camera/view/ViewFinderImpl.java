package com.sonyericsson.android.camera.view;

import android.app.ActivityOptions;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.YuvImage;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.Window;
import android.view.WindowManager$LayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout$LayoutParams;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.CameraActivity$LayoutOrientation;
import com.sonyericsson.android.camera.CameraActivity$LayoutOrientationChangedListener;
import com.sonyericsson.android.camera.CameraApplication;
import com.sonyericsson.android.camera.LaunchCondition$LaunchTrigger;
import com.sonyericsson.android.camera.NavigatorContents;
import com.sonyericsson.android.camera.SideTouchEventDetector$SideTouchEvent;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.AutoReview;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.configuration.parameters.FocusRange;
import com.sonyericsson.android.camera.configuration.parameters.FrontAngle;
import com.sonyericsson.android.camera.configuration.parameters.FusionMode;
import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.configuration.parameters.GridLine;
import com.sonyericsson.android.camera.configuration.parameters.ObjectTracking;
import com.sonyericsson.android.camera.configuration.parameters.PredictiveLaunch;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.ShutterTrigger;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.configuration.parameters.UserSettingValue;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoSmileCapture;
import com.sonyericsson.android.camera.controller.AbstractDraggingEventHandler$Direction;
import com.sonyericsson.android.camera.controller.ChapterThumbnail;
import com.sonyericsson.android.camera.controller.StateMachine;
import com.sonyericsson.android.camera.controller.StateMachine$CaptureState;
import com.sonyericsson.android.camera.controller.StateMachine$OnStateChangedListener;
import com.sonyericsson.android.camera.controller.StateMachine$StaticEvent;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.controller.VibrationManager;
import com.sonyericsson.android.camera.controller.VibrationManager$VibrationPattern;
import com.sonyericsson.android.camera.controller.launcher.ApplicationLauncher;
import com.sonyericsson.android.camera.controller.xperiaxloops.XperiaXLoopsManager;
import com.sonyericsson.android.camera.device.CameraDeviceHandler;
import com.sonyericsson.android.camera.device.CameraParameters$FaceDetectionResult;
import com.sonyericsson.android.camera.device.CameraParameters$FusionCondition;
import com.sonyericsson.android.camera.device.CameraParameters$FusionResult;
import com.sonyericsson.android.camera.device.CameraParameters$FusionStatus;
import com.sonyericsson.android.camera.device.CameraParameters$ObjectTrackingResult;
import com.sonyericsson.android.camera.device.CameraParameters$SceneRecognitionResult;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.research.LocalResearchUtil$MeasurementKey;
import com.sonyericsson.android.camera.research.LocalResearchUtil$ModeChangeMethod;
import com.sonyericsson.android.camera.setting.MessageSettings;
import com.sonyericsson.android.camera.setting.MessageType;
import com.sonyericsson.android.camera.setting.UiControlSettings;
import com.sonyericsson.android.camera.setting.UserSettings;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.CoordinateUtil;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.android.camera.util.ThreadUtil;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.animation.AnimationRequest;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationDegree;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationType;
import com.sonyericsson.android.camera.view.animation.TransitionAnimationController;
import com.sonyericsson.android.camera.view.baselayout.BaseLayout;
import com.sonyericsson.android.camera.view.baselayout.BaseLayout$LazyInitializer;
import com.sonyericsson.android.camera.view.baselayout.BaseLayoutPattern;
import com.sonyericsson.android.camera.view.baselayout.BaseLayoutPatternApplier;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver$ScreenAspect;
import com.sonyericsson.android.camera.view.baselayout.LayoutPatternApplier;
import com.sonyericsson.android.camera.view.baselayout.PredictiveLaunchCoverView;
import com.sonyericsson.android.camera.view.baselayout.PredictiveLaunchCoverView$PredictiveLaunchCoverType;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonGroup;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonGroup$Item;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonGroup$MutableButtonItem;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonItemFactory;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonItemFactory$ButtonType;
import com.sonyericsson.android.camera.view.baselayout.zoombar.Zoombar;
import com.sonyericsson.android.camera.view.hint.HintTextAutoPowerOff;
import com.sonyericsson.android.camera.view.hint.HintTextContent;
import com.sonyericsson.android.camera.view.hint.HintTextContent$HintPriority;
import com.sonyericsson.android.camera.view.hint.HintTextHighSensitivityFusionCondition;
import com.sonyericsson.android.camera.view.hint.HintTextHighSensitivityFusionStatus;
import com.sonyericsson.android.camera.view.hint.HintTextStandardSlowMotion;
import com.sonyericsson.android.camera.view.hint.HintTextStandardSlowMotionDescription;
import com.sonyericsson.android.camera.view.hint.HintTextSuperSlowMotion;
import com.sonyericsson.android.camera.view.hint.HintTextSuperSlowMotionDescription;
import com.sonyericsson.android.camera.view.hint.HintTextSuperSlowMotionVideoRecording;
import com.sonyericsson.android.camera.view.hint.HintTextSuperSlowShot;
import com.sonyericsson.android.camera.view.hint.HintTextSuperSlowShotDescription;
import com.sonyericsson.android.camera.view.hint.HintTextThermalWarning;
import com.sonyericsson.android.camera.view.hint.HintTextTimedOutMessage;
import com.sonyericsson.android.camera.view.hint.HintTextTimedOutMessage$MessageType;
import com.sonyericsson.android.camera.view.hint.HintTextViewController;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.android.camera.view.messagedialog.MessageDialogController;
import com.sonyericsson.android.camera.view.modeselector.CapturingModeUtil;
import com.sonyericsson.android.camera.view.modeselector.InternalMode;
import com.sonyericsson.android.camera.view.modeselector.LaunchCameraIntentBuilder;
import com.sonyericsson.android.camera.view.modeselector.Mode;
import com.sonyericsson.android.camera.view.modeselector.ModeLoader;
import com.sonyericsson.android.camera.view.modeselector.ModeSelectorInternalMode;
import com.sonyericsson.android.camera.view.overlaycontrol.ImageQualityControl;
import com.sonyericsson.android.camera.view.overlaycontrol.OverlayControl;
import com.sonyericsson.android.camera.view.overlaycontrol.ValueAccessor;
import com.sonyericsson.android.camera.view.selectabledialog.ModeSelector$OnModeSelectListener;
import com.sonyericsson.android.camera.view.setting.SettingDialogStack;
import com.sonyericsson.android.camera.view.setting.SettingUi;
import com.sonyericsson.android.camera.view.sidetouch.SideTouchUi;
import com.sonyericsson.android.camera.view.sidetouch.SideTouchUi$Type;
import com.sonyericsson.android.camera.view.tutorial.TutorialController;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$DisplayTrigger;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$OnClickSetupWizardButtonListener;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$OpenType;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$SystemUiAccessor;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$TutorialType;
import com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimationFactory;
import com.sonyericsson.cameracommon.capturefeedback.contextview.GLSurfaceContextView;
import com.sonyericsson.cameracommon.contentsview.ContentPallet$ThumbnailStateListener;
import com.sonyericsson.cameracommon.contentsview.ContentsViewController;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.contentsview.contents.Content$ContentInfo;
import com.sonyericsson.cameracommon.contentsview.contents.Content$ContentsType;
import com.sonyericsson.cameracommon.focusview.FocusRectangles;
import com.sonyericsson.cameracommon.focusview.FocusRectangles$FocusSetType;
import com.sonyericsson.cameracommon.focusview.FocusRectanglesViewList;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;
import com.sonyericsson.cameracommon.storage.PhotoSavingRequest;
import com.sonyericsson.cameracommon.storage.SavingRequest;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageStateListener;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import com.sonyericsson.cameracommon.utility.CommonUtility$DefaultGallerySetting;
import com.sonyericsson.cameracommon.utility.FaceDetectUtil;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver$LayoutOrientationType;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.utility.PermissionsUtil;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import com.sonyericsson.cameracommon.utility.RegionConfig;
import com.sonyericsson.cameracommon.utility.ResourceUtil;
import com.sonyericsson.cameracommon.utility.ViewUtility;
import com.sonyericsson.cameracommon.viewfinder.InflateItem;
import com.sonyericsson.cameracommon.viewfinder.InflateTask;
import com.sonyericsson.cameracommon.viewfinder.LayoutPattern;
import com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface;
import com.sonyericsson.cameracommon.viewfinder.recordingindicator.RecordingIndicator;
import com.sonymobile.cameracommon.evf.Evf;
import com.sonymobile.cameracommon.evf.Evf$EvfFactory;
import com.sonymobile.cameracommon.evf.Evf$LifeCycleCallback;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$WizardResult;
import com.sonymobile.cameracommon.view.RecognizedCondition;
import com.sonymobile.cameracommon.view.RecognizedScene;
import com.sonymobile.cameracommon.view.SelfTimerCountDownView;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map$Entry;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public class ViewFinderImpl implements StateMachine$OnStateChangedListener, ViewFinder, ViewFinderInterface, CameraActivity$LayoutOrientationChangedListener {
    private static final int AUTO_POWER_OFF_HINT_TEXT_TIME_OUT_TIME_MILLIS = 10000;
    private static final int COLOR_VALUE_MAX = 255;
    private static final List<DialogId> STORAGE_DIALOG_LIST = Arrays.asList(DialogId.MEMORY_FULL_PROPOSE_CHANGE_TO_INTERNAL, DialogId.MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_INTERNAL, DialogId.MEMORY_FULL, DialogId.MEMORY_SD_UNAVAILABLE, DialogId.MEMORY_FULL_PROPOSE_CHANGE_TO_SD, DialogId.MEMORY_INTERNAL_UNAVAILABLE, DialogId.MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_SD);
    private static final String TAG = "ViewFinderImpl";
    private static final String THREAD_NAME = "InflateTask";
    private static final float VIEW_FINDER_DUSKY = 0.5f;
    private CameraActivity mActivity;
    private TransitionAnimationController mAnimationController;
    private ApplicationNavigator mApplicationNavigator;
    private ViewFinderImpl$AutoReviewContentReceiverProxy mAutoReviewProxy;
    private StoreDataResult mAutoReviewStoreData;
    private BaseLayout mBaseLayout;
    private BurstCountView mBurstCountView;
    private CapturingMode mCapturingModeWhenLastSetupHeadDisplay;
    private ViewFinder$UiComponentKind mCurrentDisplayingUiComponent;
    private Evf mEvf;
    private FocusRectangles mFocusRectangles;
    private FrontAngleSwitchButton mFrontAngleSwitchButton;
    private OnScreenButtonGroup$MutableButtonItem mHighSensitivityFusionButtonItem;
    private HintTextViewController mHintText;
    private OnScreenButtonGroup$MutableButtonItem mImageQualityControlButtonItem;
    private Future<Map<InflateItem, List<View>>> mInflateFuture;
    private Map<InflateItem, List<View>> mInflateItemMap;
    private InstantViewer mInstantViewer;
    private boolean mIsAlreadySlowMotionLearnMoreButtonDisplayed;
    private Boolean mIsFaceDetectionIdSupported;
    private boolean mIsFrontAngleChanging;
    private boolean mIsModeChanging;
    private boolean mIsRequestingStartActivity;
    private boolean mIsSettingChangeAcceptable;
    private boolean mIsSetupHeadupDisplayInvoked;
    private LayoutPattern mLayoutPattern;
    private LayoutPatternApplier mLayoutPatternApplier;
    private XperiaXLoopsManager mLoopsManager;
    private final MessageDialogController mMessageDialog;
    private ModeLoader mModeLoader;
    private View$OnTouchListener mOnFocusRectangleTouchListener;
    private View mPreInflatedHeadUpDisplay;
    private View mPreviewCover;
    private PrimaryShortcutGroup mPrimaryShortcutGroup;
    private ViewFinderImpl$RecordingTimeReceiverProxy mRecordingTimeProxy;
    private View mSavingProgressBar;
    private final LayoutDependencyResolver$ScreenAspect mScreenAspect;
    private SelfTimerCountDownView mSelfTimerCountDownView;
    private SelfTimerCountDownView mSelfTimerCountDownViewNext;
    private SettingDialogStack mSettingDialogStack;
    private ViewFinderImpl$SettingMenuExclusiveListener mSettingMenuExclusiveListener;
    private SettingUi mSettingUi;
    private SideTouchUi mSideTouchUi;
    private StateMachine mStateMachine;
    private View mSurfaceBlinderView;
    private final ToastContent mToastContent;
    private final UiControlSettings mUiControlSettings;
    private CaptureArea mViewFinderCaptureArea;
    private View mWindowDisplayFlashScreen;
    private ViewFinderImpl$ZoomBarUpdateProxy mZoomBarProxy;
    private CameraDeviceHandler mCameraDevice = null;
    private final Evf$LifeCycleCallback mEvfLifeCycleCallback = new ViewFinderImpl$EvfLifeCycleCallback(this, null);
    private SelfTimer mPhotoSelfTimerSetting = SelfTimer.OFF;
    private ShutterTrigger mShutterTrigger = ShutterTrigger.OFF;
    private TouchCapture mTouchCapture = null;
    private CaptureFeedback mCaptureFeedback = null;
    private final Rect mGlobalVisibleRect = new Rect();
    private int mRecordingOrientation = 0;
    private boolean mIsSurfaceViewHideWhileAspectChanging = false;
    private boolean mIsAutoReviewRequested = false;
    private ViewFinder$BurstRejectedReason mBurstShootingRejectedReason = ViewFinder$BurstRejectedReason.NONE;
    private boolean mIsEvfPrepared = true;
    private boolean mCanFocusRectanglesBeUpdated = true;
    private int mOrientation = 2;
    private int mPreviewOrientation = 2;
    private boolean mIsPaused = false;
    private boolean mIsSwitchingAnimationProgress = false;
    private boolean mIsThermalWarningDialogShown = false;
    private boolean mHintBurstImageSavedToInternalStorageAlreadyDisplayed = false;
    private boolean mHintCannotBurstUsingFrontCameraAlreadyDisplayed = false;
    private boolean mHintBurstChangeCameraKeySettingAlreadyDisplayed = false;
    private boolean mHintCannotBurstUsingFusionModeAlreadyDisplayed = false;
    private final ViewFinderImpl$ScreenButtonHandler mScreenButtonHandler = new ViewFinderImpl$ScreenButtonHandler(this, null);
    private List<Runnable> mDelayUpdatedViewTaskList = new LinkedList();
    private boolean mIsNeedDisplayToastChangeInternalStoarge = false;
    private Storage$StorageStateListener mStorageStateListener = new ViewFinderImpl$1(this);
    private ModeSelector$OnModeSelectListener mModeSelectListener = new ViewFinderImpl$2(this);
    private final UserEventHandler$TouchEventDispatcher mTouchEventDispatcher = new UserEventHandler$TouchEventDispatcher();
    private final Runnable mCheckEvfPreparationTask = new ViewFinderImpl$3(this);
    private final ViewFinderImpl$PostUiInflatedTask mPostUiInflatedTask = new ViewFinderImpl$PostUiInflatedTask(this, null);
    private final View$OnClickListener mFrontAngleSwitchButtonClickListener = new ViewFinderImpl$8(this);
    private final Handler mHandler = new Handler();
    private final Runnable mAfterSwitchAnimationTask = new ViewFinderImpl$19(this);
    private final TutorialController$OnClickSetupWizardButtonListener mOnClickTutorialButtonListener = new ViewFinderImpl$25(this);
    private TutorialController$SystemUiAccessor mSystemUiAccessor = new ViewFinderImpl$26(this);
    private boolean mRequireDisplayFlash = false;
    private boolean mIsDisplayFlashScreenDisplayed = false;
    private int mDisplayFlashColor = -1;
    private final ValueAccessor<Float> mColorValueAccessor = new ViewFinderImpl$29(this);
    private final ValueAccessor<Float> mBrightnessValueAccessor = new ViewFinderImpl$30(this);

    public static final void preload() {
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public int getAutoPowerOffHintTextTimeOutDuration() {
        return 10000;
    }

    static /* synthetic */ StateMachine access$1000(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mStateMachine;
    }

    static /* synthetic */ void access$10000(ViewFinderImpl viewFinderImpl) {
        viewFinderImpl.onToggleCameraSwitch();
    }

    static /* synthetic */ void access$1100(ViewFinderImpl viewFinderImpl) {
        viewFinderImpl.onAppsUiModeFinish();
    }

    static /* synthetic */ boolean access$1200(ViewFinderImpl viewFinderImpl, AnimationRequest animationRequest) {
        return viewFinderImpl.requestAnimation(animationRequest);
    }

    static /* synthetic */ void access$1300(ViewFinderImpl viewFinderImpl, boolean z) {
        viewFinderImpl.setApplicationNavigatorEnabled(z);
    }

    static /* synthetic */ boolean access$1400(ViewFinderImpl viewFinderImpl, Intent intent, Bundle bundle) {
        return viewFinderImpl.requestStartActivity(intent, bundle);
    }

    static /* synthetic */ boolean access$200(ViewFinderImpl viewFinderImpl, Storage$StorageType storage$StorageType) {
        return viewFinderImpl.hasEnoughFreeSpace(storage$StorageType);
    }

    static /* synthetic */ UserEventHandler$TouchEventDispatcher access$2000(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mTouchEventDispatcher;
    }

    static /* synthetic */ void access$2100(ViewFinderImpl viewFinderImpl, Rect rect) {
        viewFinderImpl.notifyOnEvfPrepared(rect);
    }

    static /* synthetic */ CameraDeviceHandler access$2200(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mCameraDevice;
    }

    static /* synthetic */ Evf access$2300(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mEvf;
    }

    static /* synthetic */ FocusRectangles access$2400(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mFocusRectangles;
    }

    static /* synthetic */ boolean access$2502(ViewFinderImpl viewFinderImpl, boolean z) {
        viewFinderImpl.mCanFocusRectanglesBeUpdated = z;
        return z;
    }

    static /* synthetic */ void access$2600(ViewFinderImpl viewFinderImpl) {
        viewFinderImpl.setupAutoReview();
    }

    static /* synthetic */ BaseLayout access$300(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mBaseLayout;
    }

    static /* synthetic */ boolean access$3000(ViewFinderImpl viewFinderImpl, View view, MotionEvent motionEvent) {
        return viewFinderImpl.isExclusiveViewEvent(view, motionEvent);
    }

    static /* synthetic */ boolean access$3100(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.isAllDialogClosed();
    }

    static /* synthetic */ void access$3200(ViewFinderImpl viewFinderImpl) {
        viewFinderImpl.setupAnimations();
    }

    static /* synthetic */ void access$3400(ViewFinderImpl viewFinderImpl, UserSettingKey userSettingKey) {
        viewFinderImpl.openUserSelectMenu(userSettingKey);
    }

    static /* synthetic */ boolean access$3500(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.isTouchCaptureEnabled();
    }

    static /* synthetic */ boolean access$3600(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.isZooming();
    }

    static /* synthetic */ HintTextViewController access$3900(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mHintText;
    }

    static /* synthetic */ boolean access$400(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mIsSettingChangeAcceptable;
    }

    static /* synthetic */ NavigatorContents access$4000(ViewFinderImpl viewFinderImpl, NavigatorContents navigatorContents, AbstractDraggingEventHandler$Direction abstractDraggingEventHandler$Direction) {
        return viewFinderImpl.getNextContent(navigatorContents, abstractDraggingEventHandler$Direction);
    }

    static /* synthetic */ void access$4100(ViewFinderImpl viewFinderImpl, NavigatorContents navigatorContents, NavigatorContents navigatorContents2, int i, float f) {
        viewFinderImpl.onModeControllableDraggingMove(navigatorContents, navigatorContents2, i, f);
    }

    static /* synthetic */ void access$4200(ViewFinderImpl viewFinderImpl, float f) {
        viewFinderImpl.startDraggingSwitchAnimation(f);
    }

    static /* synthetic */ void access$4300(ViewFinderImpl viewFinderImpl, boolean z) {
        viewFinderImpl.setIsSwitchingAnimationProgress(z);
    }

    static /* synthetic */ ApplicationNavigator access$4400(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mApplicationNavigator;
    }

    static /* synthetic */ Handler access$4800(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mHandler;
    }

    static /* synthetic */ void access$4900(ViewFinderImpl viewFinderImpl) {
        viewFinderImpl.resetAnimationProperty();
    }

    static /* synthetic */ CameraActivity access$500(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mActivity;
    }

    static /* synthetic */ Runnable access$5000(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mAfterSwitchAnimationTask;
    }

    static /* synthetic */ View access$5100(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mPreviewCover;
    }

    static /* synthetic */ TransitionAnimationController access$5200(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mAnimationController;
    }

    static /* synthetic */ boolean access$5700(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.isFront();
    }

    static /* synthetic */ LayoutPattern access$5800(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.getCurrentLayoutPattern();
    }

    static /* synthetic */ SettingDialogStack access$5900(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mSettingDialogStack;
    }

    static /* synthetic */ boolean access$600(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mIsRequestingStartActivity;
    }

    static /* synthetic */ void access$6000(ViewFinderImpl viewFinderImpl) {
        viewFinderImpl.updateHighSensitivityFusionModeForManual();
    }

    static /* synthetic */ ViewFinder$BurstRejectedReason access$6302(ViewFinderImpl viewFinderImpl, ViewFinder$BurstRejectedReason viewFinder$BurstRejectedReason) {
        viewFinderImpl.mBurstShootingRejectedReason = viewFinder$BurstRejectedReason;
        return viewFinder$BurstRejectedReason;
    }

    static /* synthetic */ boolean access$6400(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.isPhotoSelfTimerEnabled();
    }

    static /* synthetic */ boolean access$6500(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.isInternalStorageWritable();
    }

    static /* synthetic */ boolean access$6600(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mIsFrontAngleChanging;
    }

    static /* synthetic */ void access$6700(ViewFinderImpl viewFinderImpl, Uri uri, String str, int i, int i2, int i3, boolean z) {
        viewFinderImpl.clickThumbnail(uri, str, i, i2, i3, z);
    }

    static /* synthetic */ InstantViewer access$6800(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mInstantViewer;
    }

    static /* synthetic */ void access$6900(ViewFinderImpl viewFinderImpl) {
        viewFinderImpl.updateAllOverlayControlVisibility();
    }

    static /* synthetic */ BaseLayout access$700(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.getBaseLayout();
    }

    static /* synthetic */ void access$7000(ViewFinderImpl viewFinderImpl) {
        viewFinderImpl.updateVisibilityForSpecificDisplaySize();
    }

    static /* synthetic */ void access$7100(ViewFinderImpl viewFinderImpl, BaseLayout$LazyInitializer baseLayout$LazyInitializer) {
        viewFinderImpl.disableOverlayControl(baseLayout$LazyInitializer);
    }

    static /* synthetic */ void access$7200(ViewFinderImpl viewFinderImpl, BaseLayout$LazyInitializer baseLayout$LazyInitializer) {
        viewFinderImpl.enableOverlayControl(baseLayout$LazyInitializer);
    }

    static /* synthetic */ void access$7400(ViewFinderImpl viewFinderImpl, int i) {
        viewFinderImpl.transitionModeOnNavigator(i);
    }

    static /* synthetic */ CameraActivity access$7500(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.getActivity();
    }

    static /* synthetic */ SideTouchUi access$7900(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mSideTouchUi;
    }

    static /* synthetic */ SettingUi access$800(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mSettingUi;
    }

    static /* synthetic */ void access$8000(ViewFinderImpl viewFinderImpl, LayoutPattern layoutPattern, boolean z) {
        viewFinderImpl.changeLayoutTo(layoutPattern, z);
    }

    static /* synthetic */ boolean access$8100(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mIsSetupHeadupDisplayInvoked;
    }

    static /* synthetic */ MessageDialogController access$8200(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.mMessageDialog;
    }

    static /* synthetic */ void access$8300(ViewFinderImpl viewFinderImpl) {
        viewFinderImpl.showHiSpeedSdCardRecommendDialogOnVideoSizeChange();
    }

    static /* synthetic */ void access$8400(ViewFinderImpl viewFinderImpl) {
        viewFinderImpl.launchLocationSourceSettings();
    }

    static /* synthetic */ void access$8500(ViewFinderImpl viewFinderImpl, Intent intent, Bundle bundle) {
        viewFinderImpl.requestStartActivityForMessageDialog(intent, bundle);
    }

    static /* synthetic */ void access$8600(ViewFinderImpl viewFinderImpl) {
        viewFinderImpl.launchSideSenseSettings();
    }

    static /* synthetic */ void access$8700(ViewFinderImpl viewFinderImpl) {
        viewFinderImpl.updateLocation();
    }

    static /* synthetic */ void access$8800(ViewFinderImpl viewFinderImpl) {
        viewFinderImpl.openSettingMenuDialogInChina();
    }

    static /* synthetic */ void access$8900(ViewFinderImpl viewFinderImpl) {
        viewFinderImpl.exitByError();
    }

    static /* synthetic */ CapturingMode access$900(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.getCapturingMode();
    }

    static /* synthetic */ void access$9000(ViewFinderImpl viewFinderImpl) {
        viewFinderImpl.onCloseStorageDialog();
    }

    static /* synthetic */ void access$9100(ViewFinderImpl viewFinderImpl) {
        viewFinderImpl.onOpenStorageDialog();
    }

    static /* synthetic */ void access$9200(ViewFinderImpl viewFinderImpl, LayoutPattern layoutPattern) {
        viewFinderImpl.changeLayoutTo(layoutPattern);
    }

    static /* synthetic */ String access$9300(ViewFinderImpl viewFinderImpl, int i) {
        return viewFinderImpl.getString(i);
    }

    static /* synthetic */ boolean access$9400(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.isPredictiveCaptureAvailable();
    }

    static /* synthetic */ void access$9600(ViewFinderImpl viewFinderImpl, StoreDataResult storeDataResult) {
        viewFinderImpl.clickAutoReview(storeDataResult);
    }

    static /* synthetic */ void access$9700(ViewFinderImpl viewFinderImpl) {
        viewFinderImpl.disableSemiAutoControl();
    }

    static /* synthetic */ boolean access$9800(ViewFinderImpl viewFinderImpl) {
        return viewFinderImpl.isFocusing();
    }

    static /* synthetic */ void access$9900(ViewFinderImpl viewFinderImpl, boolean z) {
        viewFinderImpl.setFrontAngleSwitchButtonClickable(z);
    }

    private static void logPerformance(String str) {
        Log.e("TraceLog", "[PERFORMANCE] [TIME = " + System.currentTimeMillis() + "] [ViewFinderImpl] [" + Thread.currentThread().getName() + " : " + str + "]");
    }

    public UserEventHandler$TouchEventDispatcher getTouchEventDispatcher() {
        return this.mTouchEventDispatcher;
    }

    public ViewFinderImpl(Context context, boolean z, LayoutDependencyResolver$ScreenAspect layoutDependencyResolver$ScreenAspect, UiControlSettings uiControlSettings) {
        this.mEvf = null;
        this.mScreenAspect = layoutDependencyResolver$ScreenAspect;
        createViewFinder((CameraActivity) context, new BaseLayoutPatternApplier(), true);
        if (CamLog.VERBOSE) {
            CamLog.d("CONSTRUCTOR:[IN]");
        }
        if (z) {
            if (this.mActivity.isKeyguardSecure()) {
                this.mActivity.getWindow().addFlags(524288);
            } else {
                dismissKeyguard();
            }
        }
        if (CamLog.DEBUG) {
            CamLog.d("CONSTRUCTOR : new Evf : E");
        }
        this.mEvf = Evf$EvfFactory.generate();
        if (CamLog.DEBUG) {
            CamLog.d("CONSTRUCTOR : new Evf : X");
        }
        this.mEvf.setLifeCycleCallback(this.mEvfLifeCycleCallback);
        this.mEvf.onCreate(context);
        if (CamLog.DEBUG) {
            CamLog.d("setContentView() : addView(Evf) : E");
        }
        this.mActivity.setContentView(this.mEvf.asView(), getPreviewLayoutParams());
        if (CamLog.DEBUG) {
            CamLog.d("setContentView() : addView(Evf) : X");
        }
        ((View) this.mEvf.asView().getParent()).setLayoutDirection(0);
        if (this.mSelfTimerCountDownViewNext == null) {
            this.mSelfTimerCountDownViewNext = (SelfTimerCountDownView) getActivity().getLayoutInflater().inflate(2131492995, (ViewGroup) null);
        }
        this.mToastContent = new ToastContent();
        this.mIsSetupHeadupDisplayInvoked = false;
        this.mMessageDialog = new MessageDialogController(this.mActivity, this.mActivity.getStoredSettings().getMessageSettings(), new ViewFinderImpl$MessageDialogOnClickPositiveListenerImpl(this), new ViewFinderImpl$MessageDialogOnClickNegativeListenerImpl(this, null), new ViewFinderImpl$MessageDialogOnCancelListenerImpl(this, null), new ViewFinderImpl$MessageDialogOnDismissListenerImpl(this, null), new ViewFinderImpl$MessageDialogOnOpenListenerImpl(this, null));
        this.mUiControlSettings = uiControlSettings;
    }

    private void dismissKeyguard() {
        ((KeyguardManager) this.mActivity.getSystemService(KeyguardManager.class)).requestDismissKeyguard(this.mActivity, null);
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void setContentView() {
        if (CamLog.VERBOSE) {
            CamLog.d("setContentView():[IN]");
        }
        setup(this.mEvf.asView());
        clearTouchCapture();
        if (CamLog.VERBOSE) {
            CamLog.d("setContentView():[OUT]");
        }
    }

    private void setup(View view) {
        getLayoutPatternApplier().setup(getBaseLayout(), this.mActivity.isOneShot());
        getBaseLayout().setPreviewSurface(view);
        if (CamLog.VERBOSE) {
            CamLog.d("[APP DETAIL] setup shutter : E");
        }
        getBaseLayout().setupPreferentialHeadUpDisplays();
        ViewFinder$HeadUpDisplaySetupState viewFinder$HeadUpDisplaySetupState = ViewFinder$HeadUpDisplaySetupState.PHOTO_READY;
        CapturingMode capturingMode = getCapturingMode();
        if (capturingMode.isVideo()) {
            viewFinder$HeadUpDisplaySetupState = ViewFinder$HeadUpDisplaySetupState.VIDEO_READY;
        }
        this.mCapturingModeWhenLastSetupHeadDisplay = capturingMode;
        setOrientation(this.mActivity.getOrientation());
        setSelfTimer(capturingMode, this.mPhotoSelfTimerSetting);
        setupOnScreenCaptureButton(viewFinder$HeadUpDisplaySetupState);
        changeScreenButtonImage(viewFinder$HeadUpDisplaySetupState, false);
        if (CamLog.VERBOSE) {
            CamLog.d("[APP DETAIL] setup shutter : X");
        }
        LayoutDependencyResolver.setupRotatableToast(this.mActivity);
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void attachToWindow() {
        if (getBaseLayout() != null) {
            getBaseLayout().attachToWindow();
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void setStateMachine(StateMachine stateMachine) {
        if (CamLog.VERBOSE) {
            CamLog.d("setStateMachine():[IN]");
        }
        if (stateMachine != null) {
            stateMachine.addOnStateChangedListener(this);
            stateMachine.setGestureShutterWindowHost(new ViewFinderImpl$GestureShutterListener(this, null));
        } else if (this.mStateMachine != null) {
            this.mStateMachine.removeOnStateChangedListener(this);
        }
        this.mStateMachine = stateMachine;
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void setCameraDevice(CameraDeviceHandler cameraDeviceHandler) {
        this.mCameraDevice = cameraDeviceHandler;
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public boolean isSetupHeadupDisplayInvoked() {
        return this.mIsSetupHeadupDisplayInvoked;
    }

    @Override // com.sonyericsson.android.camera.controller.StateMachine$OnStateChangedListener
    public void onStateChanged(StateMachine$CaptureState stateMachine$CaptureState, Object... objArr) {
        onViewFinderStateChanged(stateMachine$CaptureState, objArr);
    }

    boolean predictiveLaunchCoverExists() {
        PredictiveLaunchCoverView predictiveLaunchCoverView = getBaseLayout().getPredictiveLaunchCoverView();
        return predictiveLaunchCoverView != null && predictiveLaunchCoverView.exists();
    }

    @Override // com.sonyericsson.android.camera.CameraActivity$LayoutOrientationChangedListener
    public void onLayoutOrientationChanged(CameraActivity$LayoutOrientation cameraActivity$LayoutOrientation) {
        this.mStateMachine.sendStaticEvent(StateMachine$StaticEvent.EVENT_ON_ORIENTATION_CHANGED, Integer.valueOf(cameraActivity$LayoutOrientation == CameraActivity$LayoutOrientation.Portrait ? 1 : 2));
    }

    private void setOrientation(int i) {
        if (this.mStateMachine.isRecording()) {
            this.mBaseLayout.setOrientation(i, this.mRecordingOrientation);
            this.mOrientation = i;
            if (this.mApplicationNavigator != null) {
                this.mApplicationNavigator.setOrientation(this.mOrientation);
            }
        } else {
            this.mBaseLayout.setOrientation(i);
            this.mOrientation = i;
            if (this.mApplicationNavigator != null) {
                this.mApplicationNavigator.setOrientation(this.mOrientation);
            }
            if (this.mHintText != null) {
                updateHintTextUiOrientation();
            }
        }
        OnScreenButtonGroup onScreenButtonGroup = getBaseLayout().getOnScreenButtonGroup();
        if (onScreenButtonGroup != null) {
            onScreenButtonGroup.setUiOrientation(i);
        }
        if (this.mMessageDialog != null) {
            this.mMessageDialog.setSensorOrientation(i);
        }
        if (this.mToastContent != null) {
            this.mToastContent.setSensorOrientation(i);
        }
        if (isHeadUpDisplayReady()) {
            if (this.mSettingDialogStack != null) {
                this.mSettingDialogStack.setUiOrientation(i);
            }
            if (this.mInstantViewer != null) {
                this.mInstantViewer.setUiOrientation(i);
            }
            if (this.mFocusRectangles != null) {
                this.mFocusRectangles.setOrientation(i);
            }
            if (this.mSelfTimerCountDownView != null) {
                this.mSelfTimerCountDownView.setSensorOrientation(i);
            }
            if (this.mSettingUi != null) {
                this.mSettingUi.setSensorOrientation(i);
            }
            if (this.mBurstCountView != null) {
                this.mBurstCountView.setUiOrientation(i);
            }
            this.mSideTouchUi.setUiOrientation(i);
        }
    }

    private void updateHintTextUiOrientation() {
        FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) this.mEvf.asView().getLayoutParams();
        this.mHintText.setUiOrientation(new Rect(0, 0, frameLayout$LayoutParams.width, frameLayout$LayoutParams.height), this.mActivity, this.mScreenAspect, this.mOrientation);
        updateVisibilityForSpecificDisplaySize();
    }

    public ViewGroup$LayoutParams getPreviewLayoutParams() {
        FrameLayout$LayoutParams frameLayout$LayoutParams = new FrameLayout$LayoutParams(-1, -1, 51);
        if (this.mScreenAspect == LayoutDependencyResolver$ScreenAspect.EIGHTEEN_NINE) {
            if (LayoutOrientationResolver.getInstance().getConfigurationOrientation() == 1) {
                this.mPreviewOrientation = 1;
                frameLayout$LayoutParams.gravity = 49;
                frameLayout$LayoutParams.setMargins(0, ResourceUtil.getDimensionPixelSize(this.mActivity, this.mActivity.getPackageName(), 2131165428), 0, 0);
            } else {
                this.mPreviewOrientation = 2;
                frameLayout$LayoutParams.gravity = 19;
                frameLayout$LayoutParams.setMargins(ResourceUtil.getDimensionPixelSize(this.mActivity, this.mActivity.getPackageName(), 2131165428), 0, 0, 0);
            }
        }
        return frameLayout$LayoutParams;
    }

    public void updatePreviewLayoutParams() {
        if (this.mEvf == null || this.mEvf.asView() == null || this.mScreenAspect != LayoutDependencyResolver$ScreenAspect.EIGHTEEN_NINE || this.mPreviewOrientation == LayoutOrientationResolver.getInstance().getConfigurationOrientation()) {
            return;
        }
        this.mEvf.asView().setLayoutParams(getPreviewLayoutParams());
    }

    protected void onSideTouchZoom(SideTouchEventDetector$SideTouchEvent sideTouchEventDetector$SideTouchEvent, int i) {
        Point sideTouchPoint = getSideTouchPoint(sideTouchEventDetector$SideTouchEvent);
        if (sideTouchPoint == null) {
            return;
        }
        hideZoomBar();
        this.mSideTouchUi.destroyTo(SideTouchUi$Type.COVERING);
        SideTouchUi$Type sideTouchUi$Type = SideTouchUi$Type.ZOOM_BAR;
        this.mSideTouchUi.setUiOrientation(this.mOrientation);
        this.mSideTouchUi.attachIcon(sideTouchUi$Type, sideTouchPoint);
        this.mSideTouchUi.showIcon();
        setZoomRatio(i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected boolean onSideTapped(SideTouchEventDetector$SideTouchEvent sideTouchEventDetector$SideTouchEvent) {
        Point sideTouchPoint = getSideTouchPoint(sideTouchEventDetector$SideTouchEvent);
        if (sideTouchPoint == null || this.mSideTouchUi.containsIn(SideTouchUi$Type.CAPTURE_COUNTDOWN, SideTouchUi$Type.VIDEO_COUNTDOWN, SideTouchUi$Type.SELF_TIMER_COUNTDOWN_CANCEL)) {
            return false;
        }
        if (getBaseLayout().isAutoReviewShowing()) {
            getBaseLayout().hideAutoReview();
            return false;
        }
        this.mSideTouchUi.destroyTo(SideTouchUi$Type.ZOOM_BAR);
        this.mSideTouchUi.setUiOrientation(this.mOrientation);
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[getCapturingMode().ordinal()]) {
            case 1:
            case 2:
                if (((SelfTimer) this.mStateMachine.getUserSetting().get(UserSettingKey.SELF_TIMER)) == SelfTimer.OFF) {
                    this.mSideTouchUi.attachIcon(SideTouchUi$Type.CAPTURE_COUNTDOWN, sideTouchPoint);
                } else {
                    this.mSideTouchUi.attachIcon(SideTouchUi$Type.SELF_TIMER_COUNTDOWN_CANCEL, sideTouchPoint);
                }
                return true;
            case 3:
            case 4:
                this.mSideTouchUi.attachIcon(SideTouchUi$Type.VIDEO_COUNTDOWN, sideTouchPoint);
                return true;
            default:
                return true;
        }
    }

    private Point getSideTouchPoint(SideTouchEventDetector$SideTouchEvent sideTouchEventDetector$SideTouchEvent) {
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea[sideTouchEventDetector$SideTouchEvent.area.ordinal()]) {
            case 1:
            case 2:
                return null;
            case 3:
                return new Point(0, sideTouchEventDetector$SideTouchEvent.position);
            case 4:
                return new Point(1439, sideTouchEventDetector$SideTouchEvent.position);
            default:
                return null;
        }
    }

    private void setEvfPrepared(boolean z) {
        if (this.mSettingDialogStack != null) {
            this.mSettingDialogStack.setCanceledOnTouchOutside(z);
        }
        this.mIsEvfPrepared = z;
        CamLog.d("setEvfPrepared() : evfPrepared & onTouchOutside = " + z);
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public boolean isEvfPrepared() {
        CamLog.d("isEvfPrepared() : mIsEvfPrepared = " + this.mIsEvfPrepared);
        return this.mIsEvfPrepared;
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void notifyOnEvfPrepared() {
        if (!this.mEvf.asSurface().isValid()) {
            CamLog.d("notifyOnEvfPrepared : Evf does not hold a physical surface yet.");
            return;
        }
        Size surfaceSize = this.mEvf.getSurfaceSize();
        if (surfaceSize != null) {
            notifyOnEvfPrepared(new Rect(0, 0, surfaceSize.getWidth(), surfaceSize.getHeight()));
        }
    }

    private static boolean isNearSameSize(Rect rect, Rect rect2) {
        return ViewUtility.isSimilarAspect(rect.width() / rect.height(), rect2.width() / rect2.height());
    }

    private boolean isNearSameSizeNavigationbar(Rect rect, Rect rect2) {
        if (isNearSameSize(rect, rect2)) {
            return true;
        }
        return isNearSameSize(rect, new Rect(rect2.left, rect2.top, rect2.right + this.mActivity.getResources().getDimensionPixelSize(2131165455), rect2.bottom));
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void requestCheckEvfPreparationRetrying() {
        retryToCheckEvfPreparationDelayed();
    }

    private void retryToCheckEvfPreparationDelayed() {
        cancelCheckEvfPreparationTask();
        CameraApplication.getUiThreadHandler().postDelayed(this.mCheckEvfPreparationTask, 100L);
    }

    private void cancelCheckEvfPreparationTask() {
        CameraApplication.getUiThreadHandler().removeCallbacks(this.mCheckEvfPreparationTask);
    }

    private void notifyOnEvfPrepared(Rect rect) {
        setEvfPrepared(true);
        this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_ON_EVF_PREPARED, this.mEvf);
        this.mCanFocusRectanglesBeUpdated = false;
        Handler handler = getBaseLayout().getRootView().getHandler();
        if (handler != null) {
            handler.post(new ViewFinderImpl$4(this, rect));
        }
    }

    private void resizeEvfScope(Rect rect) {
        Rect rectAccordingToLayoutOrientation = LayoutOrientationResolver.getInstance().getRectAccordingToLayoutOrientation(rect);
        int iWidth = rectAccordingToLayoutOrientation.width();
        int iHeight = rectAccordingToLayoutOrientation.height();
        float f = iWidth / iHeight;
        FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) getPreviewLayoutParams();
        if (iWidth == iHeight) {
            Rect viewFinderSize = LayoutDependencyResolver.getViewFinderSize(this.mActivity);
            if (LayoutOrientationResolver.getInstance().getConfigurationOrientation() == 1) {
                frameLayout$LayoutParams.topMargin += viewFinderSize.height() / 3;
            } else {
                frameLayout$LayoutParams.leftMargin += viewFinderSize.height() / 3;
            }
        }
        this.mEvf.asView().setLayoutParams(frameLayout$LayoutParams);
        Rect surfaceViewRect = LayoutDependencyResolver.getSurfaceViewRect(this.mActivity, f, this.mScreenAspect);
        this.mEvf.resize(surfaceViewRect.width(), surfaceViewRect.height());
        this.mEvf.setFixedSurfaceSize(rect.width(), rect.height());
    }

    private void setupHeadUpDisplay(ViewFinder$HeadUpDisplaySetupState viewFinder$HeadUpDisplaySetupState) {
        PerfLog.VIEWFINDER_SETUP_HEADUP_DISPLAY.begin();
        if (CamLog.VERBOSE) {
            CamLog.d("setupHeadUpDisplay ");
        }
        if (this.mCapturingModeWhenLastSetupHeadDisplay != getCapturingMode()) {
            this.mIsSetupHeadupDisplayInvoked = false;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("setupHeadUpDisplay() prev:" + this.mCapturingModeWhenLastSetupHeadDisplay + " current:" + getCapturingMode());
        }
        if (this.mActivity.isDeviceInSecurityLock() && this.mIsSetupHeadupDisplayInvoked) {
            if (CamLog.VERBOSE) {
                CamLog.d("setupHeadUpDisplay is already invoked.");
                return;
            }
            return;
        }
        this.mCapturingModeWhenLastSetupHeadDisplay = getCapturingMode();
        this.mSurfaceBlinderView = new View(this.mActivity);
        this.mSurfaceBlinderView.setBackgroundColor(-16777216);
        this.mSurfaceBlinderView.setVisibility(8);
        joinInflateTask();
        if (!isHeadUpDisplayReady()) {
            Rect rect = this.mEvf.getRect();
            boolean z = LayoutOrientationResolver.getInstance().getOrientation() != LayoutOrientationResolver$LayoutOrientationType.PORTRAIT ? rect.width() >= rect.height() : rect.width() <= rect.height();
            if (CamLog.VERBOSE) {
                CamLog.d("isEvfReady : " + z);
            }
            if (!z) {
                this.mActivity.postDelayedEvent(new ViewFinderImpl$ReTrySetupHeadUpDisplayTask(this, null), 100L);
                return;
            }
        }
        boolean zIsHeadUpDisplayReady = isHeadUpDisplayReady();
        if (isInflated()) {
            setPreInflatedHeadUpDisplay(getPreInflatedView(LayoutAsyncInflateItems$CameraInflateItem.HEAD_UP_DISPLAY).get(0));
        }
        requestSetupHeadUpDisplay();
        if (!zIsHeadUpDisplayReady) {
            getBaseLayout().getPreviewOverlayContainer().addView(setupViewFinderLayout());
            this.mCaptureFeedback = setupFeedbackContextView();
            getBaseLayout().getRootView().addView((GLSurfaceContextView) this.mCaptureFeedback);
        }
        setupCaptureButtonArea();
        setupApplicationNavigator(viewFinder$HeadUpDisplaySetupState);
        setupRightIndicatorArea();
        setupTransitionAnimationController(this.mActivity, viewFinder$HeadUpDisplaySetupState);
        setupHintText();
        setupDraggingEventHandler();
        setupSettingUi();
        setupContentsView();
        setupCaptureArea(viewFinder$HeadUpDisplaySetupState);
        setupFocusRectangles();
        setupOnScreenCaptureButton(viewFinder$HeadUpDisplaySetupState);
        setupInstantViewer();
        setupAutoReview();
        setupSelfTimerCountDownView();
        this.mZoomBarProxy = new ViewFinderImpl$ZoomBarUpdateProxy();
        this.mRecordingTimeProxy = new ViewFinderImpl$RecordingTimeReceiverProxy();
        this.mAutoReviewProxy = new ViewFinderImpl$AutoReviewContentReceiverProxy();
        this.mZoomBarProxy.bindZoomBar(getBaseLayout().getZoomBar());
        this.mRecordingTimeProxy.bindReceiver(getBaseLayout().getRecordingIndicator());
        this.mAutoReviewProxy.bindReceiver(getBaseLayout().getAutoReview());
        setupSideTouchUI();
        setZoomRatio(0);
        setupPrimaryShortcutIcons();
        setupOnScreenShortcut();
        setOrientation(getOrientation());
        updateGridLineView();
        updateFrontAngleSwitchButton();
        if (!isTutorialOpened()) {
            updateVideoHdrCondition(this.mCapturingModeWhenLastSetupHeadDisplay, (VideoHdr) this.mStateMachine.getUserSetting().get(this.mCapturingModeWhenLastSetupHeadDisplay, UserSettingKey.VIDEO_HDR), true);
            changeToLayoutWithSetupState(viewFinder$HeadUpDisplaySetupState);
        }
        Handler handler = getBaseLayout().getRootView().getHandler();
        if (handler != null) {
            handler.post(this.mPostUiInflatedTask);
        }
        if (!isCameraSwitching()) {
            this.mStateMachine.sendStaticEvent(StateMachine$StaticEvent.EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED, viewFinder$HeadUpDisplaySetupState);
        }
        clearPreInflatedViews();
        this.mIsSetupHeadupDisplayInvoked = true;
        this.mCanFocusRectanglesBeUpdated = true;
        if (this.mAutoReviewStoreData != null && this.mAutoReviewStoreData.savingRequest.common.takenByFastCapture && this.mAutoReviewStoreData.isSuccess()) {
            if (CamLog.DEBUG) {
                CamLog.d("Pending Auto review is shown when ViewFinder is ready.");
            }
            showAutoReview(this.mAutoReviewStoreData);
            this.mAutoReviewStoreData = null;
        }
        setIsCameraSwitching(false);
        PerfLog.VIEWFINDER_SETUP_HEADUP_DISPLAY.end();
    }

    private void setupSideTouchUI() {
        this.mSideTouchUi = new SideTouchUi((FrameLayout) this.mActivity.findViewById(2131296611), this.mActivity.isOneShot());
        this.mSideTouchUi.setUiOrientation(getOrientation());
        this.mSideTouchUi.setZoomBarUpdateProxy(this.mZoomBarProxy);
        this.mSideTouchUi.setRecordingTimeReceiverProxy(this.mRecordingTimeProxy);
        this.mSideTouchUi.setAutoReviewProxy(this.mAutoReviewProxy);
        this.mSideTouchUi.setScreenButtonListenerFactory(new ViewFinderImpl$SideTouchUiButtonListenerFactory(this));
    }

    private void setupSettingUi() {
        if (this.mSettingDialogStack == null) {
            this.mSettingDialogStack = new SettingDialogStack(this.mActivity, (ViewGroup) this.mActivity.findViewById(2131296599), getBaseLayout().getViewFinderRect());
            this.mSettingDialogStack.addDialogListener(new ViewFinderImpl$SettingDialogListenerImpl(this, null));
            this.mSettingDialogStack.addDialogListener(getBaseLayout().getPrimaryShortcut());
            if (this.mSettingMenuExclusiveListener == null) {
                this.mSettingMenuExclusiveListener = new ViewFinderImpl$SettingMenuExclusiveListener(this, null);
                this.mSettingDialogStack.setExclusiveViewListener(this.mSettingMenuExclusiveListener);
            }
        }
        if (this.mSettingUi == null) {
            this.mSettingUi = new SettingUi(this.mActivity, this.mSettingDialogStack, this.mStateMachine, this, this.mCameraDevice, this.mActivity.isDeviceInSecurityLock());
        } else {
            this.mSettingUi.setDeviceInSecurityLock(this.mActivity.isDeviceInSecurityLock());
        }
        this.mSettingDialogStack.setCapturingMode((CapturingMode) this.mStateMachine.getUserSetting().get(UserSettingKey.CAPTURING_MODE));
        Iterator<Runnable> it = this.mDelayUpdatedViewTaskList.iterator();
        while (it.hasNext()) {
            CameraApplication.getUiThreadHandler().post(it.next());
        }
        this.mDelayUpdatedViewTaskList.clear();
    }

    private boolean isExclusiveViewEvent(View view, MotionEvent motionEvent) {
        boolean zIsOpened;
        if (this.mSettingDialogStack != null && this.mPrimaryShortcutGroup != null) {
            for (Map$Entry<UserSettingKey, View> map$Entry : this.mPrimaryShortcutGroup.getPrimaryShortcutViewMap().entrySet()) {
                if (map$Entry.getKey() == UserSettingKey.SETTING_MENU) {
                    if (this.mOrientation == 1 && this.mSettingDialogStack.isSecondLayerDialogOpened()) {
                        return false;
                    }
                    zIsOpened = this.mSettingDialogStack.isMenuDialogOpened();
                } else {
                    zIsOpened = this.mSettingDialogStack.isOpened(map$Entry.getKey());
                }
                if (zIsOpened) {
                    View value = map$Entry.getValue();
                    Rect rect = new Rect();
                    value.getGlobalVisibleRect(rect);
                    Rect rect2 = new Rect();
                    view.getGlobalVisibleRect(rect2);
                    if (rect.contains(rect2.bottom - ((int) motionEvent.getY()), rect2.left + ((int) motionEvent.getX()))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private RelativeLayout setupViewFinderLayout() {
        RelativeLayout relativeLayout = isInflated() ? (RelativeLayout) getPreInflatedView(LayoutAsyncInflateItems$CameraInflateItem.FAST_CAPTURING_VIEWFINDER_ITEMS).get(0) : null;
        return relativeLayout == null ? (RelativeLayout) LayoutInflater.from(this.mActivity).inflate(2131492925, (ViewGroup) null) : relativeLayout;
    }

    private GLSurfaceContextView setupFeedbackContextView() {
        GLSurfaceContextView gLSurfaceContextView = new GLSurfaceContextView(getActivity(), null);
        gLSurfaceContextView.setLayoutParams(new RelativeLayout$LayoutParams(-1, -1));
        gLSurfaceContextView.setVisibility(4);
        return gLSurfaceContextView;
    }

    private void changeToLayoutWithSetupState(ViewFinder$HeadUpDisplaySetupState viewFinder$HeadUpDisplaySetupState) {
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState[viewFinder$HeadUpDisplaySetupState.ordinal()]) {
            case 1:
                changeToPhotoReadyView(true);
                break;
            case 2:
                changeToPhotoCaptureView();
                break;
            case 3:
                changeToBurstCaptureView();
                break;
            case 4:
                changeToVideoReadyView();
                break;
            case 5:
                changeToVideoRecordingView();
                break;
            default:
                throw new IllegalStateException("setupHeadUpDisplay():[Illegal State]");
        }
        if (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$LaunchCondition$ExtraOperation[this.mActivity.getLaunchCondition().getExtraOperation().ordinal()] != 1) {
            return;
        }
        String userSettingKeyName = this.mActivity.getLaunchCondition().getUserSettingKeyName();
        if (userSettingKeyName == null) {
            PostActionToMainThread(null);
        } else {
            PostActionToMainThread(UserSettingKey.valueOf(userSettingKeyName));
        }
    }

    private void PostActionToMainThread(UserSettingKey userSettingKey) {
        CameraApplication.getUiThreadHandler().post(new ViewFinderImpl$ActionRunnable(this, userSettingKey));
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void setupFocusRectangles() {
        int i;
        int height;
        if (this.mCameraDevice == null || this.mCameraDevice.getPreviewSize() == null) {
            i = 0;
            height = 0;
        } else {
            Rect previewSize = this.mCameraDevice.getPreviewSize();
            Size sizeAccordingToLayoutOrientation = LayoutOrientationResolver.getInstance().getSizeAccordingToLayoutOrientation(new Size(previewSize.width(), previewSize.height()));
            int width = sizeAccordingToLayoutOrientation.getWidth();
            height = sizeAccordingToLayoutOrientation.getHeight();
            i = width;
        }
        this.mOnFocusRectangleTouchListener = new ViewFinderImpl$5(this);
        FocusRectanglesViewList focusRectanglesViewList = new FocusRectanglesViewList();
        if (isInflated()) {
            focusRectanglesViewList.rectanglesContainer = (RelativeLayout) this.mActivity.findViewById(2131296404);
            focusRectanglesViewList.faceViewList = (View[]) getPreInflatedView(LayoutAsyncInflateItems$CameraInflateItem.RECTANGLE_FACE).toArray(new View[0]);
            focusRectanglesViewList.trackedObjectView = (TaggedRectangle) getPreInflatedView(LayoutAsyncInflateItems$CameraInflateItem.RECTANGLE_FAST_OBJECT_TRACKING).get(0);
            focusRectanglesViewList.singleAfView = (RelativeLayout) getPreInflatedView(LayoutAsyncInflateItems$CameraInflateItem.RECTANGLE_FAST_SINGLE).get(0);
            focusRectanglesViewList.touchAfView = (RelativeLayout) getPreInflatedView(LayoutAsyncInflateItems$CameraInflateItem.RECTANGLE_FAST_TOUCH).get(0);
        }
        if (this.mFocusRectangles == null) {
            this.mFocusRectangles = new FocusRectangles(this.mActivity, new ViewFinderImpl$FocusActionListenerImpl(this, null), i, height, focusRectanglesViewList, this.mViewFinderCaptureArea, this.mOnFocusRectangleTouchListener, this.mScreenAspect);
        }
        if (this.mStateMachine == null) {
            return;
        }
        if (PlatformCapability.isFaceDetectionAvailable(getCapturingMode().getCameraId())) {
            if (isTouchCaptureEnabled()) {
                this.mFocusRectangles.enableFaceTouchCapture();
            } else {
                this.mFocusRectangles.disableFaceTouchCapture();
            }
        }
        applySmileFocusThreshold(true);
        this.mFocusRectangles.setVisibility(0);
    }

    private void setupCaptureArea(ViewFinder$HeadUpDisplaySetupState viewFinder$HeadUpDisplaySetupState) {
        if (this.mViewFinderCaptureArea == null) {
            this.mViewFinderCaptureArea = (CaptureArea) this.mActivity.findViewById(2131296696);
            updateCaptureAreaSize();
        }
        this.mViewFinderCaptureArea.setCaptureAreaStateListener(new ViewFinderImpl$ViewFinderStateListener(this, null));
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void updateCaptureAreaSize() {
        if (this.mViewFinderCaptureArea != null) {
            Rect rect = this.mEvf.getRect();
            int iWidth = rect.width();
            int iHeight = rect.height();
            RelativeLayout$LayoutParams relativeLayout$LayoutParams = (RelativeLayout$LayoutParams) this.mViewFinderCaptureArea.getLayoutParams();
            if (iWidth == iHeight) {
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
            relativeLayout$LayoutParams.width = iWidth;
            relativeLayout$LayoutParams.height = iHeight;
            this.mViewFinderCaptureArea.setLayoutParams(relativeLayout$LayoutParams);
            updatePreviewContainer(iWidth, iHeight);
            this.mHintText.updateHintTextContainer(relativeLayout$LayoutParams.width, relativeLayout$LayoutParams.height);
            getBaseLayout().repositionZoombar();
            PositionConverter.getInstance().setSurfaceSize(rect.width(), rect.height());
        }
    }

    private void setupDraggingEventHandler() {
        getBaseLayout().setOnViewFinderGestureDetector(new ViewFinderImpl$6(this, this.mActivity, TransitionAnimationController.getSwipeThreshold(this.mActivity), TransitionAnimationController.getSwitchSwipeThreshold(this.mActivity)));
    }

    private NavigatorContents getNextContent(NavigatorContents navigatorContents, AbstractDraggingEventHandler$Direction abstractDraggingEventHandler$Direction) {
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction[abstractDraggingEventHandler$Direction.ordinal()]) {
            case 1:
                return navigatorContents.next();
            case 2:
                return navigatorContents.previous();
            default:
                return navigatorContents;
        }
    }

    private void setupOnScreenCaptureButton(ViewFinder$HeadUpDisplaySetupState viewFinder$HeadUpDisplaySetupState) {
        changeScreenButtonImage(viewFinder$HeadUpDisplaySetupState, false);
        if (isHeadUpDisplayReady()) {
            if (this.mImageQualityControlButtonItem == null) {
                this.mImageQualityControlButtonItem = OnScreenButtonItemFactory.createMutableButton(new ViewFinderImpl$OnScreenImageQualityControlButtonListener(this));
                this.mImageQualityControlButtonItem.update().background(2131231528).commit();
            }
            if (this.mHighSensitivityFusionButtonItem == null) {
                this.mHighSensitivityFusionButtonItem = OnScreenButtonItemFactory.createMutableButton(new ViewFinderImpl$OnHighSensitivityFusionButtonStateListener(this, null));
                this.mHighSensitivityFusionButtonItem.update().background(2131231528).commit();
            }
            updateSecondaryShortcutOnScreenButtonResource();
        }
    }

    private void setupSelfTimerCountDownView() {
        if (this.mPhotoSelfTimerSetting == null) {
            return;
        }
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer[this.mPhotoSelfTimerSetting.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                createSelfTimerCountDownView(this.mPhotoSelfTimerSetting);
                return;
            case 5:
                removeSelfTimerCountDownView();
                return;
            default:
                throw new IllegalArgumentException("ViewFinderImpl:setupSelfTimerCountDownView [Irregular value] : " + this.mPhotoSelfTimerSetting);
        }
    }

    private void createSelfTimerCountDownView(SelfTimer selfTimer) {
        if (this.mSelfTimerCountDownViewNext == null) {
            this.mSelfTimerCountDownViewNext = (SelfTimerCountDownView) getActivity().getLayoutInflater().inflate(2131492995, (ViewGroup) null);
        }
        this.mSelfTimerCountDownViewNext.setSelfTimer(selfTimer);
    }

    private void removeSelfTimerCountDownView() {
        if (this.mSelfTimerCountDownView != null) {
            getBaseLayout().getLazyInflatedUiComponentContainerBack().removeView(this.mSelfTimerCountDownView);
            this.mSelfTimerCountDownView = null;
        }
    }

    private void cancelSelfTimerCountDownView() {
        if (this.mSelfTimerCountDownView != null) {
            this.mSelfTimerCountDownView.cancelSelfTimerCountDownAnimation();
            getBaseLayout().getLazyInflatedUiComponentContainerBack().removeView(this.mSelfTimerCountDownView);
        }
    }

    private void showSelfTimerCountDownView() {
        Size sizeAccordingToLayoutOrientation = LayoutOrientationResolver.getInstance().getSizeAccordingToLayoutOrientation(new Size(getBaseLayout().getPreview().getWidth(), getBaseLayout().getPreview().getHeight()));
        RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(sizeAccordingToLayoutOrientation.getWidth(), sizeAccordingToLayoutOrientation.getHeight());
        relativeLayout$LayoutParams.addRule(13);
        removeSelfTimerCountDownView();
        this.mSelfTimerCountDownView = this.mSelfTimerCountDownViewNext;
        this.mSelfTimerCountDownView.setLayoutParams(relativeLayout$LayoutParams);
        this.mSelfTimerCountDownView.setVisibility(0);
        getBaseLayout().getLazyInflatedUiComponentContainerBack().addView(this.mSelfTimerCountDownView);
        getBaseLayout().getLazyInflatedUiComponentContainerBack().bringChildToFront(this.mSelfTimerCountDownView);
        if (LayoutDependencyResolver.isTenInch(getActivity())) {
            FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) this.mSelfTimerCountDownView.getLayoutParams();
            frameLayout$LayoutParams.gravity = 17;
            this.mSelfTimerCountDownView.setLayoutParams(frameLayout$LayoutParams);
        }
        applySmileFocusThreshold(false);
    }

    private boolean isInSelfTimerCountDown() {
        return (getCapturingMode() == CapturingMode.FRONT_VIDEO || getCapturingMode() == CapturingMode.VIDEO || getCurrentLayoutPattern() != BaseLayoutPattern.SELFTIMER) ? false : true;
    }

    private void startSelfTimerCountDownAnimation() {
        if (this.mSelfTimerCountDownView != null) {
            this.mSelfTimerCountDownView.startSelfTimerCountDownAnimation(getCapturingMode() == CapturingMode.FRONT_PHOTO || getCapturingMode() == CapturingMode.SUPERIOR_FRONT);
        }
    }

    private void setupContentsView() {
        this.mStateMachine.sendStaticEvent(StateMachine$StaticEvent.EVENT_ON_PHOTO_STACK_INITIALIZED, getBaseLayout().getContentsViewController());
    }

    private void setupPrimaryShortcutIcons() {
        if (this.mPrimaryShortcutGroup == null) {
            this.mPrimaryShortcutGroup = getBaseLayout().getPrimaryShortcut();
            this.mPrimaryShortcutGroup.setViewFinderAccessor(new ViewFinderImpl$ViewFinderAccessorForShortcut(this));
        }
        if (isCameraSwitching()) {
            return;
        }
        updatePrimaryShortcutIcons();
    }

    private void setupOnScreenShortcut() {
        setMruAvailability(false);
        if (this.mActivity.isOneShot()) {
            getBaseLayout().getModeButtonShortcut().set(false);
            return;
        }
        getBaseLayout().getModeButtonShortcut().set(true);
        getBaseLayout().getModeButtonShortcut().setOnClickListener(new ViewFinderImpl$7(this));
        getBaseLayout().getMruButtonContainer().setOnModeSelectListener(this.mModeSelectListener);
        FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) getBaseLayout().getMruButtonContainer().getLayoutParams();
        frameLayout$LayoutParams.rightMargin = getBaseLayout().calculateCaptureButtonAreaHeight();
        getBaseLayout().getMruButtonContainer().setLayoutParams(frameLayout$LayoutParams);
    }

    private void updateFrontAngleSwitchButton() {
        this.mFrontAngleSwitchButton = getBaseLayout().getFrontAngleSwitchButton();
        if (this.mFrontAngleSwitchButton == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("updateFrontAngleSwitchButton mFrontAngleSwitchButton is NULL");
            }
        } else if (getCapturingMode().isFront()) {
            FrontAngle frontAngle = (FrontAngle) this.mStateMachine.getUserSetting().get(UserSettingKey.FRONT_ANGLE);
            if (CamLog.VERBOSE) {
                CamLog.d("updateFrontAngleSwitchButton value: " + frontAngle);
            }
            this.mFrontAngleSwitchButton.switchFrontAngle(frontAngle);
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void onSettingChanged(UserSettingValue userSettingValue) {
        updatePrimaryShortcutIcon(userSettingValue);
    }

    private void transitionModeOnNavigator(int i) {
        NavigatorContents navigatorContentsPrevious;
        NavigatorContents navigatorContentsValueOf = NavigatorContents.valueOf(getCapturingMode());
        int iIndexOf = NavigatorContents.indexOf(navigatorContentsValueOf);
        int length = (NavigatorContents.values().length - i) - 1;
        NavigatorContents navigatorContents = NavigatorContents.values()[length];
        if (CamLog.DEBUG) {
            CamLog.d("invoke current:" + navigatorContentsValueOf.name() + ", target:" + navigatorContents.name());
        }
        if (length > iIndexOf) {
            navigatorContentsPrevious = navigatorContentsValueOf.next();
        } else if (length >= iIndexOf) {
            return;
        } else {
            navigatorContentsPrevious = navigatorContentsValueOf.previous();
        }
        AnimationRequest animationRequest = new AnimationRequest(AnimationRequest$AnimationType.MODE_ICON, AnimationRequest$AnimationDegree.START, getCapturingMode(navigatorContentsValueOf, getCapturingMode()), getCapturingMode(navigatorContentsPrevious, getCapturingMode()));
        if (requestAnimation(animationRequest)) {
            this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_START_TRANSITION_OPERATION, animationRequest);
        }
    }

    private void updatePrimaryShortcutIcons() {
        if (this.mPrimaryShortcutGroup != null) {
            this.mPrimaryShortcutGroup.updatePrimaryShortcutIcons(getCapturingMode(), this.mStateMachine.getUserSetting(), this.mActivity.isOneShot());
        }
    }

    private void updatePrimaryShortcutIcon(UserSettingValue userSettingValue) {
        if (this.mPrimaryShortcutGroup != null) {
            this.mPrimaryShortcutGroup.updatePrimaryShortcutIcon(userSettingValue.getKey(), userSettingValue.getIconId());
        }
    }

    private void disablePrimaryShortcut() {
        if (this.mPrimaryShortcutGroup != null) {
            this.mPrimaryShortcutGroup.disable();
        }
    }

    private void updateScreenButtonImage(CapturingMode capturingMode) {
        ViewFinder$HeadUpDisplaySetupState viewFinder$HeadUpDisplaySetupState = ViewFinder$HeadUpDisplaySetupState.PHOTO_READY;
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
            case 1:
            case 2:
            case 5:
            case 6:
                viewFinder$HeadUpDisplaySetupState = ViewFinder$HeadUpDisplaySetupState.PHOTO_READY;
                break;
            case 3:
            case 4:
                viewFinder$HeadUpDisplaySetupState = ViewFinder$HeadUpDisplaySetupState.VIDEO_READY;
                break;
            case 7:
                switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[((SlowMotion) this.mStateMachine.getUserSetting().get(UserSettingKey.SLOW_MOTION)).ordinal()]) {
                    case 1:
                        viewFinder$HeadUpDisplaySetupState = ViewFinder$HeadUpDisplaySetupState.SUPER_SLOW_MOTION_STANDBY;
                        break;
                    case 2:
                        viewFinder$HeadUpDisplaySetupState = ViewFinder$HeadUpDisplaySetupState.SUPER_SLOW_SHOT_STANDBY;
                        break;
                    case 3:
                        viewFinder$HeadUpDisplaySetupState = ViewFinder$HeadUpDisplaySetupState.STANDARD_SLOW_MOTION_STANDBY;
                        break;
                }
                break;
        }
        changeScreenButtonImage(viewFinder$HeadUpDisplaySetupState, false);
    }

    private void onToggleCameraSwitch() {
        this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_ON_SWITCH_CAMERA, AnimationRequest$AnimationType.NONE);
    }

    private void setupAnimations() {
        getBaseLayout().getRootView().findViewById(2131296370).getGlobalVisibleRect(new Rect());
    }

    private boolean isEvfRotateRequired() {
        if (this.mEvf == null) {
            return false;
        }
        Rect rect = this.mEvf.getRect();
        if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
            if (rect.width() > rect.height()) {
                return true;
            }
        } else if (rect.width() < rect.height()) {
            return true;
        }
        return false;
    }

    private void resumeView(FastCapture fastCapture, boolean z) {
        CapturingMode launchCapturingMode = this.mStateMachine.getLaunchCapturingMode();
        if (isHeadUpDisplayReady()) {
            if (this.mInstantViewer != null && this.mInstantViewer.isOpened()) {
                this.mInstantViewer.hide();
            }
            this.mCanFocusRectanglesBeUpdated = true;
            this.mEvf.onResume();
            resume(launchCapturingMode, NavigatorContents.valueOf(launchCapturingMode));
        }
        if (this.mCaptureFeedback != null) {
            this.mCaptureFeedback.onResume();
        }
        if (fastCapture != FastCapture.LAUNCH_AND_CAPTURE && this.mCapturingModeWhenLastSetupHeadDisplay == launchCapturingMode && !z) {
            ViewFinderImpl$ScreenButtonHandler.access$4600(this.mScreenButtonHandler);
        }
        if (this.mActivity.getLaunchCondition().getLaunchTrigger() == LaunchCondition$LaunchTrigger.LIFT_TRIGGER) {
            showMessageDialog(DialogId.PREDICTIVE_LAUNCH_DESCRIPTION, new Object[0]);
            getBaseLayout().setupPredictiveLaunchCoverView(new ViewFinderImpl$PredictiveLaunchCoverTouchListenerImpl(this, null), ((PredictiveLaunch) this.mStateMachine.getUserSetting().get(UserSettingKey.PREDICTIVE_LAUNCH)).doCapture() ? PredictiveLaunchCoverView$PredictiveLaunchCoverType.TOUCH_TO_LAUNCH_AND_CAPTURE : PredictiveLaunchCoverView$PredictiveLaunchCoverType.TOUCH_TO_LAUNCH);
            changeLayoutTo(BaseLayoutPattern.CLEAR);
            setApplicationNavigatorEnabled(false);
            updateGridLineView();
            getBaseLayout().setViewFinderGestureDetectorEnabled(false, false);
            if (this.mLoopsManager == null) {
                this.mLoopsManager = new XperiaXLoopsManager(this.mActivity);
            }
            this.mLoopsManager.connect();
        }
    }

    private void pauseView() {
        pause();
        this.mEvf.onPause();
        if (this.mBaseLayout != null && this.mBaseLayout.getGeoTagIndicator() != null) {
            this.mBaseLayout.getGeoTagIndicator().release();
        }
        if (this.mSettingDialogStack != null) {
            this.mSettingDialogStack.closeAllSettingDialogs();
        }
        if (this.mCaptureFeedback != null) {
            this.mCaptureFeedback.onPause();
        }
        if (this.mViewFinderCaptureArea != null) {
            this.mViewFinderCaptureArea.setCaptureAreaStateListener(null);
        }
        clearPreInflatedViews();
        if (this.mPreviewCover != null) {
            this.mPreviewCover.setVisibility(4);
        }
        this.mIsSetupHeadupDisplayInvoked = false;
        if (this.mLoopsManager != null && this.mLoopsManager.isConnected()) {
            this.mLoopsManager.disconnect();
        }
        this.mLoopsManager = null;
    }

    private void release() {
        this.mBaseLayout.release();
        this.mWindowDisplayFlashScreen = null;
        this.mActivity.removeOrienationListener(this);
        if (this.mActivity.getGeoTagManager() != null) {
            this.mActivity.getGeoTagManager().setLocationAcquiredListener(null);
        }
        this.mActivity.getStorage().removeStorageStateListener(this.mStorageStateListener);
        if (CamLog.VERBOSE) {
            CamLog.d("release() is called.");
        }
    }

    private void getDownHeadUpDisplay() {
        if (CamLog.VERBOSE) {
            CamLog.d("getDownHeadUpDisplay() is called.");
        }
        if (this.mEvf != null) {
            this.mEvf.setLifeCycleCallback(null);
            this.mEvf.onDestroy();
            this.mEvf = null;
        }
        hideSurfaceBlinderView();
        releaseSurfaceBlinderView();
        if (this.mFocusRectangles != null) {
            this.mFocusRectangles.release();
            this.mFocusRectangles = null;
        }
        if (this.mViewFinderCaptureArea != null) {
            this.mViewFinderCaptureArea.setCaptureAreaStateListener(null);
            this.mViewFinderCaptureArea.release();
            this.mViewFinderCaptureArea = null;
        }
        if (this.mCaptureFeedback != null) {
            this.mCaptureFeedback.release();
            this.mCaptureFeedback = null;
        }
        this.mInstantViewer = null;
    }

    private void onViewFinderStateChanged(StateMachine$CaptureState stateMachine$CaptureState, Object... objArr) {
        boolean zBooleanValue = false;
        if (CamLog.VERBOSE) {
            CamLog.d("onViewFinderStateChanged():[IN][currentState=" + stateMachine$CaptureState + "]");
        }
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[stateMachine$CaptureState.ordinal()]) {
            case 3:
                this.mTouchEventDispatcher.start();
                this.mIsThermalWarningDialogShown = false;
                if (this.mActivity.awaitViewFinderReady()) {
                    resumeView((FastCapture) objArr[0], ((Boolean) objArr[1]).booleanValue());
                    break;
                }
                break;
            case 4:
                this.mCurrentDisplayingUiComponent = null;
                this.mBurstShootingRejectedReason = ViewFinder$BurstRejectedReason.NONE;
                changeToPhotoReadyView(false);
                if (objArr == null || objArr.length == 0) {
                    requestToDimSystemUi();
                } else if (objArr[0] != ViewFinder$UiComponentKind.ZOOM_BAR) {
                    requestToDimSystemUi();
                }
                break;
            case 5:
                this.mCurrentDisplayingUiComponent = null;
                if (getCapturingMode() == CapturingMode.SLOW_MOTION && !this.mActivity.getLaunchCondition().getLaunchCameraMode().isSlowMotion()) {
                    SlowMotion slowMotion = (SlowMotion) this.mStateMachine.getUserSetting().get(UserSettingKey.SLOW_MOTION);
                    postSlowMotionHintText();
                    if (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[slowMotion.ordinal()] == 1 && this.mHintText != null) {
                        this.mHintText.cancel(HintTextSuperSlowMotionVideoRecording.createTag(true));
                        this.mHintText.cancel(HintTextSuperSlowMotionVideoRecording.createTag(false));
                    }
                }
                if (isHeadUpDisplayReady()) {
                    changeToVideoReadyView();
                }
                if (objArr == null || objArr.length == 0) {
                    requestToDimSystemUi();
                } else if (objArr[0] != ViewFinder$UiComponentKind.ZOOM_BAR) {
                    requestToDimSystemUi();
                }
                break;
            case 6:
                changeToSelftimerView(((Boolean) objArr[0]).booleanValue());
                break;
            case 7:
                if (objArr != null && objArr.length != 0) {
                    this.mCurrentDisplayingUiComponent = (ViewFinder$UiComponentKind) objArr[0];
                    changeToDialogView(this.mCurrentDisplayingUiComponent);
                    break;
                }
                break;
            case 8:
                changeToPhotoFocusSearchView();
                break;
            case 9:
                changeToPhotoFocusDoneView((Boolean) objArr[0]);
                break;
            case 10:
                changeToPhotoCaptureWaitForAfDoneView();
                break;
            case 11:
                changeToBurstCaptureWaitForAfDoneView();
                break;
            case 12:
                changeToPhotoCaptureView();
                clearTouchedScreenButtonGroup();
                break;
            case 13:
                changeToBurstCaptureView();
                break;
            case 14:
                if (getCapturingMode() == CapturingMode.SLOW_MOTION && this.mStateMachine.getUserSetting().get(UserSettingKey.SLOW_MOTION) == SlowMotion.STANDARD_SLOW_MOTION) {
                    changeToStandardSlowMotionRecordingView();
                } else {
                    changeToVideoRecordingView();
                }
                break;
            case 17:
                attachSideAutoReview();
                break;
            case 18:
                showBlank();
                hideAndCancelAllView();
                break;
            case 19:
                this.mIsRequestingStartActivity = false;
                this.mHandler.removeCallbacks(this.mAfterSwitchAnimationTask);
                this.mTouchEventDispatcher.start();
                hideAndCancelAllView();
                break;
            case 20:
                if (isHeadUpDisplayReady()) {
                    this.mSideTouchUi.destroyIcon();
                }
                if (this.mFocusRectangles != null) {
                    if (isTouchFocus()) {
                        disableSemiAutoControl();
                    }
                    hideAutoReview();
                    this.mFocusRectangles.clearAllFocus();
                    if (getCapturingMode() == CapturingMode.FRONT_VIDEO || getCapturingMode() == CapturingMode.VIDEO || getCapturingMode() == CapturingMode.SLOW_MOTION) {
                        changeToVideoReadyView();
                    } else {
                        changeToPhotoReadyView(false);
                    }
                }
                requestToDimSystemUi();
                break;
            case 21:
                release();
                getDownHeadUpDisplay();
                break;
            case 22:
                changeToVideoRecordingPauseView();
                break;
            case 23:
                changeToModeTransitionView();
                break;
            case 24:
                if (objArr != null && objArr.length != 0) {
                    zBooleanValue = ((Boolean) objArr[0]).booleanValue();
                }
                changeToReadyForRecordView(zBooleanValue);
                break;
            case 25:
                changeToModeTransitionView();
                break;
            case 26:
                if (this.mHintText != null) {
                    this.mHintText.clearAll();
                }
                break;
            case 27:
                changeToSuperSlowMotionVideoHighFrameRateRecordingView();
                break;
            case 28:
                changeToSuperSlowMotionVideoLowFrameRateRecordingView();
                break;
            case 29:
                changeToWaitForHighFrameRateRecordingDoneView();
                break;
        }
    }

    public void startReturnModeAnimation() {
        AnimationRequest animationRequest = new AnimationRequest(AnimationRequest$AnimationType.MODE_SELECTOR, AnimationRequest$AnimationDegree.START, getCapturingMode(), CapturingMode.SCENE_RECOGNITION);
        if (requestAnimation(animationRequest)) {
            this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_START_TRANSITION_OPERATION, animationRequest);
        }
    }

    private boolean requestAnimation(AnimationRequest animationRequest) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke source:" + animationRequest.mType + ", type:" + animationRequest.mDegree + ", from:" + animationRequest.mFrom.name() + ", target:" + animationRequest.mTarget.name());
        }
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationType[animationRequest.mType.ordinal()]) {
            case 1:
                return requestModeSwipeAnimation(animationRequest);
            case 2:
                return requestModeIconAnimation(animationRequest);
            case 3:
                return requestModeSelectorAnimation(animationRequest);
            case 4:
                return requestMostRecentlyUsedAnimation(animationRequest);
            case 5:
                return requestSwitchAnimation(animationRequest);
            default:
                return false;
        }
    }

    private boolean requestModeSwipeAnimation(AnimationRequest animationRequest) {
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree[animationRequest.mDegree.ordinal()]) {
            case 1:
                boolean zRequestAnimation = this.mAnimationController.requestAnimation(animationRequest);
                if (zRequestAnimation) {
                    hideViews();
                }
                return zRequestAnimation;
            case 2:
                return this.mAnimationController.requestAnimation(animationRequest, new ViewFinderImpl$9(this, animationRequest));
            case 3:
                return this.mAnimationController.requestAnimation(animationRequest, new ViewFinderImpl$10(this, animationRequest));
            case 4:
                return this.mAnimationController.requestAnimation(animationRequest);
            default:
                return false;
        }
    }

    private boolean requestModeIconAnimation(AnimationRequest animationRequest) {
        int i = ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree[animationRequest.mDegree.ordinal()];
        if (i != 4) {
            switch (i) {
                case 1:
                    if (this.mAnimationController.requestAnimation(animationRequest)) {
                        this.mActivity.runOnUiThread(new ViewFinderImpl$11(this, new AnimationRequest(AnimationRequest$AnimationType.MODE_ICON, AnimationRequest$AnimationDegree.EXEC, animationRequest.mFrom, animationRequest.mTarget)));
                    }
                    break;
                case 2:
                    if (this.mAnimationController.requestAnimation(animationRequest, new ViewFinderImpl$12(this, animationRequest))) {
                        LocalResearchUtil.getInstance().setModeChangeMethod(LocalResearchUtil$ModeChangeMethod.ICON_TOUCH);
                        LocalResearchUtil.getInstance().sendEventInternalModeChange(animationRequest.mFrom, animationRequest.mTarget);
                    }
                    break;
            }
            return true;
        }
        return this.mAnimationController.requestAnimation(animationRequest);
    }

    private boolean requestModeSelectorAnimation(AnimationRequest animationRequest) {
        int i = ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree[animationRequest.mDegree.ordinal()];
        if (i != 4) {
            switch (i) {
                case 1:
                    if (this.mAnimationController.requestAnimation(animationRequest)) {
                        this.mHandler.post(new ViewFinderImpl$13(this, new AnimationRequest(AnimationRequest$AnimationType.MODE_SELECTOR, AnimationRequest$AnimationDegree.EXEC, animationRequest.mFrom, animationRequest.mTarget)));
                    }
                    break;
                case 2:
                    if (this.mAnimationController.requestAnimation(animationRequest, new ViewFinderImpl$14(this, animationRequest))) {
                        LocalResearchUtil.getInstance().setModeChangeMethod(LocalResearchUtil$ModeChangeMethod.MODE_SELECTOR);
                        LocalResearchUtil.getInstance().setLaunchBy(LaunchCondition$LaunchTrigger.MODE_SELECTOR);
                        LocalResearchUtil.getInstance().sendEventInternalModeChange(animationRequest.mFrom, animationRequest.mTarget);
                    }
                    break;
            }
            return true;
        }
        getBaseLayout().getModeButtonShortcut().update(ModeSelectorInternalMode.exists(animationRequest.mTarget));
        getBaseLayout().getMruButtonContainer().setAvailability(!ModeSelectorInternalMode.exists(animationRequest.mTarget));
        return this.mAnimationController.requestAnimation(animationRequest);
    }

    private boolean requestMostRecentlyUsedAnimation(AnimationRequest animationRequest) {
        int i = ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree[animationRequest.mDegree.ordinal()];
        if (i != 4) {
            switch (i) {
                case 1:
                    if (this.mAnimationController.requestAnimation(animationRequest)) {
                        this.mHandler.post(new ViewFinderImpl$15(this, new AnimationRequest(AnimationRequest$AnimationType.MRU_SHORTCUT, AnimationRequest$AnimationDegree.EXEC, animationRequest.mFrom, animationRequest.mTarget)));
                    }
                    break;
                case 2:
                    if (this.mAnimationController.requestAnimation(animationRequest, new ViewFinderImpl$16(this, animationRequest))) {
                        LocalResearchUtil.getInstance().setModeChangeMethod(LocalResearchUtil$ModeChangeMethod.MRU_SHORTCUT);
                        LocalResearchUtil.getInstance().setLaunchBy(LaunchCondition$LaunchTrigger.MRU_SHORTCUT);
                        LocalResearchUtil.getInstance().sendEventInternalModeChange(animationRequest.mFrom, animationRequest.mTarget);
                    }
                    break;
            }
            return true;
        }
        getBaseLayout().getModeButtonShortcut().update(ModeSelectorInternalMode.exists(animationRequest.mTarget));
        getBaseLayout().getMruButtonContainer().setAvailability(!ModeSelectorInternalMode.exists(animationRequest.mTarget));
        return this.mAnimationController.requestAnimation(animationRequest);
    }

    private boolean requestSwitchAnimation(AnimationRequest animationRequest) {
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$animation$AnimationRequest$AnimationDegree[animationRequest.mDegree.ordinal()]) {
            case 1:
                return startDraggingSwitchStartedAnimation();
            case 2:
                return this.mAnimationController.requestAnimation(animationRequest, new ViewFinderImpl$18(this, animationRequest));
            case 3:
                return this.mAnimationController.requestAnimation(animationRequest, new ViewFinderImpl$17(this, animationRequest));
            case 4:
                return this.mAnimationController.requestAnimation(animationRequest);
            default:
                return false;
        }
    }

    private void hideAndCancelAllView() {
        if (isInSelfTimerCountDown()) {
            cancelSelfTimerCountDownView();
            changeToPhotoReadyView(false);
        }
        hideAutoReview();
        hideSurfaceBlinderView();
        this.mEvf.hide();
        pauseView();
        changeToPauseView();
        getBaseLayout().releasePredictiveLaunchCover();
        this.mToastContent.closeMessage();
        if (this.mHintText != null) {
            this.mHintText.hide();
            this.mHintText.clearAll();
        }
        this.mHintBurstImageSavedToInternalStorageAlreadyDisplayed = false;
        this.mHintCannotBurstUsingFrontCameraAlreadyDisplayed = false;
        this.mHintBurstChangeCameraKeySettingAlreadyDisplayed = false;
        this.mHintCannotBurstUsingFusionModeAlreadyDisplayed = false;
    }

    private void changeLayoutTo(LayoutPattern layoutPattern) {
        changeLayoutTo(layoutPattern, false);
    }

    private boolean needToShowGeoTagIndicator() {
        return !this.mActivity.isOneShot() || PermissionsUtil.areCallerGeoPermissionsGranted(this.mActivity);
    }

    private void changeLayoutTo(LayoutPattern layoutPattern, boolean z) {
        if (isHeadUpDisplayReady()) {
            if (CamLog.VERBOSE) {
                CamLog.d("changeLayoutTo: " + layoutPattern);
            }
            if (!z) {
                this.mLayoutPatternApplier.apply(layoutPattern);
            } else {
                this.mLayoutPatternApplier.apply(BaseLayoutPattern.CLEAR);
            }
            this.mLayoutPattern = layoutPattern;
            if (isPreviewLayout(layoutPattern)) {
                if (needToShowGeoTagIndicator()) {
                    this.mBaseLayout.getGeoTagIndicator().set(GeotagManager.isGeoTagEnabled(this.mActivity.getStoredSettings().getUserSettings(), this.mActivity));
                }
                if (this.mActivity.getGeoTagManager() != null) {
                    this.mBaseLayout.getGeoTagIndicator().isAcquired(isAcquired());
                }
            }
            updateAllOverlayControlVisibility();
            updateVisibilityForSpecificDisplaySize();
            if (layoutPattern.equals(BaseLayoutPattern.SELFTIMER)) {
                clearTouchedScreenButtonGroup();
            }
        }
        if (this.mActivity.isOneShot()) {
            getBaseLayout().hideContentsViewController();
        }
    }

    private void changeToPhotoReadyView(boolean z) {
        changeLayoutTo(selectLayoutPatternForPreview());
        if (isHeadUpDisplayReady() && !predictiveLaunchCoverExists()) {
            CapturingMode capturingMode = getCapturingMode();
            if (this.mStateMachine.getCurrentCaptureState() == StateMachine$CaptureState.STATE_WARNING) {
                this.mHintText.clearAll();
            }
            if (!isOverlayControlEnabled()) {
                this.mHintText.showAll();
            } else {
                this.mHintText.show(HintTextContent$HintPriority.HIGH);
            }
            if (this.mInstantViewer != null && this.mInstantViewer.isOpened()) {
                this.mInstantViewer.hide();
            }
            if (z) {
                this.mFocusRectangles.clearAllFocusExceptFace();
            } else {
                this.mFocusRectangles.onUiComponentRemoved();
            }
            boolean z2 = true;
            applySmileFocusThreshold(true);
            this.mFocusRectangles.clearFaceDetection();
            this.mFocusRectangles.reset();
            showPhotoSmileCaptureIndicator();
            hideVideoSmileCaptureIndicator();
            setFrontAngleSwitchButtonVisibility(isFront());
            setLeftIconsVisibility(true);
            setOrientation(getOrientation());
            if (capturingMode == CapturingMode.NORMAL || capturingMode == CapturingMode.FRONT_PHOTO) {
                getBaseLayout().getSceneIndicator().set(false);
                getBaseLayout().getConditionIndicator().set(false);
                setApplicationNavigatorEnabled(false);
            } else {
                updateVisibilityForSpecificDisplaySize();
            }
            getBaseLayout().setViewFinderGestureDetectorEnabled(true, true);
            changeScreenButtonImage(ViewFinder$HeadUpDisplaySetupState.PHOTO_READY, false);
            CapturingMode capturingMode2 = getCapturingMode();
            if (!ModeSelectorInternalMode.exists(capturingMode2) && !capturingMode2.equals(CapturingMode.FRONT_PHOTO)) {
                z2 = false;
            }
            getBaseLayout().getModeButtonShortcut().update(z2);
            this.mSideTouchUi.detachTo(SideTouchUi$Type.ZOOM_BAR);
            this.mSideTouchUi.destroyTo(SideTouchUi$Type.SELF_TIMER_COUNTDOWN_CANCEL);
            if (this.mIsNeedDisplayToastChangeInternalStoarge) {
                this.mIsNeedDisplayToastChangeInternalStoarge = false;
                showToastMessage(ToastContent$ToastID.CHANGE_DESTINATION_TO_SAVE);
            }
        }
    }

    private void changeToSelftimerView(boolean z) {
        changeLayoutTo(BaseLayoutPattern.SELFTIMER);
        if (isHeadUpDisplayReady()) {
            if (this.mSideTouchUi.containsIn(SideTouchUi$Type.CAPTURE_COUNTDOWN, SideTouchUi$Type.VIDEO_COUNTDOWN)) {
                this.mSideTouchUi.showIcon();
                return;
            }
            changeScreenButtonImage(ViewFinder$HeadUpDisplaySetupState.PHOTO_READY, true);
            this.mSettingDialogStack.closeAllSettingDialogs();
            setLeftIconsVisibility(false);
            setFrontAngleSwitchButtonVisibility(false);
            if (z) {
                showSelfTimerCountDownView();
                startSelfTimerCountDownAnimation();
            }
            if (this.mSideTouchUi.containsIn(SideTouchUi$Type.SELF_TIMER_COUNTDOWN_CANCEL)) {
                this.mSideTouchUi.showIcon();
                ViewFinderImpl$ScreenButtonHandler.access$5300(this.mScreenButtonHandler);
            } else {
                this.mScreenButtonHandler.setMain(OnScreenButtonItemFactory$ButtonType.CANCEL_SELFTIMER_LARGE, getOrientation(), true);
            }
            hidePhotoSmileCaptureIndicator();
            setOrientation(getOrientation());
            hideApplicationNavigator();
            hideAutoReview();
            if (!isTouchCaptureEnabled()) {
                this.mFocusRectangles.setLockedBySelfTimer(true);
            }
            if (this.mHintText != null) {
                this.mHintText.hide();
            }
            getBaseLayout().setViewFinderGestureDetectorEnabled(false, false);
        }
    }

    private void showPhotoSmileCaptureIndicator() {
        getBaseLayout().getPhotoSmileCaptureIndicator().show();
    }

    private boolean isObjectTrackingEnabled() {
        return this.mStateMachine.getUserSetting().get(UserSettingKey.OBJECT_TRACKING) == ObjectTracking.ON;
    }

    private boolean isTouchCaptureEnabled() {
        TouchCapture touchCapture;
        if (this.mTouchCapture != null) {
            touchCapture = this.mTouchCapture;
        } else {
            touchCapture = (TouchCapture) this.mStateMachine.getUserSetting().get(getCapturingMode(), UserSettingKey.TOUCH_CAPTURE);
        }
        if (touchCapture == null) {
            return false;
        }
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture[touchCapture.ordinal()]) {
            case 1:
                return true;
            case 2:
                if (isFront()) {
                    return true;
                }
            default:
                return false;
        }
    }

    private boolean isSmileShutterEnabled() {
        return ((SmileCapture) this.mStateMachine.getUserSetting().get(UserSettingKey.SMILE_CAPTURE)).isSmileCaptureOn();
    }

    private void hidePhotoSmileCaptureIndicator() {
        getBaseLayout().getPhotoSmileCaptureIndicator().hide();
    }

    private void showVideoSmileCaptureIndicator() {
        getBaseLayout().getVideoSmileCaptureIndicator().show();
    }

    private void hideVideoSmileCaptureIndicator() {
        getBaseLayout().getVideoSmileCaptureIndicator().hide();
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public int getSelectedFaceSmileScore() {
        if (this.mFocusRectangles == null) {
            return 0;
        }
        return this.mFocusRectangles.getSelectedFaceSmileScore();
    }

    private void changeToVideoReadyView() {
        changeLayoutTo(selectLayoutPatternForPreview());
        if (isHeadUpDisplayReady()) {
            CapturingMode capturingMode = getCapturingMode();
            if (this.mStateMachine.getCurrentCaptureState() == StateMachine$CaptureState.STATE_WARNING) {
                this.mHintText.clearAll();
            }
            if (!isOverlayControlEnabled()) {
                this.mHintText.showAll();
            } else {
                this.mHintText.show(HintTextContent$HintPriority.HIGH);
            }
            getBaseLayout().getSceneIndicator().set(false);
            getBaseLayout().getConditionIndicator().set(false);
            updateVideoHdrCondition(capturingMode, (VideoHdr) this.mStateMachine.getUserSetting().get(capturingMode, UserSettingKey.VIDEO_HDR), false);
            if (this.mInstantViewer != null && this.mInstantViewer.isOpened()) {
                this.mInstantViewer.hide();
            }
            if (capturingMode != CapturingMode.SLOW_MOTION) {
                changeScreenButtonImage(ViewFinder$HeadUpDisplaySetupState.VIDEO_READY, false);
            } else {
                switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[((SlowMotion) this.mStateMachine.getUserSetting().get(UserSettingKey.SLOW_MOTION)).ordinal()]) {
                    case 1:
                        changeScreenButtonImage(ViewFinder$HeadUpDisplaySetupState.SUPER_SLOW_MOTION_STANDBY, false);
                        break;
                    case 2:
                        changeScreenButtonImage(ViewFinder$HeadUpDisplaySetupState.SUPER_SLOW_SHOT_STANDBY, false);
                        break;
                    case 3:
                        changeScreenButtonImage(ViewFinder$HeadUpDisplaySetupState.STANDARD_SLOW_MOTION_STANDBY, false);
                        break;
                }
                this.mFocusRectangles.clearFaceDetection();
            }
            this.mFocusRectangles.clearExceptTouchFocus();
            this.mFocusRectangles.stopRecording();
            this.mFocusRectangles.setEnableFaceFocusTouch(true);
            applySmileFocusThreshold(true);
            hidePhotoSmileCaptureIndicator();
            hideVideoSmileCaptureIndicator();
            if (capturingMode == CapturingMode.SLOW_MOTION) {
                setApplicationNavigatorEnabled(false);
            } else {
                updateVisibilityForSpecificDisplaySize();
            }
            hideVideoSmileCaptureIndicator();
            setFrontAngleSwitchButtonVisibility(isFront());
            setLeftIconsVisibility(true);
            getBaseLayout().setViewFinderGestureDetectorEnabled(true, true);
            CapturingMode capturingMode2 = getCapturingMode();
            getBaseLayout().getModeButtonShortcut().update(ModeSelectorInternalMode.exists(capturingMode2) || capturingMode2.equals(CapturingMode.FRONT_PHOTO));
            if (!this.mSideTouchUi.detachTo(SideTouchUi$Type.ZOOM_BAR) && !this.mSideTouchUi.containsIn(SideTouchUi$Type.AUTO_REVIEW)) {
                this.mSideTouchUi.destroyIcon();
            }
            this.mRecordingTimeProxy.bindReceiver(getBaseLayout().getRecordingIndicator());
            this.mRecordingTimeProxy.reset();
        }
    }

    private void changeToVideoRecordingPauseView() {
        if (this.mLayoutPattern == BaseLayoutPattern.PAUSE_RECORDING) {
            return;
        }
        changeLayoutTo(BaseLayoutPattern.PAUSE_RECORDING);
        if (isHeadUpDisplayReady()) {
            applySmileFocusThreshold(true);
            changeScreenButtonImage(ViewFinder$HeadUpDisplaySetupState.VIDEO_PAUSING, false);
            if (getBaseLayout().getRecordingIndicator() != null) {
                getBaseLayout().getRecordingIndicator().setIndicator(false);
            }
            showVideoSmileCaptureIndicator();
            setFrontAngleSwitchButtonVisibility(false);
            getBaseLayout().setViewFinderGestureDetectorEnabled(false, false);
            setOrientation(getOrientation());
            if (getBaseLayout().getContentsViewController().isLoadingInProvisionalContent()) {
                getBaseLayout().getContentsViewController().show();
            }
            if (this.mHintText != null) {
                this.mHintText.showAll();
            }
            if (this.mSideTouchUi.containsAll(SideTouchUi$Type.RECORDING_PAUSE, SideTouchUi$Type.RECORDING_HDR_PAUSE, SideTouchUi$Type.COVERING)) {
                changeLayoutTo(BaseLayoutPattern.ZOOMING_IN_PAUSE_RECORDING);
                getBaseLayout().getZoomBar().hideDelayed();
                return;
            }
            if (this.mSideTouchUi.detachTo(SideTouchUi$Type.ZOOM_BAR)) {
                if (this.mSideTouchUi.containsIn(SideTouchUi$Type.RECORDING_PAUSE, SideTouchUi$Type.RECORDING_HDR_PAUSE)) {
                    changeLayoutTo(BaseLayoutPattern.PAUSE_RECORDING, true);
                }
            } else {
                if (!this.mSideTouchUi.containsIn(SideTouchUi$Type.RECORDING, SideTouchUi$Type.RECORDING_HDR)) {
                    if (this.mSideTouchUi.containsIn(SideTouchUi$Type.RECORDING_PAUSE, SideTouchUi$Type.RECORDING_HDR_PAUSE)) {
                        changeLayoutTo(BaseLayoutPattern.PAUSE_RECORDING, true);
                        return;
                    }
                    return;
                }
                this.mSideTouchUi.setUiOrientation(this.mRecordingOrientation);
                if (this.mStateMachine.getUserSetting().get(UserSettingKey.VIDEO_HDR) == VideoHdr.HDR_ON) {
                    this.mSideTouchUi.attachIcon(SideTouchUi$Type.RECORDING_HDR_PAUSE, null);
                } else {
                    this.mSideTouchUi.attachIcon(SideTouchUi$Type.RECORDING_PAUSE, null);
                }
                this.mSideTouchUi.setUiOrientation(this.mOrientation);
                this.mSideTouchUi.showIcon();
                changeLayoutTo(BaseLayoutPattern.PAUSE_RECORDING, true);
            }
        }
    }

    private void changeToPauseView() {
        changeLayoutTo(BaseLayoutPattern.CLEAR);
        hideApplicationNavigator();
        if (isHeadUpDisplayReady()) {
            if (this.mFocusRectangles != null) {
                this.mFocusRectangles.clearAllFocus();
            }
            if (this.mIsModeChanging) {
                this.mIsModeChanging = false;
            } else {
                getBaseLayout().getContentsViewController().remove();
            }
            hideAutoReview();
            setFrontAngleSwitchButtonVisibility(false);
            getBaseLayout().setViewFinderGestureDetectorEnabled(false, false);
            this.mSideTouchUi.destroyIcon();
        }
    }

    private void changeToZoomingView() {
        changeLayoutTo(BaseLayoutPattern.ZOOMING);
        if (isHeadUpDisplayReady()) {
            applySmileFocusThreshold(false);
            setFrontAngleSwitchButtonVisibility(false);
            setLeftIconsVisibility(false);
            hideAutoReview();
            hideApplicationNavigator();
            if (this.mHintText != null) {
                this.mHintText.hide();
            }
            getBaseLayout().setViewFinderGestureDetectorEnabled(false, false);
            this.mFocusRectangles.setEnableFaceFocusTouch(false);
            this.mSideTouchUi.destroyIcon();
        }
    }

    private void changeToPhotoFocusView() {
        if (isHeadUpDisplayReady()) {
            setFrontAngleSwitchButtonVisibility(false);
            setLeftIconsVisibility(false);
            hideApplicationNavigator();
            hideAutoReview();
            if (this.mHintText != null) {
                this.mHintText.hide();
            }
            getBaseLayout().setViewFinderGestureDetectorEnabled(false, false);
        }
    }

    private void changeToPhotoFocusSearchView() {
        changeLayoutTo(BaseLayoutPattern.FOCUS_SEARCHING);
        if (isHeadUpDisplayReady()) {
            changeToPhotoFocusView();
            if (PlatformCapability.isFocusSupported(getCapturingMode().getCameraId())) {
                if (this.mStateMachine.getUserSetting().get(UserSettingKey.FOCUS_RANGE) == FocusRange.AF) {
                    this.mFocusRectangles.onAutoFocusStarted();
                } else if (isTouchFocus()) {
                    this.mFocusRectangles.onUiComponentOverlaid();
                }
            }
            setFrontAngleSwitchButtonVisibility(false);
            this.mSideTouchUi.detachTo(SideTouchUi$Type.SELF_TIMER_COUNTDOWN_CANCEL);
        }
    }

    private void changeToPhotoFocusDoneView(Boolean bool) {
        changeLayoutTo(BaseLayoutPattern.FOCUS_DONE);
        if (isHeadUpDisplayReady()) {
            changeToPhotoFocusView();
            if (PlatformCapability.isFocusSupported(getCapturingMode().getCameraId()) && this.mStateMachine.getUserSetting().get(UserSettingKey.FOCUS_RANGE) == FocusRange.AF) {
                this.mFocusRectangles.onAutoFocusDone(bool.booleanValue());
            }
            setFrontAngleSwitchButtonVisibility(false);
        }
    }

    private void changeToPhotoCaptureWaitForAfDoneView() {
        changeLayoutTo(BaseLayoutPattern.CAPTURE);
        if (isHeadUpDisplayReady()) {
            changeToPhotoFocusView();
            if (PlatformCapability.isFocusSupported(getCapturingMode().getCameraId()) && this.mStateMachine.getUserSetting().get(UserSettingKey.FOCUS_RANGE) == FocusRange.AF) {
                this.mFocusRectangles.onAutoFocusStarted();
            }
            setFrontAngleSwitchButtonVisibility(false);
            getBaseLayout().setViewFinderGestureDetectorEnabled(false, false);
            if (this.mSideTouchUi.detachTo(SideTouchUi$Type.CAPTURE_COUNTDOWN) || this.mSideTouchUi.detachTo(SideTouchUi$Type.SELF_TIMER_COUNTDOWN_CANCEL)) {
                return;
            }
            this.mSideTouchUi.destroyIcon();
        }
    }

    private void changeToBurstCaptureWaitForAfDoneView() {
        if (this.mLayoutPattern != BaseLayoutPattern.FOCUS_SEARCHING) {
            changeToPhotoFocusView();
        }
        changeToPhotoCaptureWaitForAfDoneView();
    }

    private void changeToPhotoCaptureView() {
        changeLayoutTo(BaseLayoutPattern.CAPTURE);
        if (isHeadUpDisplayReady()) {
            setFrontAngleSwitchButtonVisibility(false);
            getBaseLayout().setViewFinderGestureDetectorEnabled(false, false);
        }
    }

    private void changeToBurstCaptureView() {
        changeLayoutTo(BaseLayoutPattern.CAPTURE);
        if (isHeadUpDisplayReady()) {
            hideApplicationNavigator();
            getBaseLayout().setViewFinderGestureDetectorEnabled(false, false);
        }
    }

    private void changeToVideoRecordingView() {
        if (this.mLayoutPattern == BaseLayoutPattern.RECORDING) {
            return;
        }
        changeLayoutTo(BaseLayoutPattern.RECORDING);
        if (isHeadUpDisplayReady()) {
            getBaseLayout().getGeoTagIndicator().hide();
            if (getCapturingMode() != CapturingMode.SLOW_MOTION) {
                changeScreenButtonImage(ViewFinder$HeadUpDisplaySetupState.VIDEO_RECORDING, false);
            } else {
                cancelSlowMotionHintText();
            }
            getBaseLayout().getRecordingIndicator().setIndicator(true);
            this.mFocusRectangles.startRecording();
            applySmileFocusThreshold(true);
            setLeftIconsVisibility(false);
            setFrontAngleSwitchButtonVisibility(false);
            if (getBaseLayout().getContentsViewController().isLoadingInProvisionalContent()) {
                getBaseLayout().getContentsViewController().show();
            } else {
                getBaseLayout().getContentsViewController().hide();
            }
            showVideoSmileCaptureIndicator();
            hidePhotoSmileCaptureIndicator();
            this.mFocusRectangles.clearExceptTouchFocus();
            this.mFocusRectangles.onUiComponentRemoved();
            this.mFocusRectangles.setEnableFaceFocusTouch(true);
            setOrientation(getOrientation());
            if (this.mHintText != null) {
                this.mHintText.showAll();
            }
            getBaseLayout().setViewFinderGestureDetectorEnabled(false, false);
            hideApplicationNavigator();
            hideAutoReview();
            if (this.mSideTouchUi.containsAll(SideTouchUi$Type.RECORDING, SideTouchUi$Type.RECORDING_HDR, SideTouchUi$Type.COVERING)) {
                changeLayoutTo(BaseLayoutPattern.ZOOMING_IN_RECORDING);
                getBaseLayout().getZoomBar().hideDelayed();
                return;
            }
            if (this.mSideTouchUi.detachTo(SideTouchUi$Type.ZOOM_BAR)) {
                if (this.mSideTouchUi.containsIn(SideTouchUi$Type.RECORDING, SideTouchUi$Type.RECORDING_HDR)) {
                    changeLayoutTo(BaseLayoutPattern.RECORDING, true);
                }
            } else {
                if (!this.mSideTouchUi.containsIn(SideTouchUi$Type.VIDEO_COUNTDOWN, SideTouchUi$Type.RECORDING_PAUSE, SideTouchUi$Type.RECORDING_HDR_PAUSE)) {
                    if (this.mSideTouchUi.containsIn(SideTouchUi$Type.RECORDING, SideTouchUi$Type.RECORDING_HDR)) {
                        changeLayoutTo(BaseLayoutPattern.RECORDING, true);
                        return;
                    }
                    return;
                }
                this.mSideTouchUi.setUiOrientation(this.mRecordingOrientation);
                if (this.mStateMachine.getUserSetting().get(UserSettingKey.VIDEO_HDR) == VideoHdr.HDR_ON) {
                    this.mSideTouchUi.attachIcon(SideTouchUi$Type.RECORDING_HDR, null);
                } else {
                    this.mSideTouchUi.attachIcon(SideTouchUi$Type.RECORDING, null);
                }
                this.mSideTouchUi.setUiOrientation(this.mOrientation);
                this.mSideTouchUi.showIcon();
                changeLayoutTo(BaseLayoutPattern.RECORDING, true);
            }
        }
    }

    private void changeToSuperSlowMotionVideoLowFrameRateRecordingView() {
        changeToVideoRecordingView();
        ViewFinderImpl$ScreenButtonHandler.access$5400(this.mScreenButtonHandler, getOrientation(), false);
        changeScreenButtonImage(ViewFinder$HeadUpDisplaySetupState.SUPER_SLOW_MOTION_RECORDING, false);
        showSuperSlowMotionVideoRecordingHintText();
        setFrontAngleSwitchButtonVisibility(false);
    }

    private void changeToSuperSlowMotionVideoHighFrameRateRecordingView() {
        changeToVideoRecordingView();
        changeLayoutTo(BaseLayoutPattern.HIGH_FRAME_RATE_RECORDING_IN_SUPER_SLOW_MOTION);
        ViewFinderImpl$ScreenButtonHandler.access$5500(this.mScreenButtonHandler);
        ViewFinderImpl$ScreenButtonHandler.access$5600(this.mScreenButtonHandler);
        if (isTouchCaptureEnabled() && this.mStateMachine.getUserSetting().get(UserSettingKey.SLOW_MOTION) == SlowMotion.SUPER_SLOW_SHOT) {
            this.mScreenButtonHandler.setMain(OnScreenButtonItemFactory$ButtonType.TOUCH_CAPTURE, this.mRecordingOrientation, false, false);
        } else {
            this.mScreenButtonHandler.setMain(OnScreenButtonItemFactory$ButtonType.TRIGGER_SUPER_SLOW_MOTION_PRESSED, this.mRecordingOrientation, false, false);
        }
        if (this.mHintText != null) {
            this.mHintText.hide();
        }
        if (this.mHintText != null) {
            this.mHintText.hide();
        }
        setFrontAngleSwitchButtonVisibility(false);
    }

    private void changeToWaitForHighFrameRateRecordingDoneView() {
        changeToVideoRecordingView();
        ViewFinderImpl$ScreenButtonHandler.access$5400(this.mScreenButtonHandler, getOrientation(), false);
        if (this.mStateMachine.getUserSetting().get(UserSettingKey.SLOW_MOTION) == SlowMotion.SUPER_SLOW_SHOT) {
            changeLayoutTo(BaseLayoutPattern.HIGH_FRAME_RATE_RECORDING_IN_SUPER_SLOW_MOTION);
            ViewFinderImpl$ScreenButtonHandler.access$5500(this.mScreenButtonHandler);
            ViewFinderImpl$ScreenButtonHandler.access$5600(this.mScreenButtonHandler);
            if (isTouchCaptureEnabled()) {
                this.mScreenButtonHandler.setMain(OnScreenButtonItemFactory$ButtonType.TOUCH_CAPTURE, this.mRecordingOrientation, false, false);
            } else {
                this.mScreenButtonHandler.setMain(OnScreenButtonItemFactory$ButtonType.TRIGGER_SUPER_SLOW_MOTION_DISABLED, this.mRecordingOrientation, false, false);
            }
        } else {
            ViewFinderImpl$ScreenButtonHandler.access$5500(this.mScreenButtonHandler);
            this.mScreenButtonHandler.setOption2(OnScreenButtonItemFactory$ButtonType.STOP_RECORDING_SMALL, this.mRecordingOrientation, false);
            this.mScreenButtonHandler.setMain(OnScreenButtonItemFactory$ButtonType.TRIGGER_SUPER_SLOW_MOTION_DISABLED, this.mRecordingOrientation, false);
            postHintText(new HintTextSuperSlowMotionVideoRecording(true));
            this.mHintText.showAll();
        }
        setFrontAngleSwitchButtonVisibility(false);
    }

    private void changeToStandardSlowMotionRecordingView() {
        changeToVideoRecordingView();
        changeScreenButtonImage(ViewFinder$HeadUpDisplaySetupState.STANDARD_SLOW_MOTION_RECORDING, false);
    }

    private void changeToReadyForRecordView(boolean z) {
        if (!z) {
            changeLayoutTo(BaseLayoutPattern.FOCUS_DONE);
        }
        if (isHeadUpDisplayReady()) {
            if (!z) {
                setFrontAngleSwitchButtonVisibility(false);
                setLeftIconsVisibility(false);
                hideApplicationNavigator();
                hideAutoReview();
                this.mFocusRectangles.setEnableFaceFocusTouch(false);
            }
            if (this.mHintText != null) {
                this.mHintText.hide();
            }
            getBaseLayout().setViewFinderGestureDetectorEnabled(false, false);
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void hideHudIcons() {
        changeLayoutTo(BaseLayoutPattern.CAPTURE);
    }

    private void changeToVideoZoomingWhileRecordingView() {
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern[((BaseLayoutPattern) this.mLayoutPattern).ordinal()]) {
            case 1:
            case 2:
                changeLayoutTo(BaseLayoutPattern.ZOOMING_IN_RECORDING);
                break;
            case 3:
            case 4:
                changeLayoutTo(BaseLayoutPattern.ZOOMING_IN_PAUSE_RECORDING);
                break;
        }
        if (isHeadUpDisplayReady()) {
            this.mFocusRectangles.clearExceptTouchFocus();
            applySmileFocusThreshold(false);
            hideVideoSmileCaptureIndicator();
            if (this.mHintText != null) {
                this.mHintText.hide();
            }
            setFrontAngleSwitchButtonVisibility(false);
            getBaseLayout().setViewFinderGestureDetectorEnabled(false, false);
            this.mFocusRectangles.setEnableFaceFocusTouch(false);
            if (this.mSideTouchUi.containsIn(SideTouchUi$Type.RECORDING, SideTouchUi$Type.RECORDING_HDR, SideTouchUi$Type.RECORDING_PAUSE, SideTouchUi$Type.RECORDING_HDR_PAUSE, SideTouchUi$Type.ZOOM_BAR)) {
                this.mSideTouchUi.attachIcon(SideTouchUi$Type.COVERING, null);
            }
        }
    }

    private void changeToDialogView(ViewFinder$UiComponentKind viewFinder$UiComponentKind) {
        if (isHeadUpDisplayReady()) {
            if (viewFinder$UiComponentKind != ViewFinder$UiComponentKind.OVERLAY_CONTROL_SEEKING || !isTouchFocus()) {
                this.mFocusRectangles.onUiComponentOverlaid();
            }
            switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind[viewFinder$UiComponentKind.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    changeLayoutTo(BaseLayoutPattern.SETTING);
                    this.mHintText.hide();
                    break;
                case 10:
                    changeLayoutTo(BaseLayoutPattern.CLEAR);
                    setLeftIconsVisibility(false);
                    break;
                case 11:
                    changeLayoutTo(BaseLayoutPattern.OVERLAY_CONTROL_SEEKING);
                    break;
                case 12:
                    openTutorial(TutorialController$DisplayTrigger.CHANGE_MODE);
                    break;
            }
            if (viewFinder$UiComponentKind == ViewFinder$UiComponentKind.OVERLAY_CONTROL_SEEKING) {
                setFrontAngleSwitchButtonVisibility(isFront());
                setFrontAngleSwitchButtonClickable(false);
            } else {
                setFrontAngleSwitchButtonVisibility(false);
            }
            getBaseLayout().setViewFinderGestureDetectorEnabled(false, false);
            this.mSideTouchUi.destroyIcon();
        }
    }

    public boolean openTutorial(TutorialController$DisplayTrigger tutorialController$DisplayTrigger) {
        if (this.mActivity.isOneShot() || this.mActivity.getLaunchCondition().getLaunchTrigger() == LaunchCondition$LaunchTrigger.GOOGLE_ASSISTANT) {
            return false;
        }
        boolean zOpen = getBaseLayout().getTutorial().open(TutorialController$OpenType.create(tutorialController$DisplayTrigger), this.mActivity.getStoredSettings(), null);
        if (zOpen) {
            changeLayoutTo(BaseLayoutPattern.CLEAR);
            setApplicationNavigatorEnabled(false);
        }
        return zOpen;
    }

    boolean isTutorialOpened() {
        return this.mBaseLayout.getTutorial().isOpened();
    }

    private void changeToModeTransitionView() {
        changeLayoutTo(BaseLayoutPattern.MODE_CHANGING);
        hideViews();
        disablePrimaryShortcut();
        disableModeIconClickable();
        sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_CLOSE_ALL_DIALOGS, new Object[0]);
        cancelPredictiveCaptureIndicatorAnimation();
        setFrontAngleSwitchButtonVisibility(false);
        if (this.mFocusRectangles != null) {
            this.mFocusRectangles.clearFaceDetection();
        }
        this.mToastContent.closeMessage();
        clearMessageDialog();
        if (this.mHintText != null) {
            this.mHintText.clearAll();
        }
        hideAutoReview();
        hideZoomBar();
        this.mIsModeChanging = true;
        this.mSideTouchUi.destroyIcon();
    }

    private void onCapturingModeChanged(CapturingMode capturingMode, boolean z, AnimationRequest$AnimationType animationRequest$AnimationType) {
        if (CamLog.DEBUG) {
            CamLog.d("onCapturingModeChanged()  request:" + capturingMode.name());
        }
        Rect previewSize = this.mCameraDevice.getPreviewSize();
        if (previewSize != null && isHeadUpDisplayReady()) {
            Size sizeAccordingToLayoutOrientation = LayoutOrientationResolver.getInstance().getSizeAccordingToLayoutOrientation(new Size(previewSize.width(), previewSize.height()));
            int width = sizeAccordingToLayoutOrientation.getWidth();
            int height = sizeAccordingToLayoutOrientation.getHeight();
            Rect surfaceViewRect = LayoutDependencyResolver.getSurfaceViewRect(this.mActivity, width / height, this.mScreenAspect);
            PositionConverter.getInstance().setSurfaceSize(surfaceViewRect.width(), surfaceViewRect.height());
            PositionConverter.getInstance().setPreviewSize(width, height);
            this.mFocusRectangles.updateDevicePreviewSize(width, height);
            this.mFocusRectangles.clearExceptTouchFocus();
            this.mCapturingModeWhenLastSetupHeadDisplay = capturingMode;
            applyShutterTriggerSettings();
            hideVideoSmileCaptureIndicator();
            setZoomRatio(0);
            setOrientation(this.mActivity.getOrientation());
            updateGridLineView(capturingMode);
            if (z) {
                startModeChangedAnimation(getCapturingMode(), capturingMode, animationRequest$AnimationType);
            }
            switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
                case 5:
                case 6:
                    enableOverlayControl(getBaseLayout().getImageQualityControl());
                    setApplicationNavigatorEnabled(false);
                    setMruAvailability(false);
                    break;
                case 7:
                    getBaseLayout().getSuperSlowMotionTriggerAnimation().prepareViews();
                    setApplicationNavigatorEnabled(false);
                    if (!this.mStateMachine.isTutorialNeededToBeShownForCurrentMode()) {
                        showHiSpeedSdCardRecommendDialogOnModeChange();
                    }
                    setMruAvailability(false);
                    break;
                default:
                    resumeApplicationNavigator(NavigatorContents.valueOf(getCapturingMode()));
                    updateVisibilityForSpecificDisplaySize();
                    if (getBaseLayout().getMruButtonContainer().hasInternalMode()) {
                        setMruAvailability(true);
                    }
                    attemptSetupMruButton(capturingMode);
                    break;
            }
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void sendViewUpdateEvent(ViewFinder$ViewUpdateEvent viewFinder$ViewUpdateEvent, Object... objArr) {
        UserSettingKey userSettingKey;
        if (CamLog.DEBUG) {
            CamLog.d("sendViewUpdateEvent() event: " + viewFinder$ViewUpdateEvent);
        }
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$ViewUpdateEvent[viewFinder$ViewUpdateEvent.ordinal()]) {
            case 1:
                setupHeadUpDisplay((ViewFinder$HeadUpDisplaySetupState) objArr[0]);
                checkupThermalCoolingRequest();
                updateSecondaryShortcutOnScreenButtonResource();
                break;
            case 2:
                if (this.mActivity != null) {
                    resizeEvfScope((Rect) objArr[0]);
                    if (this.mHintText != null) {
                        updateHintTextContainer((Rect) objArr[0]);
                    }
                    boolean zBooleanValue = ((Boolean) objArr[1]).booleanValue();
                    if (this.mIsSetupHeadupDisplayInvoked && zBooleanValue && !isTutorialOpened()) {
                        this.mIsSurfaceViewHideWhileAspectChanging = true;
                        this.mEvf.hide();
                        updateCaptureAreaSize();
                        updateGridLineView();
                    }
                    showSurface();
                    break;
                }
                break;
            case 3:
                RecordingIndicator recordingIndicator = getBaseLayout().getRecordingIndicator();
                if (recordingIndicator != null) {
                    VideoHdr videoHdr = (VideoHdr) objArr[3];
                    if (getCapturingMode() != CapturingMode.SLOW_MOTION && videoHdr != VideoHdr.HDR_ON) {
                        if (((Boolean) objArr[2]).booleanValue()) {
                            recordingIndicator.setSequenceMode(true);
                        }
                        recordingIndicator.setConstraint(((Boolean) objArr[1]).booleanValue());
                        recordingIndicator.prepareBeforeRecording(((Integer) objArr[0]).intValue());
                    } else {
                        recordingIndicator.setSequenceMode(false);
                        recordingIndicator.setConstraint(false);
                        recordingIndicator.prepareBeforeRecording(((Integer) objArr[0]).intValue());
                    }
                }
                break;
            case 4:
                if (!isCameraSwitching()) {
                    onCapturingModeChanged((CapturingMode) objArr[0], ((Boolean) objArr[1]).booleanValue(), (AnimationRequest$AnimationType) objArr[2]);
                }
                updatePrimaryShortcutIcons();
                updateScreenButtonImage((CapturingMode) objArr[0]);
                if (this.mSettingDialogStack != null) {
                    this.mSettingDialogStack.setCapturingMode((CapturingMode) objArr[0]);
                }
                break;
            case 5:
                onSceneModeChanged((CameraParameters$SceneRecognitionResult) objArr[0]);
                break;
            case 6:
                this.mFocusRectangles.startFaceDetection();
                break;
            case 7:
                CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult = (CameraParameters$FaceDetectionResult) objArr[0];
                if (this.mIsFaceDetectionIdSupported == null) {
                    if (!cameraParameters$FaceDetectionResult.extFaceList.isEmpty()) {
                        this.mIsFaceDetectionIdSupported = FaceDetectUtil.hasValidFaceId(cameraParameters$FaceDetectionResult);
                    }
                } else if (!this.mIsFaceDetectionIdSupported.booleanValue()) {
                    FaceDetectUtil.setUuidFaceDetectionResult(cameraParameters$FaceDetectionResult);
                }
                if (!predictiveLaunchCoverExists()) {
                    onFaceDetected(cameraParameters$FaceDetectionResult);
                }
                break;
            case 8:
                hideAutoReview();
                this.mFocusRectangles.setObjectTrackingRectSupported(true);
                this.mFocusRectangles.startObjectTracking();
                applySmileFocusThreshold(false);
                getBaseLayout().getPhotoSmileCaptureIndicator().set(false);
                getBaseLayout().getVideoSmileCaptureIndicator().set(false);
                break;
            case 9:
                this.mFocusRectangles.clearObjectTracking();
                break;
            case 10:
                applySmileFocusThreshold(true);
                if (!getCapturingMode().isVideo()) {
                    SmileCapture smileCapture = (SmileCapture) this.mStateMachine.getUserSetting().get(UserSettingKey.SMILE_CAPTURE);
                    if (smileCapture != null) {
                        getBaseLayout().getPhotoSmileCaptureIndicator().set(smileCapture.isSmileCaptureOn());
                    }
                } else {
                    VideoSmileCapture videoSmileCapture = (VideoSmileCapture) this.mStateMachine.getUserSetting().get(UserSettingKey.VIDEO_SMILE_CAPTURE);
                    if (videoSmileCapture != null) {
                        getBaseLayout().getVideoSmileCaptureIndicator().set(videoSmileCapture.isSmileCaptureOn());
                    }
                }
                break;
            case 11:
                onTrackedObjectStateUpdated((CameraParameters$ObjectTrackingResult) objArr[0]);
                break;
            case 12:
                this.mZoomBarProxy.bindZoomBar(getBaseLayout().getZoomBar());
                this.mZoomBarProxy.update(getBaseLayout().getZoomBar().getZoomRatios(), ((Integer) objArr[0]).intValue());
                if (!this.mStateMachine.isRecording()) {
                    changeToZoomingView();
                } else {
                    changeToVideoZoomingWhileRecordingView();
                }
                break;
            case 13:
                int i = ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern[((BaseLayoutPattern) this.mLayoutPattern).ordinal()];
                if (i == 2) {
                    if (getCapturingMode() == CapturingMode.SLOW_MOTION) {
                        SlowMotion slowMotion = (SlowMotion) this.mStateMachine.getUserSetting().get(UserSettingKey.SLOW_MOTION);
                        if (slowMotion == SlowMotion.STANDARD_SLOW_MOTION) {
                            changeToStandardSlowMotionRecordingView();
                        } else if (slowMotion == SlowMotion.SUPER_SLOW_MOTION) {
                            changeToSuperSlowMotionVideoLowFrameRateRecordingView();
                        }
                    } else {
                        changeToVideoRecordingView();
                    }
                    break;
                } else {
                    switch (i) {
                        case 4:
                            changeToVideoRecordingPauseView();
                            break;
                        case 5:
                            if (!getCapturingMode().isVideo()) {
                                changeToPhotoReadyView(false);
                            } else {
                                if (getCapturingMode() == CapturingMode.SLOW_MOTION) {
                                    postSlowMotionHintText();
                                }
                                changeToVideoReadyView();
                            }
                            break;
                    }
                }
                break;
            case 14:
                int iIntValue = ((Integer) objArr[0]).intValue();
                if (CamLog.VERBOSE) {
                    CamLog.d("EVENT_ON_ZOOM_CHANGED  cur:" + iIntValue);
                }
                Zoombar zoomBar = getBaseLayout().getZoomBar();
                if (zoomBar != null && zoomBar.getVisibility() == 0) {
                    setZoomRatio(iIntValue);
                    break;
                }
                break;
            case 15:
                cancelSelfTimerCountDownView();
                break;
            case 16:
                hideAutoReview();
                Point point = (Point) objArr[0];
                FocusRectangles$FocusSetType focusRectangles$FocusSetType = (FocusRectangles$FocusSetType) objArr[1];
                this.mFocusRectangles.setFocusPosition(point, focusRectangles$FocusSetType);
                if (focusRectangles$FocusSetType == FocusRectangles$FocusSetType.FIRST) {
                    this.mFocusRectangles.setVisibility(4);
                    if (PlatformCapability.isFocusSupported(getCapturingMode().getCameraId())) {
                        this.mFocusRectangles.onAutoFocusStarted();
                    }
                } else if (focusRectangles$FocusSetType == FocusRectangles$FocusSetType.RELEASE) {
                    this.mFocusRectangles.setVisibility(0);
                } else {
                    this.mFocusRectangles.setVisibility(4);
                }
                break;
            case 17:
                if (isTouchFocus()) {
                    disableSemiAutoControl();
                }
                if (this.mFocusRectangles != null) {
                    this.mFocusRectangles.clearAllFocus();
                }
                break;
            case 18:
                if (isTouchFocus()) {
                    disableSemiAutoControl();
                }
                if (this.mFocusRectangles != null) {
                    this.mFocusRectangles.clearAllFocusExceptFace();
                }
                break;
            case 19:
                if (isTouchFocus()) {
                    disableSemiAutoControl();
                }
                if (this.mFocusRectangles != null && isTouchFocus()) {
                    this.mFocusRectangles.clearTouchFocus();
                    break;
                }
                break;
            case 20:
                if (this.mFocusRectangles != null) {
                    this.mFocusRectangles.clearAllFocusExceptFace();
                }
                break;
            case 21:
                this.mRecordingTimeProxy.notifyOnTimeTicked(((Integer) objArr[0]).intValue());
                break;
            case 22:
                setOrientation(((Integer) objArr[0]).intValue());
                break;
            case 23:
                hideAutoReview();
                ViewFinder$UiComponentKind viewFinder$UiComponentKind = (ViewFinder$UiComponentKind) objArr[0];
                updateUiComponent(viewFinder$UiComponentKind);
                if (!isOverlayControlVisible() || !this.mStateMachine.isDialogOpened() || isSettingDialogOpened()) {
                    switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$UiComponentKind[viewFinder$UiComponentKind.ordinal()]) {
                        case 1:
                            if (getCapturingMode() == CapturingMode.FRONT_VIDEO || getCapturingMode() == CapturingMode.VIDEO || getCapturingMode() == CapturingMode.SLOW_MOTION) {
                                changeToVideoReadyView();
                            } else {
                                changeToPhotoReadyView(false);
                            }
                            requestToDimSystemUi();
                            break;
                        case 2:
                            requestToRecoverSystemUi();
                            if (this.mSettingUi != null) {
                                CapturingMode capturingMode = getCapturingMode();
                                UserSettingKey userSettingKey2 = UserSettingKey.FLASH;
                                if (capturingMode.getType() == 2) {
                                    userSettingKey = UserSettingKey.PHOTO_LIGHT;
                                } else if (capturingMode.isFront()) {
                                    userSettingKey = UserSettingKey.DISPLAY_FLASH;
                                } else {
                                    userSettingKey = UserSettingKey.FLASH;
                                }
                                this.mSettingUi.openShortcutSettingDialog(userSettingKey);
                            }
                            break;
                        case 3:
                            requestToRecoverSystemUi();
                            if (this.mSettingUi != null) {
                                this.mSettingUi.openShortcutSettingDialog(UserSettingKey.SELF_TIMER);
                            }
                            break;
                        case 4:
                            requestToRecoverSystemUi();
                            if (this.mSettingUi != null) {
                                this.mSettingUi.openShortcutSettingDialog(UserSettingKey.ASPECT_RATIO);
                            }
                            break;
                        case 5:
                            requestToRecoverSystemUi();
                            if (this.mSettingUi != null) {
                                this.mSettingUi.openShortcutSettingDialog(UserSettingKey.FUSION_MODE);
                            }
                            break;
                        case 6:
                            requestToRecoverSystemUi();
                            if (this.mSettingUi != null) {
                                this.mSettingUi.openShortcutSettingDialog(UserSettingKey.VIDEO_HDR);
                            }
                            break;
                        case 7:
                            requestToRecoverSystemUi();
                            if (this.mSettingUi != null) {
                                this.mSettingUi.openShortcutSettingDialog(UserSettingKey.HDR);
                            }
                            break;
                        case 8:
                            requestToRecoverSystemUi();
                            if (this.mSettingUi != null) {
                                this.mSettingUi.openSettingMenuDialog();
                            }
                            break;
                        case 9:
                            requestToRecoverSystemUi();
                            if (this.mSettingUi != null) {
                                this.mSettingUi.openModeSelectDialog(this.mModeLoader, this.mModeSelectListener);
                            }
                            break;
                        case 11:
                            requestToDimSystemUi();
                            break;
                    }
                }
                break;
            case 24:
                closeDialogs();
                break;
            case 25:
                SavingRequest savingRequest = (SavingRequest) objArr[1];
                StoreDataResult storeDataResult = (StoreDataResult) objArr[2];
                String str = savingRequest.common.mimeType;
                Uri uri = (storeDataResult == null || storeDataResult.savingRequest.getRequestId() != savingRequest.getRequestId()) ? null : storeDataResult.uri;
                if (uri != null) {
                    if (str == "video/mp4" || str == "video/3gpp") {
                        openInstantViewer(null, (String) objArr[0], savingRequest);
                    } else {
                        openInstantViewer((byte[]) objArr[0], null, savingRequest);
                    }
                    InstantViewer.launchAlbum(this.mActivity, uri, str, true, this.mStateMachine.getPredictiveCaptureStoreInfo());
                } else if (str == "video/mp4" || str == "video/3gpp") {
                    openInstantViewer(null, (String) objArr[0], savingRequest);
                } else {
                    openInstantViewer((byte[]) objArr[0], null, savingRequest);
                }
                break;
            case 26:
                onStoreCompleted((StoreDataResult) objArr[0], ((Boolean) objArr[1]).booleanValue());
                break;
            case 27:
                startCaptureFeedbackAnimation();
                break;
            case 28:
                onLazyInitializationTaskRun();
                break;
            case 29:
                addVideoChapter((ChapterThumbnail) objArr[0]);
                break;
            case 30:
                onNotifyThermalStatus(false);
                break;
            case 31:
                onNotifyThermalStatus(true);
                if (!this.mIsThermalWarningDialogShown) {
                    showMessageDialog(DialogId.THERMAL_WARNING, new Object[0]);
                    this.mIsThermalWarningDialogShown = true;
                }
                break;
            case 32:
                if (((Boolean) objArr[0]).booleanValue()) {
                    showToastMessage(ToastContent$ToastID.NEEDS_TO_COOL_DOWN);
                } else {
                    showMessageDialog(DialogId.THERMAL_CRITICAL, new Object[0]);
                }
                break;
            case 33:
                requestToRestoreSystemUi();
                updateGeotagIcon();
                break;
            case 34:
                updateGridLineView();
                break;
            case 35:
                this.mIsFrontAngleChanging = true;
                if (this.mFocusRectangles != null) {
                    this.mFocusRectangles.clearFaceDetection();
                }
                getBaseLayout().getSceneIndicator().set(false);
                getBaseLayout().getConditionIndicator().set(false);
                if (this.mFrontAngleSwitchButton != null) {
                    this.mFrontAngleSwitchButton.switchFrontAngle((FrontAngle) this.mStateMachine.getUserSetting().get(UserSettingKey.FRONT_ANGLE));
                }
                break;
            case 36:
                this.mIsFrontAngleChanging = false;
                break;
            case 37:
                onBurstRejected((ViewFinder$BurstRejectedReason) objArr[0]);
                break;
            case 38:
                onBurstShutterDone(((Boolean) objArr[0]).booleanValue(), ((Integer) objArr[1]).intValue());
                break;
            case 39:
                onBurstFinished();
                break;
            case 40:
                onCaptureFinished();
                break;
            case 41:
                onCaptureCanceled();
                break;
            case 42:
                UserSettings userSetting = this.mStateMachine.getUserSetting();
                if (!userSetting.isLimitForSizeOrDuration() && VideoSize.MMS != userSetting.get(UserSettingKey.VIDEO_SIZE) && !this.mMessageDialog.isOpened()) {
                    showMessageDialog(DialogId.MAX_DURATION_REACHED, new Object[0]);
                    break;
                }
                break;
            case 43:
                if (!this.mMessageDialog.isOpened()) {
                    showMessageDialog(DialogId.MAX_FILESIZE_REACHED, new Object[0]);
                }
                break;
            case 44:
                if (((Boolean) objArr[0]).booleanValue()) {
                    showMessageDialog(DialogId.LOW_BATTERY_CRITICAL_ON_RECORDING, new Object[0]);
                } else {
                    showMessageDialog(DialogId.LOW_BATTERY_CRITICAL_ON_PHOTO, new Object[0]);
                }
                break;
            case 45:
                if (getBaseLayout().getImageQualityControl().isInitialized() && getBaseLayout().getImageQualityControl().get().isVisible()) {
                    getBaseLayout().getImageQualityControl().get().refresh();
                }
                if (getCapturingMode() == CapturingMode.VIDEO) {
                    FusionMode fusionMode = (FusionMode) objArr[0];
                    if (this.mPrimaryShortcutGroup != null) {
                        this.mPrimaryShortcutGroup.updatePrimaryShortcutIcon(UserSettingKey.FUSION_MODE, fusionMode.getIconId());
                    }
                }
                break;
            case 46:
                if (this.mSettingDialogStack != null && !this.mSettingDialogStack.isDialogOpened()) {
                    postHintText(new HintTextTimedOutMessage(HintTextTimedOutMessage$MessageType.ISO_CHANGED_BY_FUSION));
                    break;
                }
                break;
            case 47:
                getBaseLayout().showBlackScreen();
                break;
            case 48:
                getBaseLayout().hideBlackScreen();
                break;
            case 49:
                updateFusionHintText((CameraParameters$FusionResult) objArr[0]);
                break;
            case 50:
                updateVideoHdrCondition(getCapturingMode(), (VideoHdr) objArr[0], ((Boolean) objArr[1]).booleanValue());
                break;
            case 51:
                onCapturingModeChanging();
                break;
            case 52:
                this.mIsSettingChangeAcceptable = ((Boolean) objArr[0]).booleanValue();
                break;
            case 53:
                this.mIsNeedDisplayToastChangeInternalStoarge = ((Boolean) objArr[0]).booleanValue();
                if (!this.mIsNeedDisplayToastChangeInternalStoarge) {
                    showMessageDialog(DialogId.DESTINATION_TO_SAVE_CHANGED_INTERNAL, new Object[0]);
                }
                break;
            case 54:
                getBaseLayout().getMruButtonContainer().setMode((Mode) objArr[0]);
                break;
            case 55:
                onAppsUiModeFinish();
                break;
            case 56:
                CapturingMode capturingMode2 = (CapturingMode) objArr[0];
                Object obj = (Mode) objArr[1];
                ModeSelectorInternalMode tag = ((InternalMode) obj).getTag();
                if (this.mActivity.isDeviceInSecurityLock() && tag == ModeSelectorInternalMode.DUAL_MONOCHROME) {
                    CameraActivity cameraActivity = this.mActivity;
                    ActivityOptions activityOptionsMakeCustomAnimation = ActivityOptions.makeCustomAnimation(cameraActivity, 0, 0);
                    Intent intentCommit = LaunchCameraIntentBuilder.create().mode(getCapturingMode().name()).activity("com.sonyericsson.android.camera", "com.sonyericsson.android.camera.CameraActivity").callingMode(CapturingModeUtil.filteringPrevName(getCapturingMode().name())).callingActivity(cameraActivity.getPackageName(), CapturingModeUtil.filteringPrevActivity(cameraActivity.getClass().getName())).commit();
                    intentCommit.putExtra("internal_mode", ModeSelectorInternalMode.DUAL_MONOCHROME.ordinal());
                    intentCommit.putExtra("capturing_mode", capturingMode2.ordinal());
                    showMessageDialog(DialogId.UNLOCK_REQUEST_FOR_OPENING_ADD_ON_APP, intentCommit, activityOptionsMakeCustomAnimation.toBundle(), obj);
                    break;
                }
                break;
        }
    }

    private void onBurstShutterDone(boolean z, int i) {
        if (isHeadUpDisplayReady()) {
            if (this.mBurstCountView == null) {
                this.mBurstCountView = getBaseLayout().getBurstCountView();
                this.mBurstCountView.setUiOrientation(this.mOrientation);
            }
            this.mBurstCountView.update(i);
            clearTouchedScreenButtonGroup();
            this.mFocusRectangles.onAutoFocusDone(z);
            this.mFocusRectangles.clearTouched();
            this.mViewFinderCaptureArea.clearTouched();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void showBurstRejectedMessage(ViewFinder$BurstRejectedReason viewFinder$BurstRejectedReason) {
        HintTextTimedOutMessage$MessageType hintTextTimedOutMessage$MessageType;
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$BurstRejectedReason[viewFinder$BurstRejectedReason.ordinal()]) {
            case 1:
                hintTextTimedOutMessage$MessageType = HintTextTimedOutMessage$MessageType.CANNOT_BURST_IN_DARK_CONDITION;
                break;
            case 2:
                if (!this.mHintCannotBurstUsingFrontCameraAlreadyDisplayed) {
                    this.mHintCannotBurstUsingFrontCameraAlreadyDisplayed = true;
                    hintTextTimedOutMessage$MessageType = HintTextTimedOutMessage$MessageType.CANNOT_BURST_USING_FRONT_CAMERA;
                } else {
                    hintTextTimedOutMessage$MessageType = null;
                }
                break;
            case 3:
                if (!this.mHintCannotBurstUsingFusionModeAlreadyDisplayed) {
                    this.mHintCannotBurstUsingFusionModeAlreadyDisplayed = true;
                    hintTextTimedOutMessage$MessageType = HintTextTimedOutMessage$MessageType.CANNOT_BURST_DUE_TO_FUSION_MODE;
                    break;
                }
                break;
            case 4:
                if (!this.mHintBurstChangeCameraKeySettingAlreadyDisplayed) {
                    this.mHintBurstChangeCameraKeySettingAlreadyDisplayed = true;
                    hintTextTimedOutMessage$MessageType = HintTextTimedOutMessage$MessageType.BURST_CHANGE_CAMERA_KEY_SETTING;
                    break;
                }
                break;
        }
        if (hintTextTimedOutMessage$MessageType != null) {
            postHintText(new HintTextTimedOutMessage(hintTextTimedOutMessage$MessageType));
        }
    }

    private void onBurstRejected(ViewFinder$BurstRejectedReason viewFinder$BurstRejectedReason) {
        if (isPreviewLayout(getCurrentLayoutPattern())) {
            showBurstRejectedMessage(viewFinder$BurstRejectedReason);
        } else {
            this.mBurstShootingRejectedReason = viewFinder$BurstRejectedReason;
        }
    }

    private void onCaptureFinished() {
        if (isHeadUpDisplayReady()) {
            if (!attachSideAutoReview() && isAutoReviewEnabled()) {
                this.mIsAutoReviewRequested = true;
                this.mAutoReviewProxy.bindReceiver(getBaseLayout().getAutoReview());
            }
            if (this.mBurstShootingRejectedReason != ViewFinder$BurstRejectedReason.NONE) {
                showBurstRejectedMessage(this.mBurstShootingRejectedReason);
                this.mBurstShootingRejectedReason = ViewFinder$BurstRejectedReason.NONE;
            }
            updateAllOverlayControlVisibility();
            updateVisibilityForSpecificDisplaySize();
        }
    }

    private void onCaptureCanceled() {
        if (isHeadUpDisplayReady()) {
            if (this.mBurstShootingRejectedReason != ViewFinder$BurstRejectedReason.NONE) {
                showBurstRejectedMessage(this.mBurstShootingRejectedReason);
                this.mBurstShootingRejectedReason = ViewFinder$BurstRejectedReason.NONE;
            }
            updateAllOverlayControlVisibility();
            updateVisibilityForSpecificDisplaySize();
        }
    }

    private void onBurstFinished() {
        if (!isHeadUpDisplayReady() || this.mBurstCountView == null) {
            return;
        }
        this.mBurstCountView.hide();
        startCaptureFeedbackAnimation();
        if (((DestinationToSave) this.mStateMachine.getUserSetting().get(UserSettingKey.DESTINATION_TO_SAVE)).getType() == Storage$StorageType.INTERNAL || this.mHintBurstImageSavedToInternalStorageAlreadyDisplayed) {
            return;
        }
        this.mHintBurstImageSavedToInternalStorageAlreadyDisplayed = true;
        postHintText(new HintTextTimedOutMessage(HintTextTimedOutMessage$MessageType.BURST_IMAGES_ARE_SAVED_TO_INTERNAL_STORAGE));
    }

    private void onCapturingModeChanging() {
        disableSemiAutoControl();
        disableOverlayControl(getBaseLayout().getImageQualityControl());
    }

    private boolean attachSideAutoReview() {
        if (!this.mSideTouchUi.containsIn(SideTouchUi$Type.CAPTURE_COUNTDOWN, SideTouchUi$Type.RECORDING, SideTouchUi$Type.RECORDING_HDR, SideTouchUi$Type.RECORDING_PAUSE, SideTouchUi$Type.RECORDING_HDR_PAUSE, SideTouchUi$Type.SELF_TIMER_COUNTDOWN_CANCEL)) {
            return false;
        }
        this.mIsAutoReviewRequested = true;
        this.mSideTouchUi.attachIcon(SideTouchUi$Type.AUTO_REVIEW, null);
        return true;
    }

    public void updateTouchCapture(TouchCapture touchCapture) {
        boolean z = true;
        if (touchCapture != null) {
            switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture[touchCapture.ordinal()]) {
                case 1:
                    break;
                case 2:
                    if (!isFront()) {
                        z = false;
                    }
                    break;
                default:
                    z = false;
                    break;
            }
        } else {
            z = false;
        }
        if (z) {
            this.mFocusRectangles.enableFaceTouchCapture();
            if (this.mFocusRectangles.isTouchFocus() || this.mCameraDevice.isObjectTrackingRunning()) {
                this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_DESELECT_OBJECT_POSITION, new Object[0]);
                this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_CANCEL_TOUCHED_POSITION, new Object[0]);
                return;
            }
            return;
        }
        this.mFocusRectangles.disableFaceTouchCapture();
    }

    private void addVideoChapter(ChapterThumbnail chapterThumbnail) {
        RecordingIndicator recordingIndicator = getBaseLayout().getRecordingIndicator();
        YuvImage yuvImage = new YuvImage(chapterThumbnail.yuvData, chapterThumbnail.format.intValue(), chapterThumbnail.rect.width(), chapterThumbnail.rect.height(), null);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (yuvImage.compressToJpeg(chapterThumbnail.rect, 80, byteArrayOutputStream)) {
            recordingIndicator.addChapter(byteArrayOutputStream.toByteArray(), chapterThumbnail.orientation());
        }
    }

    private void onLazyInitializationTaskRun() {
        ModeLoader.updatePluginsDatabase(this.mActivity);
        this.mInstantViewer.createAlbumPreloader();
        setupMruButton(getCapturingMode());
    }

    private void setMruAvailability(boolean z) {
        if (this.mActivity.isOneShot()) {
            z = false;
        }
        getBaseLayout().getMruButtonContainer().setAvailability(z);
    }

    private void attemptSetupMruButton(CapturingMode capturingMode) {
        if (this.mModeLoader == null) {
            setupMruButton(capturingMode);
        }
    }

    private void setupMruButton(CapturingMode capturingMode) {
        if (this.mActivity.isOneShot()) {
        }
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                if (this.mModeLoader == null) {
                    this.mModeLoader = new ModeLoader(this.mActivity);
                }
                getBaseLayout().getMruButtonContainer().setup(this.mModeLoader);
                break;
        }
    }

    private void onSceneModeChanged(CameraParameters$SceneRecognitionResult cameraParameters$SceneRecognitionResult) {
        if (isHeadUpDisplayReady() && !this.mActivity.isOneShot()) {
            doChangeSceneMode(cameraParameters$SceneRecognitionResult);
            doChangeCondition(cameraParameters$SceneRecognitionResult);
        }
    }

    private void doChangeSceneMode(CameraParameters$SceneRecognitionResult cameraParameters$SceneRecognitionResult) {
        RecognizedScene recognizedSceneCreate = RecognizedScene.create(cameraParameters$SceneRecognitionResult.sceneMode);
        int iconId = recognizedSceneCreate.getIconId();
        int textId = recognizedSceneCreate.getTextId();
        if (iconId <= 0 || textId <= 0) {
            if (!cameraParameters$SceneRecognitionResult.isMacroRange) {
                getBaseLayout().getSceneIndicator().set(false);
                return;
            } else {
                iconId = 2131231273;
                textId = 2131689845;
            }
        }
        getBaseLayout().getSceneIndicator().set(true);
        getBaseLayout().getSceneIndicator().setImageResource(iconId);
        getBaseLayout().getSceneIndicator().setTextResource(textId);
    }

    private void doChangeCondition(CameraParameters$SceneRecognitionResult cameraParameters$SceneRecognitionResult) {
        int iconId = RecognizedCondition.create(cameraParameters$SceneRecognitionResult.deviceStabilityCondition).getIconId();
        if (iconId != -1) {
            getBaseLayout().getConditionIndicator().set(true);
            getBaseLayout().getConditionIndicator().setImageResource(iconId);
        } else {
            getBaseLayout().getConditionIndicator().set(false);
        }
    }

    private void onFaceDetected(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
        if (isHeadUpDisplayReady()) {
            this.mFocusRectangles.onFaceDetected(cameraParameters$FaceDetectionResult);
        }
    }

    private void onTrackedObjectStateUpdated(CameraParameters$ObjectTrackingResult cameraParameters$ObjectTrackingResult) {
        if (isHeadUpDisplayReady()) {
            this.mFocusRectangles.onObjectTracked(cameraParameters$ObjectTrackingResult);
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void onObjectLost() {
        if (isHeadUpDisplayReady()) {
            this.mFocusRectangles.onObjectLost();
        }
    }

    private void hideSurfaceBlinderView() {
        if (this.mSurfaceBlinderView == null || this.mSurfaceBlinderView.getVisibility() != 0) {
            return;
        }
        this.mSurfaceBlinderView.setVisibility(4);
        FrameLayout previewOverlayContainer = getBaseLayout().getPreviewOverlayContainer();
        if (previewOverlayContainer != null) {
            previewOverlayContainer.removeView(this.mSurfaceBlinderView);
        }
    }

    private void releaseSurfaceBlinderView() {
        if (this.mSurfaceBlinderView != null) {
            this.mSurfaceBlinderView.setVisibility(4);
            FrameLayout previewOverlayContainer = getBaseLayout().getPreviewOverlayContainer();
            if (previewOverlayContainer != null) {
                previewOverlayContainer.removeView(this.mSurfaceBlinderView);
            }
            this.mSurfaceBlinderView = null;
        }
    }

    private PointF convertTouchPointToDevicePreviewPositionRatio(Point point) {
        Rect rect = this.mEvf.getRect();
        return new PointF((point.x - rect.left) / rect.width(), (point.y - rect.top) / rect.height());
    }

    public RectF convertTouchPointToRectInDevicePreviewPositionRatio(Point point) {
        PointF pointFConvertTouchPointToDevicePreviewPositionRatio = convertTouchPointToDevicePreviewPositionRatio(point);
        Rect rect = this.mEvf.getRect();
        Rect touchFocusIconSize = this.mFocusRectangles.getTouchFocusIconSize();
        int iWidth = rect.width();
        float fWidth = (touchFocusIconSize.width() / iWidth) / 2.0f;
        float fHeight = (touchFocusIconSize.height() / rect.height()) / 2.0f;
        return new RectF(pointFConvertTouchPointToDevicePreviewPositionRatio.x - fWidth, pointFConvertTouchPointToDevicePreviewPositionRatio.y - fHeight, pointFConvertTouchPointToDevicePreviewPositionRatio.x + fWidth, pointFConvertTouchPointToDevicePreviewPositionRatio.y + fHeight);
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public int getOrientation() {
        return getBaseLayout().getCurrentOrientation();
    }

    private OnScreenButtonItemFactory$ButtonType getCaptureButtonTypeAccordingToSelfTimerSetting() {
        int i = ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer[this.mPhotoSelfTimerSetting.ordinal()];
        if (i == 1) {
            if (isTouchCaptureEnabled()) {
                return OnScreenButtonItemFactory$ButtonType.TOUCH_CAPTURE_WITH_SELFTIMER_LONG;
            }
            return OnScreenButtonItemFactory$ButtonType.CAPTURE_WITH_SELFTIMER_LONG;
        }
        if (i == 3) {
            if (isTouchCaptureEnabled()) {
                return OnScreenButtonItemFactory$ButtonType.TOUCH_CAPTURE_WITH_SELFTIMER_SHORT;
            }
            return OnScreenButtonItemFactory$ButtonType.CAPTURE_WITH_SELFTIMER_SHORT;
        }
        if (isTouchCaptureEnabled()) {
            return OnScreenButtonItemFactory$ButtonType.TOUCH_CAPTURE;
        }
        return OnScreenButtonItemFactory$ButtonType.CAPTURE_LARGE;
    }

    private void changeOnScreenCaptureButtonInManualMain() {
        if (CamLog.VERBOSE) {
            CamLog.d("changeOnScreenCaptureButtonInManualMain()");
        }
        if (PlatformCapability.isHighSensitivityFusionSupported(getCapturingMode().getCameraId())) {
            getBaseLayout().getOnScreenButtonGroup().setOption1(this.mHighSensitivityFusionButtonItem, getOrientation(), true);
        } else {
            ViewFinderImpl$ScreenButtonHandler.access$5500(this.mScreenButtonHandler);
        }
        this.mScreenButtonHandler.setMain(getCaptureButtonTypeAccordingToSelfTimerSetting(), getOrientation(), true);
        this.mScreenButtonHandler.setOption2((OnScreenButtonGroup$Item) this.mImageQualityControlButtonItem, getOrientation(), true);
    }

    private void changeOnScreenCaptureButtonInManualFront() {
        if (CamLog.VERBOSE) {
            CamLog.d("changeOnScreenCaptureButtonInManualFront()");
        }
        ViewFinderImpl$ScreenButtonHandler.access$5500(this.mScreenButtonHandler);
        this.mScreenButtonHandler.setMain(getCaptureButtonTypeAccordingToSelfTimerSetting(), getOrientation(), true);
        this.mScreenButtonHandler.setOption2((OnScreenButtonGroup$Item) this.mImageQualityControlButtonItem, getOrientation(), true);
    }

    private void changeOnScreenCaptureButtonInAutoMain() {
        if (CamLog.VERBOSE) {
            CamLog.d("changeOnScreenCaptureButtonInAutoMain()");
        }
        ViewFinderImpl$ScreenButtonHandler.access$5500(this.mScreenButtonHandler);
        this.mScreenButtonHandler.setMain(getCaptureButtonTypeAccordingToSelfTimerSetting(), getOrientation(), true);
        ViewFinderImpl$ScreenButtonHandler.access$5600(this.mScreenButtonHandler);
    }

    private void changeOnScreenCaptureButtonInAutoFront() {
        ViewFinderImpl$ScreenButtonHandler.access$5500(this.mScreenButtonHandler);
        this.mScreenButtonHandler.setMain(getCaptureButtonTypeAccordingToSelfTimerSetting(), getOrientation(), true);
        ViewFinderImpl$ScreenButtonHandler.access$5600(this.mScreenButtonHandler);
    }

    private void changeOnScreenCaptureButtonInSelfTimerCoundDown() {
        if (CamLog.VERBOSE) {
            CamLog.d("changeOnScreenCaptureButtonInSelfTimerCoundDown()");
        }
        ViewFinderImpl$ScreenButtonHandler.access$5500(this.mScreenButtonHandler);
        this.mScreenButtonHandler.setMain(OnScreenButtonItemFactory$ButtonType.CAPTURE_LARGE, getOrientation(), true);
        ViewFinderImpl$ScreenButtonHandler.access$5600(this.mScreenButtonHandler);
    }

    private OnScreenButtonItemFactory$ButtonType createStartRecordingButton() {
        if (isTouchCaptureEnabled()) {
            return OnScreenButtonItemFactory$ButtonType.TOUCH_RECORDING_START;
        }
        if (getCapturingMode() == CapturingMode.SLOW_MOTION) {
            if (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[((SlowMotion) this.mStateMachine.getUserSetting().get(getCapturingMode(), UserSettingKey.SLOW_MOTION)).ordinal()] == 2) {
                return OnScreenButtonItemFactory$ButtonType.TRIGGER_SUPER_SLOW_MOTION;
            }
            return OnScreenButtonItemFactory$ButtonType.START_RECORDING_LARGE;
        }
        return OnScreenButtonItemFactory$ButtonType.START_RECORDING_LARGE;
    }

    private void changeOnScreenCaptureButtonInVideo() {
        if (CamLog.VERBOSE) {
            CamLog.d("changeOnScreenCaptureButtonInVideo()");
        }
        ViewFinderImpl$ScreenButtonHandler.access$5500(this.mScreenButtonHandler);
        this.mScreenButtonHandler.setMain(createStartRecordingButton(), getOrientation(), true);
        ViewFinderImpl$ScreenButtonHandler.access$5600(this.mScreenButtonHandler);
        LocalResearchUtil.getInstance().setMeasurementValid(LocalResearchUtil$MeasurementKey.VIDEO_RECORDING_STOP_READY_FOR_USE);
    }

    private void changeOnScreenSuperSlowMotionButtonInVideo() {
        if (CamLog.VERBOSE) {
            CamLog.d("changeOnScreenSuperSlowMotionButtonInVideo()");
        }
        ViewFinderImpl$ScreenButtonHandler.access$5500(this.mScreenButtonHandler);
        this.mScreenButtonHandler.setMain(createStartRecordingButton(), getOrientation(), true);
        ViewFinderImpl$ScreenButtonHandler.access$5600(this.mScreenButtonHandler);
    }

    private void changeOnScreenSuperSlowMotionRecordingButtonInVideo() {
        if (CamLog.VERBOSE) {
            CamLog.d("changeOnScreenSuperSlowMotionRecordingButtonInVideo()");
        }
        ViewFinderImpl$ScreenButtonHandler.access$5500(this.mScreenButtonHandler);
        this.mScreenButtonHandler.setMain(OnScreenButtonItemFactory$ButtonType.TRIGGER_SUPER_SLOW_MOTION, this.mRecordingOrientation, false);
        this.mScreenButtonHandler.setOption2(OnScreenButtonItemFactory$ButtonType.STOP_RECORDING_SMALL, this.mRecordingOrientation, false);
    }

    private void changeOnScreenStandardSlowMotionButtonInVideo() {
        if (CamLog.VERBOSE) {
            CamLog.d("changeOnScreenStandardSlowMotionButtonInVideo()");
        }
        ViewFinderImpl$ScreenButtonHandler.access$5500(this.mScreenButtonHandler);
        this.mScreenButtonHandler.setMain(createStartRecordingButton(), getOrientation(), true);
        ViewFinderImpl$ScreenButtonHandler.access$5600(this.mScreenButtonHandler);
    }

    private void changeOnScreenStandardSlowMotionButtonInVideoRecording() {
        if (CamLog.VERBOSE) {
            CamLog.d("changeOnScreenStandardSlowMotionButtonInVideoRecording()");
        }
        ViewFinderImpl$ScreenButtonHandler.access$5500(this.mScreenButtonHandler);
        this.mScreenButtonHandler.setMain(OnScreenButtonItemFactory$ButtonType.STOP_RECORDING_LARGE, this.mRecordingOrientation, false);
        ViewFinderImpl$ScreenButtonHandler.access$5600(this.mScreenButtonHandler);
    }

    private void changeOnScreenSuperSlowShotButtonInVideo() {
        if (CamLog.VERBOSE) {
            CamLog.d("changeOnScreenSuperSlowShotButtonInVideo()");
        }
        ViewFinderImpl$ScreenButtonHandler.access$5500(this.mScreenButtonHandler);
        this.mScreenButtonHandler.setMain(createStartRecordingButton(), getOrientation(), true);
        ViewFinderImpl$ScreenButtonHandler.access$5600(this.mScreenButtonHandler);
    }

    private void changeOnScreenCaptureButtonInVideoRecording() {
        if (CamLog.VERBOSE) {
            CamLog.d("changeOnScreenCaptureButtonInSelfTimerCountdown()");
        }
        VideoSize videoSize = (VideoSize) this.mStateMachine.getUserSetting().get(UserSettingKey.VIDEO_SIZE);
        if (!(videoSize != null && videoSize.isConstraint())) {
            this.mScreenButtonHandler.setOption1(OnScreenButtonItemFactory$ButtonType.PAUSE_RECORDING_SMALL, this.mRecordingOrientation, false);
            this.mScreenButtonHandler.setMain(OnScreenButtonItemFactory$ButtonType.STOP_RECORDING_LARGE, this.mRecordingOrientation, false);
            if (this.mActivity.isOneShotVideo()) {
                ViewFinderImpl$ScreenButtonHandler.access$5600(this.mScreenButtonHandler);
                return;
            } else if (((VideoHdr) this.mStateMachine.getUserSetting().get(UserSettingKey.VIDEO_HDR)) != VideoHdr.HDR_ON) {
                this.mScreenButtonHandler.setOption2(OnScreenButtonItemFactory$ButtonType.CAPTURE_SMALL, getOrientation(), true);
                return;
            } else {
                getBaseLayout().getOnScreenButtonGroup().clearOption2();
                return;
            }
        }
        ViewFinderImpl$ScreenButtonHandler.access$5500(this.mScreenButtonHandler);
        this.mScreenButtonHandler.setMain(OnScreenButtonItemFactory$ButtonType.STOP_RECORDING_LARGE, this.mRecordingOrientation, false);
        ViewFinderImpl$ScreenButtonHandler.access$5600(this.mScreenButtonHandler);
    }

    private void changeOnScreenCaptureButtonInVideoPausing() {
        if (CamLog.VERBOSE) {
            CamLog.d("changeOnScreenCaptureButtonInVideo()");
        }
        this.mScreenButtonHandler.setOption1(OnScreenButtonItemFactory$ButtonType.RESUME_RECORDING_SMALL, this.mRecordingOrientation, false);
        this.mScreenButtonHandler.setMain(OnScreenButtonItemFactory$ButtonType.STOP_RECORDING_IN_PAUSE_LARGE, this.mRecordingOrientation, false);
        VideoHdr videoHdr = (VideoHdr) this.mStateMachine.getUserSetting().get(UserSettingKey.VIDEO_HDR);
        if (this.mActivity.isOneShotVideo() || videoHdr == VideoHdr.HDR_ON) {
            ViewFinderImpl$ScreenButtonHandler.access$5600(this.mScreenButtonHandler);
        } else {
            this.mScreenButtonHandler.setOption2(OnScreenButtonItemFactory$ButtonType.CAPTURE_SMALL, getOrientation(), true);
        }
    }

    private void changeScreenButtonImage(ViewFinder$HeadUpDisplaySetupState viewFinder$HeadUpDisplaySetupState, boolean z) {
        if (CamLog.VERBOSE) {
            CamLog.d("state : " + viewFinder$HeadUpDisplaySetupState);
        }
        if (getBaseLayout() == null || getBaseLayout().getOnScreenButtonGroup() == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("Screen button group is not created.");
                return;
            }
            return;
        }
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState[viewFinder$HeadUpDisplaySetupState.ordinal()]) {
            case 1:
            case 2:
            case 3:
                if (z) {
                    changeOnScreenCaptureButtonInSelfTimerCoundDown();
                    break;
                } else {
                    switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[getCapturingMode().ordinal()]) {
                        case 1:
                            changeOnScreenCaptureButtonInAutoMain();
                            break;
                        case 2:
                            changeOnScreenCaptureButtonInAutoFront();
                            break;
                        case 5:
                            changeOnScreenCaptureButtonInManualMain();
                            break;
                        case 6:
                            changeOnScreenCaptureButtonInManualFront();
                            break;
                    }
                }
                break;
            case 4:
                changeOnScreenCaptureButtonInVideo();
                break;
            case 5:
                changeOnScreenCaptureButtonInVideoRecording();
                break;
            case 6:
                changeOnScreenSuperSlowMotionButtonInVideo();
                break;
            case 7:
                changeOnScreenSuperSlowMotionRecordingButtonInVideo();
                break;
            case 8:
                changeOnScreenStandardSlowMotionButtonInVideo();
                break;
            case 9:
                changeOnScreenStandardSlowMotionButtonInVideoRecording();
                break;
            case 10:
                changeOnScreenSuperSlowShotButtonInVideo();
                break;
            case 11:
                changeOnScreenCaptureButtonInVideoPausing();
                break;
            default:
                throw new IllegalStateException("ViewFinder.changeScreenButtonBackground():[Unexpected system bar status.] state = " + viewFinder$HeadUpDisplaySetupState);
        }
        if (isHeadUpDisplayReady()) {
            return;
        }
        getBaseLayout().getOnScreenButtonGroup().clearOption1();
        getBaseLayout().getOnScreenButtonGroup().clearOption2();
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public SelfTimer getPhotoSelfTimerSetting() {
        return this.mPhotoSelfTimerSetting;
    }

    private void setupInstantViewer() {
        if (this.mInstantViewer == null || this.mInstantViewer.getParent() == null) {
            if (isInflated()) {
                this.mInstantViewer = (InstantViewer) getPreInflatedView(LayoutAsyncInflateItems$CameraInflateItem.AUTO_REVIEW).get(0);
                this.mInstantViewer.setup(this.mActivity.getStoredSettings().getUserSettings());
            }
            if (this.mInstantViewer == null) {
                this.mInstantViewer = (InstantViewer) LayoutInflater.from(getActivity()).inflate(2131492936, (ViewGroup) null);
                this.mInstantViewer.setup(this.mActivity.getStoredSettings().getUserSettings());
            }
            getActivity().getWindow().addContentView(this.mInstantViewer, new WindowManager$LayoutParams(-1, -1));
        }
    }

    private boolean isFront() {
        return getCapturingMode().isFront();
    }

    private CapturingMode getCapturingMode() {
        return this.mStateMachine.getCurrentCapturingMode();
    }

    private boolean isNecessaryToReverseForAutoReview(StoreDataResult storeDataResult) {
        if ((storeDataResult.savingRequest instanceof PhotoSavingRequest) && ((PhotoSavingRequest) storeDataResult.savingRequest).photo.isFront()) {
            return storeDataResult.savingRequest.common.orientation == 90 || storeDataResult.savingRequest.common.orientation == 270;
        }
        return false;
    }

    private void setupAutoReview() {
        getBaseLayout().setupAutoReview();
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void hideAutoReview() {
        this.mIsAutoReviewRequested = false;
        if (getBaseLayout() != null) {
            getBaseLayout().hideAutoReview();
        }
        if (this.mSideTouchUi != null) {
            this.mSideTouchUi.destroyTo(SideTouchUi$Type.AUTO_REVIEW);
        } else {
            CamLog.e("Hiding the problem (mSideTouchUi = null). Modify the problem correctly.");
        }
        updateAllOverlayControlVisibility();
    }

    private void clickAutoReview(StoreDataResult storeDataResult) {
        SavingRequest savingRequest = storeDataResult.savingRequest;
        Content currentContent = getCurrentContent();
        clickThumbnail(storeDataResult.uri, savingRequest.common.mimeType, savingRequest.common.width, savingRequest.common.height, savingRequest.common.orientation, currentContent != null && currentContent.isMediaDataVerified());
    }

    private void openInstantViewer(byte[] bArr, String str, SavingRequest savingRequest) {
        if (CamLog.VERBOSE) {
            CamLog.d("openInstantViewer: " + savingRequest);
        }
        if (this.mInstantViewer != null) {
            if (!this.mInstantViewer.open(bArr, str, savingRequest.common.mimeType, 0, savingRequest.common.orientation, isFront(), new ViewFinderImpl$ReviewWindowListenerImpl(this, null), savingRequest.getRequestId())) {
                closeInstantViewer();
            } else {
                hideApplicationNavigator();
            }
        }
    }

    private void closeInstantViewer() {
        if (this.mInstantViewer != null && this.mInstantViewer.isOpened()) {
            this.mInstantViewer.hide();
        }
        hideAutoReview();
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public int getRequestId(boolean z) {
        int iCreateEmptyContentFrame;
        if (getBaseLayout().getContentsViewController() != null) {
            preparationForInstantViewer();
            if (z) {
                iCreateEmptyContentFrame = getBaseLayout().getContentsViewController().createContentFrame();
            } else {
                iCreateEmptyContentFrame = getBaseLayout().getContentsViewController().createEmptyContentFrame();
            }
        } else {
            iCreateEmptyContentFrame = -1;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("New request ID: " + iCreateEmptyContentFrame);
        }
        return iCreateEmptyContentFrame;
    }

    private void preparationForInstantViewer() {
        if (CamLog.VERBOSE) {
            CamLog.d("preparationForInstantViewer");
        }
        if (!this.mStateMachine.isRecording() && getBaseLayout().getContentsViewController() != null) {
            getBaseLayout().getContentsViewController().setClickThumbnailProgressListener(new ViewFinderImpl$OnClickThumbnailProgressListenerImpl(this, null));
        }
        if (this.mInstantViewer == null || this.mInstantViewer.isOpened()) {
            return;
        }
        this.mInstantViewer.clear();
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void startHideThumbnail() {
        if (CamLog.VERBOSE) {
            CamLog.d("startHideThumbnail: ");
        }
        if (getBaseLayout().getContentsViewController() == null) {
            return;
        }
        getBaseLayout().getContentsViewController().stopAnimation(false);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.mActivity, 2130772002);
        animationLoadAnimation.setAnimationListener(new ViewFinderImpl$20(this));
        getBaseLayout().getContentsViewController().startHideAnimation(animationLoadAnimation);
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder, com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface
    public void onCaptureDone() {
        if (isHeadUpDisplayReady()) {
            clearTouchedScreenButtonGroup();
            this.mFocusRectangles.onObjectFocused();
        }
    }

    private void startCaptureFeedbackAnimation() {
        if (CamLog.VERBOSE) {
            CamLog.d("startCaptureFeedbackAnimation()");
        }
        if (this.mCaptureFeedback != null) {
            this.mCaptureFeedback.start(CaptureFeedbackAnimationFactory.createDefaultAnimation());
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public boolean isTouchFocus() {
        if (this.mFocusRectangles == null) {
            return false;
        }
        return this.mFocusRectangles.isTouchFocus();
    }

    private boolean isZooming() {
        if (this.mLayoutPattern == null) {
            return false;
        }
        int i = ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern[((BaseLayoutPattern) this.mLayoutPattern).ordinal()];
        if (i == 2) {
            return true;
        }
        switch (i) {
        }
        return false;
    }

    private boolean isFocusing() {
        if (this.mLayoutPattern == null) {
            return false;
        }
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern[((BaseLayoutPattern) this.mLayoutPattern).ordinal()]) {
        }
        return false;
    }

    private void closeSettingDialog() {
        if (this.mSettingDialogStack.isDialogOpened()) {
            this.mSettingDialogStack.closeCurrentDialog();
        }
    }

    private boolean isAllDialogClosed() {
        if (this.mSettingDialogStack != null) {
            return (this.mSettingDialogStack.isDialogOpened() || this.mMessageDialog.isCurrentDialogInList(STORAGE_DIALOG_LIST)) ? false : true;
        }
        return true;
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public boolean isFlashAndSettingMenuOpened() {
        if (this.mSettingDialogStack != null) {
            return this.mSettingDialogStack.isShortcutDialogOpened() || this.mSettingDialogStack.isMenuDialogOpened();
        }
        return false;
    }

    private void updateUiComponent(ViewFinder$UiComponentKind viewFinder$UiComponentKind) {
        changeToDialogView(viewFinder$UiComponentKind);
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void requestInflate(LayoutInflater layoutInflater) {
        if (CamLog.VERBOSE) {
            CamLog.d("startInflateTask in");
        }
        startInflateTask(layoutInflater, FastLayoutAsyncInflateItems.getInflateItemsForFast());
        if (CamLog.VERBOSE) {
            CamLog.d("startInflateTask out");
        }
    }

    private void clearSurfaceView() {
        if (this.mEvf != null) {
            this.mEvf.clear();
        }
    }

    private ContentPallet$ThumbnailStateListener getThumbnailStateListener() {
        return new ViewFinderImpl$21(this);
    }

    private void clickThumbnail(Uri uri, String str, int i, int i2, int i3, boolean z) {
        int currentRequestId = getCurrentRequestId();
        if (CommonUtility.getDefaultGallery(this.mActivity.getApplicationContext(), uri, str) != CommonUtility$DefaultGallerySetting.SONY_ALBUM) {
            launchAlbum(uri, str, z);
            return;
        }
        if (this.mActivity.isDeviceInSecurityLock()) {
            launchAlbum(uri, str, z);
        } else if (prepareInstantViewer(uri)) {
            showInstantViewer(uri, str, i, i2, i3, currentRequestId);
            launchAlbum(uri, str, z);
        } else {
            launchAlbum(uri, str, z);
        }
    }

    private void showInstantViewer(Uri uri, String str, int i, int i2, int i3, int i4) {
        hideApplicationNavigator();
        hideAutoReview();
        this.mInstantViewer.open(this.mInstantViewer.isAlbumBitmapSetting() ? null : uri, str, 0, i3, isFront(), new ViewFinderImpl$ReviewWindowListenerImpl(this, null), i4);
    }

    private void launchAlbum(Uri uri, String str, boolean z) {
        if (this.mActivity.isDeviceInSecurityLock()) {
            List<Content$ContentInfo> localContentInfo = getBaseLayout().getContentsViewController().getLocalContentInfo();
            if (CamLog.VERBOSE) {
                CamLog.d("onClick : contentInfoList = " + localContentInfo.size());
            }
            if (localContentInfo.isEmpty()) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (Content$ContentInfo content$ContentInfo : localContentInfo) {
                arrayList.add(content$ContentInfo.mOriginalUri);
                arrayList2.add(content$ContentInfo.mMimeType);
                if (content$ContentInfo.mContentType == Content$ContentsType.BURST && content$ContentInfo.mGroupedImage > 0) {
                    Iterator<Long> it = content$ContentInfo.mMediaStoreIds.iterator();
                    while (it.hasNext()) {
                        arrayList3.add(it.next());
                    }
                } else {
                    arrayList3.add(Long.valueOf(content$ContentInfo.mId));
                }
            }
            long[] jArr = new long[arrayList3.size()];
            for (int i = 0; i < arrayList3.size(); i++) {
                jArr[i] = ((Long) arrayList3.get(i)).longValue();
            }
            InstantViewer.launchAlbumSecure(this.mActivity, arrayList, arrayList2, this.mStateMachine.getPredictiveCaptureStoreInfo(), jArr);
            return;
        }
        InstantViewer.launchAlbum(this.mActivity, uri, str, z, this.mStateMachine.getPredictiveCaptureStoreInfo());
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void setRecordingOrientation(int i) {
        this.mRecordingOrientation = i;
    }

    private void updateGeotagIcon() {
        if (getBaseLayout().getGeoTagIndicator() == null || this.mActivity == null || !needToShowGeoTagIndicator()) {
            return;
        }
        getBaseLayout().getGeoTagIndicator().set(GeotagManager.isGeoTagEnabled(this.mActivity.getStoredSettings().getUserSettings(), this.mActivity));
    }

    public void switchSemiAutoAvailability() {
        if (getBaseLayout().getSemiAutoControl().isInitialized() && getBaseLayout().getSemiAutoControl().get().isEnabled()) {
            disableSemiAutoControl();
        } else {
            enableSemiAutoControl(false);
        }
        if (this.mSettingDialogStack != null) {
            this.mSettingDialogStack.closeAllSettingDialogs();
        }
    }

    public void switchSemiAutoStateByTouch(boolean z) {
        if (this.mStateMachine == null || !this.mStateMachine.isMenuAvailable() || !isPreviewLayout(getCurrentLayoutPattern()) || isTouchCaptureEnabled() || isObjectTrackingEnabled() || isSmileShutterEnabled() || !isSemiAutoControlAvailable(getCapturingMode())) {
            return;
        }
        if (z) {
            enableSemiAutoControl(true);
        } else {
            disableSemiAutoControl();
        }
    }

    private boolean isSettingDialogOpened() {
        return this.mSettingDialogStack != null && this.mSettingDialogStack.isDialogOpened();
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void hideViews() {
        getBaseLayout().getPhotoSmileCaptureIndicator().hide();
        getBaseLayout().getSceneIndicator().hide();
        getBaseLayout().getConditionIndicator().hide();
        getBaseLayout().getGeoTagIndicator().hide();
        getBaseLayout().getLowMemoryInternalIndicator().hide();
        getBaseLayout().getLowMemorySdIndicator().hide();
        getBaseLayout().getThermalIndicator().hide();
        getBaseLayout().getBatteryIndicator().hide();
        if (this.mHintText != null) {
            this.mHintText.hide();
        }
        if (this.mFocusRectangles != null) {
            this.mFocusRectangles.onUiComponentOverlaid();
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void showViews() {
        getBaseLayout().getPhotoSmileCaptureIndicator().show();
        if (needToShowGeoTagIndicator()) {
            getBaseLayout().getGeoTagIndicator().show();
        }
        getBaseLayout().getLowMemoryInternalIndicator().show();
        getBaseLayout().getLowMemorySdIndicator().show();
        getBaseLayout().getThermalIndicator().show();
        getBaseLayout().getBatteryIndicator().show();
        this.mHintText.showAll();
        this.mFocusRectangles.onUiComponentRemoved();
    }

    private void onModeControllableDraggingMove(NavigatorContents navigatorContents, NavigatorContents navigatorContents2, int i, float f) {
        if (CamLog.VERBOSE) {
            CamLog.d("onModeControllableDraggingMove()  from:" + navigatorContents.name() + " to:" + navigatorContents2.name() + " distance:" + i + " progress:" + f);
        }
        setPreviewAlpha(i);
        if (i > 0) {
            setApplicationNavigatorPosition(navigatorContents, f);
        } else if (i < 0) {
            setApplicationNavigatorPosition(navigatorContents, -f);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void setupApplicationNavigator(ViewFinder$HeadUpDisplaySetupState viewFinder$HeadUpDisplaySetupState) {
        NavigatorContents navigatorContents;
        int i = ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState[viewFinder$HeadUpDisplaySetupState.ordinal()];
        if (i != 11) {
            switch (i) {
                case 1:
                case 2:
                case 3:
                    navigatorContents = NavigatorContents.SUPERIOR_AUTO;
                    break;
                case 4:
                case 5:
                    navigatorContents = NavigatorContents.VIDEO;
                    break;
                default:
                    navigatorContents = NavigatorContents.SUPERIOR_AUTO;
                    break;
            }
        }
        setupApplicationNavigator(this.mActivity, navigatorContents);
    }

    private void hideZoomBar() {
        setZoombarVisibility(false);
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public Rect getPosition(Point point) {
        if (CamLog.VERBOSE) {
            CamLog.d("getPosition(x, y) = (" + point.x + ", " + point.y + ")");
        }
        Rect rect = new Rect(0, 0, getActivity().getResources().getDimensionPixelSize(2131165338), getActivity().getResources().getDimensionPixelSize(2131165337));
        Rect rectConvertPositionToAligned = CoordinateUtil.convertPositionToAligned(point.x, point.y, this.mEvf.getRect(), this.mEvf.getRect(), rect.width(), rect.height());
        if (CamLog.VERBOSE) {
            CamLog.d("getPosition: " + rectConvertPositionToAligned);
        }
        return rectConvertPositionToAligned;
    }

    private void setLeftIconsVisibility(boolean z) {
        if (z) {
            getBaseLayout().showLeftIconContainer();
        } else {
            getBaseLayout().hideLeftIconContainer();
        }
    }

    private void setFrontAngleSwitchButtonVisibility(boolean z) {
        if (CamLog.VERBOSE) {
            CamLog.d("setFrontAngleSwitchButtonVisibility visible: " + z);
        }
        if (this.mFrontAngleSwitchButton == null) {
            return;
        }
        if (z) {
            this.mFrontAngleSwitchButton.setOnClickListener(this.mFrontAngleSwitchButtonClickListener);
            this.mFrontAngleSwitchButton.show();
        } else {
            this.mFrontAngleSwitchButton.hide();
            this.mFrontAngleSwitchButton.setOnClickListener(null);
        }
        this.mFrontAngleSwitchButton.setClickable(z);
    }

    private void setFrontAngleSwitchButtonClickable(boolean z) {
        if (this.mFrontAngleSwitchButton == null) {
            return;
        }
        this.mFrontAngleSwitchButton.setClickable(z);
    }

    private boolean prepareInstantViewer(Uri uri) {
        return this.mInstantViewer.setAlbumBitmap(uri);
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void prepareGestureShutterCountDown() {
        if (this.mPhotoSelfTimerSetting == SelfTimer.OFF) {
            this.mPhotoSelfTimerSetting = SelfTimer.GESTURE_SHUTTER_COUNT_DOWN;
            if (this.mSelfTimerCountDownViewNext == null) {
                setupSelfTimerCountDownView();
            }
            this.mSelfTimerCountDownViewNext.setSelfTimer(this.mPhotoSelfTimerSetting);
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void setShutterTrigger(ShutterTrigger shutterTrigger) {
        this.mShutterTrigger = shutterTrigger;
        applyShutterTriggerSettings();
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void updateVideoShutterTrigger() {
        applyShutterTriggerSettings();
    }

    private void applyShutterTriggerSettings() {
        this.mStateMachine.sendStaticEvent(StateMachine$StaticEvent.EVENT_ON_GESTURE_SHUTTER_SETTING_CHANGED, Boolean.valueOf(this.mShutterTrigger.isGestureShutterOn()));
        SmileCapture smileCapture = (SmileCapture) this.mStateMachine.getUserSetting().get(UserSettingKey.SMILE_CAPTURE);
        VideoSmileCapture videoSmileCapture = (VideoSmileCapture) this.mStateMachine.getUserSetting().get(UserSettingKey.VIDEO_SMILE_CAPTURE);
        if (getBaseLayout() == null || smileCapture == null || videoSmileCapture == null) {
            return;
        }
        getBaseLayout().getPhotoSmileCaptureIndicator().set(smileCapture.isSmileCaptureOn());
        getBaseLayout().getPhotoSmileCaptureIndicator().setBackgroundResource(smileCapture.getNotificationIconId());
        getBaseLayout().getVideoSmileCaptureIndicator().set(videoSmileCapture.isSmileCaptureOn());
        getBaseLayout().getVideoSmileCaptureIndicator().setBackgroundResource(videoSmileCapture.getNotificationIconId());
        applySmileFocusThreshold(true);
    }

    private void applySmileFocusThreshold(boolean z) {
        if (this.mFocusRectangles != null) {
            int dimenId = -1;
            if (z) {
                SmileCapture smileCapture = (SmileCapture) this.mStateMachine.getUserSetting().get(UserSettingKey.SMILE_CAPTURE);
                VideoSmileCapture videoSmileCapture = (VideoSmileCapture) this.mStateMachine.getUserSetting().get(UserSettingKey.VIDEO_SMILE_CAPTURE);
                if (smileCapture != SmileCapture.OFF && !isZooming() && !isInSelfTimerCountDown()) {
                    dimenId = smileCapture.getDimenId();
                }
                if (videoSmileCapture != VideoSmileCapture.OFF && !isZooming() && !isInSelfTimerCountDown() && this.mStateMachine.isRecording()) {
                    dimenId = videoSmileCapture.getDimenId();
                }
            }
            this.mFocusRectangles.setSmileCaptureThreshold(dimenId);
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void showSurface() {
        if (this.mEvf.isShown()) {
            return;
        }
        this.mEvf.show();
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void hideSurface() {
        this.mEvf.hide();
    }

    public void reconstructLocalCache() {
        if (getBaseLayout() == null || getBaseLayout().getContentsViewController() == null) {
            return;
        }
        getBaseLayout().getContentsViewController().reconstructLocalCache();
    }

    public void saveLocalCache() {
        if (getBaseLayout() == null || getBaseLayout().getContentsViewController() == null) {
            return;
        }
        getBaseLayout().getContentsViewController().saveLocalCache();
    }

    public void requestCreateContentInfoSync(ArrayList<Uri> arrayList) {
        if (getBaseLayout() == null || getBaseLayout().getContentsViewController() == null) {
            return;
        }
        getBaseLayout().getContentsViewController().requestCreateContentInfoSync(arrayList);
    }

    private void checkupThermalCoolingRequest() {
        if (PlatformCapability.isPowerSavingSupported(this.mStateMachine.getCurrentCameraId())) {
            if (this.mActivity.isThermalWarningReceived()) {
                this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_ON_HEATED_OVER_COOLING_ULTRA_LOW, new Object[0]);
            } else if (this.mActivity.isThermalWarningExtraState()) {
                this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_ON_HEATED_OVER_COOLING_LOW, new Object[0]);
            }
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void onNotifyCoolingUltraLow(boolean z) {
        if (getCapturingMode() == CapturingMode.SLOW_MOTION) {
            return;
        }
        updateThermalHintTextMessage(getCapturingMode());
        if (z && !isZooming()) {
            showHintTextIfNeeded();
        } else {
            this.mHintText.hide();
        }
        if (this.mFocusRectangles != null) {
            this.mFocusRectangles.clearObjectTracking();
            this.mFocusRectangles.clearFaceDetection();
        }
        if (getBaseLayout().getSceneIndicator() != null) {
            getBaseLayout().getSceneIndicator().set(false);
        }
        if (getBaseLayout().getConditionIndicator() != null) {
            getBaseLayout().getConditionIndicator().set(false);
        }
    }

    private void onNotifyThermalStatus(boolean z) {
        if (getBaseLayout().getThermalIndicator() != null) {
            getBaseLayout().getThermalIndicator().set(z);
        }
        if (!z && this.mActivity.isThermalWarningReceived()) {
            updateThermalHintTextMessage(getCapturingMode());
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void postSlowMotionHintText() {
        HintTextContent hintTextSuperSlowMotion;
        SlowMotion slowMotion = (SlowMotion) this.mStateMachine.getUserSetting().get(UserSettingKey.SLOW_MOTION);
        if (this.mHintText == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("postSlowMotionHintText: hint text is null");
                return;
            }
            return;
        }
        cancelSlowMotionHintText();
        if (slowMotion == SlowMotion.OFF) {
            return;
        }
        HintTextContent hintTextSuperSlowMotionDescription = null;
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[slowMotion.ordinal()]) {
            case 1:
                hintTextSuperSlowMotion = new HintTextSuperSlowMotion();
                break;
            case 2:
                hintTextSuperSlowMotion = new HintTextSuperSlowShot();
                break;
            case 3:
                hintTextSuperSlowMotion = new HintTextStandardSlowMotion();
                break;
            default:
                hintTextSuperSlowMotion = null;
                break;
        }
        postHintText(hintTextSuperSlowMotion);
        if (this.mIsAlreadySlowMotionLearnMoreButtonDisplayed) {
            return;
        }
        this.mIsAlreadySlowMotionLearnMoreButtonDisplayed = true;
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[slowMotion.ordinal()]) {
            case 1:
                hintTextSuperSlowMotionDescription = new HintTextSuperSlowMotionDescription(getBaseLayout().getTutorial(), this.mActivity);
                break;
            case 2:
                hintTextSuperSlowMotionDescription = new HintTextSuperSlowShotDescription(getBaseLayout().getTutorial(), this.mActivity);
                break;
            case 3:
                hintTextSuperSlowMotionDescription = new HintTextStandardSlowMotionDescription(getBaseLayout().getTutorial(), this.mActivity);
                break;
        }
        postHintText(hintTextSuperSlowMotionDescription);
    }

    private void postHintText(HintTextContent hintTextContent) {
        if (this.mHintText != null) {
            this.mHintText.post(hintTextContent);
            updateVisibilityForSpecificDisplaySize();
        }
    }

    private void cancelSlowMotionHintText() {
        if (this.mHintText != null) {
            this.mHintText.cancel(HintTextSuperSlowMotion.class.getSimpleName());
            this.mHintText.cancel(HintTextSuperSlowMotionDescription.class.getSimpleName());
            this.mHintText.cancel(HintTextSuperSlowShot.class.getSimpleName());
            this.mHintText.cancel(HintTextSuperSlowShotDescription.class.getSimpleName());
            this.mHintText.cancel(HintTextStandardSlowMotion.class.getSimpleName());
            this.mHintText.cancel(HintTextStandardSlowMotionDescription.class.getSimpleName());
        }
    }

    private void showSuperSlowMotionVideoRecordingHintText() {
        if (this.mStateMachine.getUserSetting().get(UserSettingKey.SLOW_MOTION) == SlowMotion.SUPER_SLOW_MOTION) {
            this.mHintText.cancel(HintTextSuperSlowMotionVideoRecording.createTag(true));
            postHintText(new HintTextSuperSlowMotionVideoRecording(false));
        }
    }

    private void updateAllOverlayControlVisibility() {
        updateOverlayControlVisibility(getBaseLayout().getImageQualityControl());
        updateOverlayControlVisibility(getBaseLayout().getSemiAutoControl());
    }

    private void updateOverlayControlVisibility(BaseLayout$LazyInitializer<OverlayControl> baseLayout$LazyInitializer) {
        if (baseLayout$LazyInitializer.isInitialized()) {
            if (isAutoReviewShowing() || this.mIsAutoReviewRequested) {
                baseLayout$LazyInitializer.get().hide();
            } else if (isPreviewLayout(getCurrentLayoutPattern()) || getCurrentLayoutPattern() == BaseLayoutPattern.OVERLAY_CONTROL_SEEKING) {
                baseLayout$LazyInitializer.get().show();
            } else {
                baseLayout$LazyInitializer.get().hide();
            }
        }
    }

    private void updateVisibilityForSpecificDisplaySize() {
        if (isInLargerOrMoreDisplaySizeOr16_9Device()) {
            BaseLayout$LazyInitializer<OverlayControl> semiAutoControl = getBaseLayout().getSemiAutoControl();
            if (semiAutoControl.isInitialized() && (semiAutoControl.get().isVisible() || (semiAutoControl.get().isEnabled() && (this.mIsAutoReviewRequested || isAutoReviewShowing())))) {
                hideApplicationNavigator();
                hideMruButtonContainer();
                return;
            } else if (this.mHintText != null && this.mHintText.isNoTimeOutHinTextDisplayed() && this.mOrientation == 1 && getCurrentLayoutPattern() != BaseLayoutPattern.MODE_CHANGING) {
                hideApplicationNavigator();
                hideMruButtonContainer();
                return;
            }
        }
        if (isPreviewLayout(getCurrentLayoutPattern()) || getCurrentLayoutPattern() == BaseLayoutPattern.MODE_CHANGING) {
            showApplicationNavigator();
            showMruButtonContainer();
        }
    }

    private boolean isInLargerOrMoreDisplaySizeOr16_9Device() {
        return this.mBaseLayout.isInLargerOrMoreDisplaySize() || this.mScreenAspect == LayoutDependencyResolver$ScreenAspect.SIXTEEN_NINE;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x007b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0030 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateSecondaryShortcutOnScreenButtonResource() {
        String string;
        if (getBaseLayout() == null || getBaseLayout().getOnScreenButtonGroup() == null) {
            return;
        }
        CapturingMode capturingMode = getCapturingMode();
        if ((capturingMode == CapturingMode.NORMAL || capturingMode == CapturingMode.FRONT_PHOTO) && this.mImageQualityControlButtonItem != null) {
            StringBuilder sb = new StringBuilder();
            boolean z = false;
            for (UserSettingKey userSettingKey : ImageQualityControl.KEYS) {
                if (this.mStateMachine.getUserSetting().get(userSettingKey) != SettingUi.getImageQualityControlDefaultValue(userSettingKey)) {
                    z = true;
                }
                int imageQualityControlTabDescription = -1;
                if (userSettingKey.isSelectable()) {
                    if (capturingMode == CapturingMode.NORMAL) {
                        imageQualityControlTabDescription = SettingUi.getImageQualityControlTabDescription(userSettingKey);
                    } else if (capturingMode == CapturingMode.FRONT_PHOTO) {
                        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[userSettingKey.ordinal()]) {
                            case 6:
                            case 7:
                                imageQualityControlTabDescription = SettingUi.getImageQualityControlTabDescription(userSettingKey);
                            default:
                                string = getString(imageQualityControlTabDescription);
                                if (TextUtils.isEmpty(string)) {
                                    sb.append(" ");
                                    sb.append(string);
                                }
                                break;
                        }
                    }
                    string = getString(imageQualityControlTabDescription);
                    if (TextUtils.isEmpty(string)) {
                    }
                }
            }
            this.mImageQualityControlButtonItem.update().icon(z ? 2131231032 : 2131231031).text(sb.toString()).commit();
        }
        if (capturingMode != CapturingMode.NORMAL || this.mHighSensitivityFusionButtonItem == null) {
            return;
        }
        boolean z2 = this.mStateMachine.getUserSetting().get(UserSettingKey.FUSION_MODE) == FusionMode.ON;
        this.mHighSensitivityFusionButtonItem.update().icon(z2 ? 2131231065 : 2131231064).description(z2 ? 2131689574 : 2131689573).commit();
    }

    private String getString(int i) {
        return ResourceUtil.getString(getActivity(), i);
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void setSelfTimer(CapturingMode capturingMode, SelfTimer selfTimer) {
        if (CamLog.VERBOSE) {
            CamLog.d("setSelfTimer: " + capturingMode + " " + selfTimer);
        }
        if (this.mActivity.isOneShotVideo()) {
            return;
        }
        if (selfTimer == null) {
            selfTimer = SelfTimer.OFF;
        }
        this.mPhotoSelfTimerSetting = selfTimer;
        setupSelfTimerCountDownView();
    }

    private boolean isRecording() {
        if (this.mLayoutPattern == null) {
            return false;
        }
        int i = ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayoutPattern[((BaseLayoutPattern) this.mLayoutPattern).ordinal()];
        return i == 1 || i == 3;
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void commit() {
        ViewFinder$HeadUpDisplaySetupState viewFinder$HeadUpDisplaySetupState = ViewFinder$HeadUpDisplaySetupState.PHOTO_READY;
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[getCapturingMode().ordinal()]) {
            case 1:
            case 2:
            case 5:
            case 6:
                viewFinder$HeadUpDisplaySetupState = ViewFinder$HeadUpDisplaySetupState.PHOTO_READY;
                break;
            case 3:
            case 4:
                if (isRecording()) {
                    if (this.mLayoutPattern == BaseLayoutPattern.RECORDING) {
                        viewFinder$HeadUpDisplaySetupState = ViewFinder$HeadUpDisplaySetupState.VIDEO_RECORDING;
                    } else {
                        viewFinder$HeadUpDisplaySetupState = ViewFinder$HeadUpDisplaySetupState.VIDEO_PAUSING;
                    }
                } else {
                    viewFinder$HeadUpDisplaySetupState = ViewFinder$HeadUpDisplaySetupState.VIDEO_READY;
                }
                break;
            case 7:
                switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[((SlowMotion) this.mStateMachine.getUserSetting().get(UserSettingKey.SLOW_MOTION)).ordinal()]) {
                    case 1:
                        if (isRecording()) {
                            viewFinder$HeadUpDisplaySetupState = ViewFinder$HeadUpDisplaySetupState.SUPER_SLOW_MOTION_RECORDING;
                        } else {
                            viewFinder$HeadUpDisplaySetupState = ViewFinder$HeadUpDisplaySetupState.SUPER_SLOW_MOTION_STANDBY;
                        }
                        break;
                    case 2:
                        viewFinder$HeadUpDisplaySetupState = ViewFinder$HeadUpDisplaySetupState.SUPER_SLOW_SHOT_STANDBY;
                        break;
                    case 3:
                        if (isRecording()) {
                            viewFinder$HeadUpDisplaySetupState = ViewFinder$HeadUpDisplaySetupState.STANDARD_SLOW_MOTION_RECORDING;
                        } else {
                            viewFinder$HeadUpDisplaySetupState = ViewFinder$HeadUpDisplaySetupState.STANDARD_SLOW_MOTION_STANDBY;
                        }
                        break;
                }
                break;
            default:
                viewFinder$HeadUpDisplaySetupState = ViewFinder$HeadUpDisplaySetupState.PHOTO_READY;
                break;
        }
        if (getCurrentLayoutPattern() != BaseLayoutPattern.SELFTIMER) {
            changeScreenButtonImage(viewFinder$HeadUpDisplaySetupState, false);
        }
        updateSecondaryShortcutOnScreenButtonResource();
        if (this.mIsSurfaceViewHideWhileAspectChanging) {
            this.mEvf.show();
            this.mIsSurfaceViewHideWhileAspectChanging = false;
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void updateFocusIconType(boolean z) {
        this.mFocusRectangles.setFocusIconType(z);
    }

    private boolean isAutoReviewEnabled() {
        if (this.mActivity.isOneShot() || getCapturingMode().isVideo()) {
            return false;
        }
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview[((AutoReview) this.mActivity.getStoredSettings().getUserSettings().get(UserSettingKey.AUTO_REVIEW)).ordinal()]) {
        }
        return false;
    }

    public void closeDialogs() {
        if (this.mSettingUi != null) {
            this.mSettingUi.closeDialogs();
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void setIsCameraSwitching(boolean z) {
        getBaseLayout().setIsCameraSwitching(z);
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public boolean isCameraSwitching() {
        return getBaseLayout().isCameraSwitching();
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void updateBatteryIndicator(int i) {
        getBaseLayout().getBatteryIndicator().setBatteryLevel(i);
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void showSavingProgressBar() {
        if (isHeadUpDisplayReady()) {
            ViewFinderImpl$ScreenButtonHandler.access$7300(this.mScreenButtonHandler);
        }
        if (this.mSavingProgressBar == null) {
            int dimensionPixelSize = this.mActivity.getResources().getDimensionPixelSize(2131165547);
            this.mSavingProgressBar = new ProgressBar(this.mActivity);
            FrameLayout$LayoutParams frameLayout$LayoutParams = new FrameLayout$LayoutParams(dimensionPixelSize, dimensionPixelSize);
            frameLayout$LayoutParams.gravity = 17;
            this.mActivity.getWindow().addContentView(this.mSavingProgressBar, frameLayout$LayoutParams);
        }
        this.mSavingProgressBar.setVisibility(0);
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void hideSavingProgressBar() {
        if (this.mSavingProgressBar != null) {
            this.mSavingProgressBar.setVisibility(8);
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void startPredictiveCaptureIndicatorAnimation() {
        getBaseLayout().getPredictiveCaptureIndicatorController().startAnimation();
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void cancelPredictiveCaptureIndicatorAnimation() {
        if (getBaseLayout().getPredictiveCaptureIndicatorController() != null) {
            getBaseLayout().getPredictiveCaptureIndicatorController().cancelAnimation();
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void updateSlowMotionView(SlowMotion slowMotion) {
        this.mIsAlreadySlowMotionLearnMoreButtonDisplayed = false;
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[slowMotion.ordinal()]) {
            case 1:
                changeScreenButtonImage(ViewFinder$HeadUpDisplaySetupState.SUPER_SLOW_MOTION_STANDBY, false);
                break;
            case 2:
                changeScreenButtonImage(ViewFinder$HeadUpDisplaySetupState.SUPER_SLOW_SHOT_STANDBY, false);
                break;
            case 3:
                changeScreenButtonImage(ViewFinder$HeadUpDisplaySetupState.STANDARD_SLOW_MOTION_STANDBY, false);
                break;
        }
        disableSemiAutoControl();
        if (getBaseLayout() != null) {
            disableOverlayControl(getBaseLayout().getImageQualityControl());
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void startSlowMotionFeedbackAnimation() {
        getBaseLayout().getSuperSlowMotionTriggerAnimation().start(new ViewFinderImpl$22(this), this.mRecordingOrientation == 2);
    }

    private void showHintTextIfNeeded() {
        if ((!isOverlayControlEnabled() || this.mStateMachine.isRecording()) && this.mHintText != null) {
            this.mHintText.showAll();
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void showBlank() {
        this.mBaseLayout.setupBlankScreen();
        this.mBaseLayout.showBlankScreen();
    }

    private boolean isOverlayControlEnabled() {
        if (getBaseLayout().getSemiAutoControl().isInitialized() && getBaseLayout().getSemiAutoControl().get().isEnabled()) {
            return true;
        }
        return getBaseLayout().getImageQualityControl().isInitialized() && getBaseLayout().getImageQualityControl().get().isEnabled();
    }

    private boolean isOverlayControlVisible() {
        if (getBaseLayout().getSemiAutoControl().isInitialized() && getBaseLayout().getSemiAutoControl().get().isVisible()) {
            return true;
        }
        return getBaseLayout().getImageQualityControl().isInitialized() && getBaseLayout().getImageQualityControl().get().isVisible();
    }

    public boolean isSemiAutoEnabled() {
        return getBaseLayout().getSemiAutoControl().isInitialized() && getBaseLayout().getSemiAutoControl().get().isEnabled();
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public boolean isAutoReviewShowing() {
        if (this.mSideTouchUi != null) {
            return getBaseLayout().isAutoReviewShowing() || this.mSideTouchUi.containsIn(SideTouchUi$Type.AUTO_REVIEW);
        }
        return getBaseLayout().isAutoReviewShowing();
    }

    private boolean isPaused() {
        return this.mIsPaused;
    }

    private void resume(CapturingMode capturingMode, NavigatorContents navigatorContents) {
        this.mIsPaused = false;
        if (isHeadUpDisplayReady()) {
            setApplicationNavigatorEnabled(false);
            if (this.mAnimationController != null) {
                this.mAnimationController.resume();
            }
        }
        if (this.mBaseLayout != null && this.mBaseLayout.getContentsViewController() != null) {
            this.mBaseLayout.getContentsViewController().remove();
        }
        if (isHeadUpDisplayReady()) {
            this.mBaseLayout.setupBlankScreen();
        }
        this.mBaseLayout.resume();
    }

    private void pause() {
        this.mIsPaused = true;
        if (isHeadUpDisplayReady()) {
            disableSemiAutoControl();
            disableOverlayControl(getBaseLayout().getImageQualityControl());
        }
        if (this.mAnimationController != null) {
            this.mAnimationController.pause();
            setIsSwitchingAnimationProgress(false);
        }
        this.mBaseLayout.pause();
        if (this.mInstantViewer != null) {
            this.mInstantViewer.releaseAlbumPreloader();
        }
        TutorialController tutorial = getBaseLayout().getTutorial();
        if (tutorial != null) {
            LocalResearchUtil.getInstance().sendSetupWizardEvent(Event$WizardResult.OTHER);
            LocalResearchUtil.getInstance().closeSetupWizard();
            tutorial.pause();
        }
        if (this.mAnimationController != null) {
            this.mAnimationController.pause();
        }
        if (this.mHintText != null) {
            this.mHintText.clearAll();
        }
        this.mDelayUpdatedViewTaskList.clear();
    }

    private static boolean isSemiAutoControlAvailable(CapturingMode capturingMode) {
        int i = ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()];
        if (i == 7) {
            return true;
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
                return true;
            default:
                return false;
        }
    }

    private void onAppsUiModeFinish() {
        if (!getActivity().isInLockTaskMode()) {
            changeLayoutTo(BaseLayoutPattern.CLEAR);
            if (this.mSettingDialogStack != null) {
                this.mSettingDialogStack.closeAllSettingDialogs(false);
            }
        }
        this.mActivity.abort();
    }

    private void setupTransitionAnimationController(CameraActivity cameraActivity, ViewFinder$HeadUpDisplaySetupState viewFinder$HeadUpDisplaySetupState) {
        if (this.mAnimationController == null) {
            this.mAnimationController = new TransitionAnimationController(this.mApplicationNavigator, getBaseLayout().getPrimaryShortcut().getAllPrimaryShortcutView(), cameraActivity.findViewById(2131296632), cameraActivity.findViewById(2131296396), cameraActivity.findViewById(2131296460), cameraActivity.findViewById(2131296433), getBaseLayout().getGridLineView(), getBaseLayout().getModeButtonShortcut(), getBaseLayout().getMruButtonContainer(), cameraActivity.findViewById(2131296370), getBaseLayout().getFrontAngleSwitchButton(), this.mBaseLayout.getSwitchAnimationView());
        }
        this.mAnimationController.resume();
        if (this.mPreviewCover == null) {
            this.mPreviewCover = getActivity().findViewById(2131296433);
        }
        this.mPreviewCover.setAlpha(0.0f);
        this.mPreviewCover.setVisibility(0);
    }

    private void startModeChangedAnimation(CapturingMode capturingMode, CapturingMode capturingMode2, AnimationRequest$AnimationType animationRequest$AnimationType) {
        if (!requestAnimation(new AnimationRequest(animationRequest$AnimationType, AnimationRequest$AnimationDegree.FINISH, capturingMode, capturingMode2)) || this.mApplicationNavigator == null) {
            return;
        }
        this.mApplicationNavigator.resetContentDescriptionForModeName();
    }

    private void showApplicationNavigator() {
        if (this.mApplicationNavigator != null) {
            this.mApplicationNavigator.show();
        }
    }

    private void hideApplicationNavigator() {
        if (this.mApplicationNavigator != null) {
            this.mApplicationNavigator.hide();
        }
    }

    private void showMruButtonContainer() {
        if (getBaseLayout().getMruButtonContainer() != null) {
            getBaseLayout().getMruButtonContainer().show();
        }
    }

    private void hideMruButtonContainer() {
        if (getBaseLayout().getMruButtonContainer() != null) {
            getBaseLayout().getMruButtonContainer().hide();
        }
    }

    private void resumeApplicationNavigator(NavigatorContents navigatorContents) {
        boolean zIsOneShot = getActivity().isOneShot();
        if (this.mApplicationNavigator != null) {
            setApplicationNavigatorEnabled(!zIsOneShot);
            if (zIsOneShot) {
                return;
            }
            this.mApplicationNavigator.resume(navigatorContents);
        }
    }

    private void setApplicationNavigatorEnabled(boolean z) {
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[getCapturingMode().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                break;
            default:
                z = false;
                break;
        }
        if (predictiveLaunchCoverExists()) {
            z = false;
        }
        if (this.mApplicationNavigator != null) {
            this.mApplicationNavigator.setNavigationEnabled(z);
        }
    }

    private void setupApplicationNavigator(CameraActivity cameraActivity, NavigatorContents navigatorContents) {
        if (this.mApplicationNavigator == null) {
            this.mApplicationNavigator = (ApplicationNavigator) cameraActivity.findViewById(2131296293);
            FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) this.mApplicationNavigator.getLayoutParams();
            ViewFinderImpl$23 viewFinderImpl$23 = new ViewFinderImpl$23(this);
            frameLayout$LayoutParams.rightMargin = this.mBaseLayout.calculateCaptureButtonAreaHeight();
            this.mApplicationNavigator.setLayoutParams(frameLayout$LayoutParams);
            this.mApplicationNavigator.setup(navigatorContents, getBaseLayout().getViewFinderRect(), this.mBaseLayout.calculateCaptureButtonAreaHeight(), viewFinderImpl$23);
            this.mApplicationNavigator.setOrientation(this.mOrientation);
        }
        resumeApplicationNavigator(navigatorContents);
    }

    private void setupCaptureButtonArea() {
        FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) this.mActivity.findViewById(2131296534).getLayoutParams();
        frameLayout$LayoutParams.width = this.mBaseLayout.calculateCaptureButtonAreaHeight();
        this.mActivity.findViewById(2131296534).setLayoutParams(frameLayout$LayoutParams);
    }

    private void setupRightIndicatorArea() {
        FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) this.mActivity.findViewById(2131296445).getLayoutParams();
        frameLayout$LayoutParams.rightMargin = this.mBaseLayout.calculateCaptureButtonAreaHeight();
        this.mActivity.findViewById(2131296445).setLayoutParams(frameLayout$LayoutParams);
    }

    private void setApplicationNavigatorPosition(NavigatorContents navigatorContents, float f) {
        this.mApplicationNavigator.setDraggingPosition(navigatorContents, f);
    }

    private void setPreviewAlpha(int i) {
        this.mPreviewCover.setAlpha(TransitionAnimationController.getPreviewAlpha(getActivity(), i));
    }

    public static CapturingMode getCapturingMode(NavigatorContents navigatorContents, CapturingMode capturingMode) {
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$NavigatorContents[navigatorContents.ordinal()]) {
            case 1:
                if (!capturingMode.isFront()) {
                }
                break;
            case 2:
                if (!capturingMode.isFront()) {
                }
                break;
        }
        return CapturingMode.SCENE_RECOGNITION;
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void setStartDraggingSlopEnabled(boolean z) {
        getBaseLayout().setStartDraggingSlopEnabled(z);
    }

    private void setZoombarVisibility(boolean z) {
        Zoombar zoomBar = getBaseLayout().getZoomBar();
        if (zoomBar != null) {
            if (z) {
                zoomBar.showImmediately();
            } else {
                zoomBar.hideImmediately();
            }
        }
    }

    private boolean startDraggingSwitchStartedAnimation() {
        if (!this.mAnimationController.requestAnimation(new AnimationRequest(AnimationRequest$AnimationType.SWITCH_TOUCH, AnimationRequest$AnimationDegree.START, getCapturingMode(), getCapturingMode()))) {
            return false;
        }
        this.mBaseLayout.computeRadiusOfAnimation();
        return true;
    }

    private void startDraggingSwitchAnimation(float f) {
        if (this.mAnimationController.startSwitchDraggingAnimation(f)) {
            this.mPreviewCover.setAlpha(f);
        }
    }

    private void resetAnimationProperty() {
        this.mAnimationController.resume();
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public boolean isSwitchingAnimationProgress() {
        return this.mIsSwitchingAnimationProgress;
    }

    private void setIsSwitchingAnimationProgress(boolean z) {
        this.mIsSwitchingAnimationProgress = z;
    }

    private void setupHintText() {
        FrameLayout hintTextViewContainer;
        if (this.mHintText != null || (hintTextViewContainer = getBaseLayout().getHintTextViewContainer()) == null) {
            return;
        }
        this.mHintText = new HintTextViewController(hintTextViewContainer, new ViewFinderImpl$HintTextListenerImpl(this), this.mScreenAspect);
        updateHintTextUiOrientation();
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void clearHintText() {
        if (this.mHintText != null) {
            this.mHintText.clearAll();
        }
    }

    private void updateThermalHintTextMessage(CapturingMode capturingMode) {
        if (this.mHintText == null || capturingMode == CapturingMode.SLOW_MOTION) {
            return;
        }
        postHintText(new HintTextThermalWarning());
    }

    private Content getCurrentContent() {
        ContentsViewController contentsViewController = getBaseLayout().getContentsViewController();
        if (contentsViewController == null) {
            CamLog.w("getCurrentContent() contentsViewController is null.");
            return null;
        }
        return contentsViewController.getCurrentContent();
    }

    private int getCurrentRequestId() {
        ContentsViewController contentsViewController = getBaseLayout().getContentsViewController();
        if (contentsViewController == null) {
            CamLog.w("getCurrentRequestId() contentsViewController is null.");
            return -1;
        }
        return contentsViewController.getCurrentRequestId();
    }

    private CameraActivity getActivity() {
        return this.mActivity;
    }

    private BaseLayout getBaseLayout() {
        return this.mBaseLayout;
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder, com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface
    public boolean isHeadUpDisplayReady() {
        return this.mBaseLayout != null && this.mBaseLayout.isHeadUpDisplayReady();
    }

    private void requestToRecoverSystemUi() {
        getBaseLayout().requestToRecoverSystemUi();
    }

    private void requestToDimSystemUi() {
        getBaseLayout().requestToDimSystemUi();
    }

    private void requestToRestoreSystemUi() {
        getBaseLayout().requestToRestoreSystemUi();
    }

    private boolean isAcquired() {
        return this.mActivity.getGeoTagManager().isNetworkAcquired() | this.mActivity.getGeoTagManager().isGpsAcquired();
    }

    private void setPreInflatedHeadUpDisplay(View view) {
        this.mPreInflatedHeadUpDisplay = view;
    }

    private void requestSetupHeadUpDisplay() {
        setupHeadUpDisplay();
        if (CamLog.VERBOSE) {
            MeasurePerformance.outResultDelay(1000);
        }
    }

    private void setZoomRatio(int i) {
        if (isHeadUpDisplayReady()) {
            if (CamLog.VERBOSE) {
                CamLog.d("setZoomRatio() current:" + i);
            }
            this.mZoomBarProxy.update(PlatformCapability.getZoomRatios(this.mStateMachine.getCurrentCameraId()), i);
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder, com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface
    public void onShutterDone(boolean z) {
        if (isHeadUpDisplayReady()) {
            clearTouchedScreenButtonGroup();
        }
    }

    private void createViewFinder(CameraActivity cameraActivity, LayoutPatternApplier layoutPatternApplier, boolean z) {
        this.mActivity = cameraActivity;
        this.mLayoutPatternApplier = layoutPatternApplier;
        if (z) {
            return;
        }
        initialize();
    }

    public void initialize() {
        this.mBaseLayout = new BaseLayout(this.mActivity, this.mScreenAspect);
        this.mActivity.addOrienationListener(this);
    }

    private void setupHeadUpDisplay() {
        if (CamLog.VERBOSE) {
            CamLog.d("setupHeadUpDisplay() is called.");
        }
        boolean z = this.mPreInflatedHeadUpDisplay == null;
        if (this.mPreInflatedHeadUpDisplay != null) {
            this.mBaseLayout.setPreInflatedHeadUpDisplay(this.mPreInflatedHeadUpDisplay);
            this.mPreInflatedHeadUpDisplay = null;
        }
        this.mBaseLayout.setOrientation(this.mActivity.getOrientation());
        this.mBaseLayout.setup(getThumbnailStateListener());
        this.mBaseLayout.getTutorial().setOnClickTutorialButtonListener(this.mOnClickTutorialButtonListener);
        this.mBaseLayout.getTutorial().setSystemUiAccessor(this.mSystemUiAccessor);
        UserSettings userSetting = this.mStateMachine.getUserSetting();
        this.mBaseLayout.setupImageQualityControl(this.mUiControlSettings, new ViewFinderImpl$OverlayControlStateListener(this, ViewFinder$UiComponentKind.OVERLAY_CONTROL_SEEKING), new ViewFinderImpl$EnumValueAccessorImpl(userSetting, UserSettingKey.CAPTURING_MODE, null), new ViewFinderImpl$EnumValueAccessorImpl(userSetting, UserSettingKey.FOCUS_RANGE, null), new ViewFinderImpl$EnumValueAccessorImpl(userSetting, UserSettingKey.SHUTTER_SPEED, null), new ViewFinderImpl$EnumValueAccessorImpl(userSetting, UserSettingKey.ISO, null), new ViewFinderImpl$EnumValueAccessorImpl(userSetting, UserSettingKey.EV, null), new ViewFinderImpl$EnumValueAccessorImpl(userSetting, UserSettingKey.WHITE_BALANCE, null));
        if (getCapturingMode() == CapturingMode.SLOW_MOTION) {
            this.mBaseLayout.getSuperSlowMotionTriggerAnimation().prepareViews();
        }
        updateIndicatorState();
        if (!z) {
            this.mBaseLayout.reloadContentsViewController(getThumbnailStateListener());
        }
        if (this.mActivity.getGeoTagManager() != null) {
            this.mActivity.getGeoTagManager().setLocationAcquiredListener(new ViewFinderImpl$LocationAcquiredListenerImpl(this, null));
        }
        if (this.mActivity.getStorage() != null) {
            this.mActivity.getStorage().addStorageStateListener(this.mStorageStateListener);
        }
        getBaseLayout().getZoomBar().setZoombarDisplayChangedListener(new ViewFinderImpl$ZoombarDisplayChangedListenerImpl(this, null));
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[getCapturingMode().ordinal()]) {
            case 5:
            case 6:
                enableOverlayControl(getBaseLayout().getImageQualityControl());
                break;
            case 7:
                getBaseLayout().getSuperSlowMotionTriggerAnimation().prepareViews();
                break;
        }
    }

    private void updateIndicatorState() {
        if (needToShowGeoTagIndicator()) {
            if (GeotagManager.isGeoTagEnabled(this.mActivity.getStoredSettings().getUserSettings(), this.mActivity)) {
                if (this.mActivity.getGeoTagManager() != null) {
                    boolean zIsAcquiring = this.mActivity.getGeoTagManager().isAcquiring();
                    this.mBaseLayout.getGeoTagIndicator().set(true);
                    this.mBaseLayout.getGeoTagIndicator().isAcquired(!zIsAcquiring);
                }
            } else {
                this.mBaseLayout.getGeoTagIndicator().set(false);
            }
        }
        updateLowMemoryIndicator();
        updateThermalIndicator();
        updateBatteryIndicator(this.mActivity.getBatteryLevel());
    }

    private void updateLowMemoryIndicator() {
        this.mBaseLayout.getLowMemoryInternalIndicator().set(!hasEnoughFreeSpace(Storage$StorageType.INTERNAL));
        this.mBaseLayout.getLowMemorySdIndicator().set(!hasEnoughFreeSpace(Storage$StorageType.EXTERNAL_CARD));
    }

    private void updateThermalIndicator() {
        this.mBaseLayout.getThermalIndicator().set(this.mActivity.isThermalWarningState());
    }

    private void startInflateTask(LayoutInflater layoutInflater, List<InflateItem> list) {
        if (CamLog.VERBOSE) {
            CamLog.d("startInflateTask in");
        }
        ExecutorService executorServiceBuildExecutor = ThreadUtil.buildExecutor("InflateTask");
        this.mInflateFuture = executorServiceBuildExecutor.submit(new InflateTask(layoutInflater, list));
        executorServiceBuildExecutor.shutdown();
        if (CamLog.VERBOSE) {
            CamLog.d("startInflateTask out");
        }
    }

    private void joinInflateTask() {
        if (CamLog.VERBOSE) {
            CamLog.d("joinInflateTask in");
        }
        if (this.mInflateFuture != null) {
            try {
                this.mInflateItemMap = this.mInflateFuture.get();
            } catch (InterruptedException e) {
                CamLog.e("join", e);
            } catch (ExecutionException e2) {
                CamLog.e("join", e2);
            }
            this.mInflateFuture = null;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("joinInflateTask out");
        }
    }

    private void clearPreInflatedViews() {
        if (this.mInflateItemMap != null) {
            this.mInflateItemMap.clear();
            this.mInflateItemMap = null;
        }
    }

    private boolean isInflated() {
        return this.mInflateItemMap != null;
    }

    private List<View> getPreInflatedView(InflateItem inflateItem) {
        if (this.mInflateItemMap != null) {
            return this.mInflateItemMap.get(inflateItem);
        }
        return null;
    }

    private LayoutPatternApplier getLayoutPatternApplier() {
        return this.mLayoutPatternApplier;
    }

    private LayoutPattern getCurrentLayoutPattern() {
        return this.mLayoutPattern;
    }

    private LayoutPattern selectLayoutPatternForPreview() {
        BaseLayoutPattern baseLayoutPattern = BaseLayoutPattern.PREVIEW;
        if (!isStorageReady()) {
            baseLayoutPattern = BaseLayoutPattern.PREVIEW_NO_RECORDING;
        }
        return predictiveLaunchCoverExists() ? BaseLayoutPattern.CLEAR : baseLayoutPattern;
    }

    private boolean isPreviewLayout(LayoutPattern layoutPattern) {
        return layoutPattern == BaseLayoutPattern.PREVIEW || layoutPattern == BaseLayoutPattern.PREVIEW_NO_RECORDING;
    }

    public boolean isPreviewLayout() {
        return isPreviewLayout(getCurrentLayoutPattern());
    }

    private void updateGridLineView() {
        updateGridLineView(null);
    }

    private void updateGridLineView(CapturingMode capturingMode) {
        if (!isHeadUpDisplayReady() || this.mBaseLayout.getGridLineView() == null) {
            if (CamLog.VERBOSE) {
                CamLog.d("called updateGridLineView before ready");
                return;
            }
            return;
        }
        UserSettings userSetting = this.mStateMachine.getUserSetting();
        if (capturingMode == null) {
            capturingMode = (CapturingMode) userSetting.get(UserSettingKey.CAPTURING_MODE);
        }
        Size sizeComputeGridSize = computeGridSize(capturingMode, userSetting);
        this.mBaseLayout.updateGridLine(sizeComputeGridSize.getWidth(), sizeComputeGridSize.getHeight());
        GridLine gridLine = (GridLine) userSetting.get(UserSettingKey.GRID_LINE);
        if (predictiveLaunchCoverExists()) {
            this.mBaseLayout.setGridLineViewEnabled(false);
        } else {
            this.mBaseLayout.setGridLineViewEnabled(gridLine == GridLine.ON);
        }
    }

    private Size computeGridSize(CapturingMode capturingMode, UserSettings userSettings) {
        Rect viewFinderRectSetting = getViewFinderRectSetting(userSettings, capturingMode);
        float fWidth = viewFinderRectSetting.width() / viewFinderRectSetting.height();
        if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
            fWidth = 1.0f / fWidth;
        }
        Rect surfaceViewRect = LayoutDependencyResolver.getSurfaceViewRect(this.mActivity, fWidth, this.mScreenAspect);
        return new Size(surfaceViewRect.width(), surfaceViewRect.height());
    }

    private Rect getViewFinderRectSetting(UserSettings userSettings, CapturingMode capturingMode) {
        if (capturingMode.isVideo()) {
            return ((VideoSize) userSettings.get(UserSettingKey.VIDEO_SIZE)).getVideoRect();
        }
        return ((Resolution) userSettings.get(UserSettingKey.RESOLUTION)).getPictureRect();
    }

    private void updatePreviewContainer(int i, int i2) {
        this.mBaseLayout.updatePreviewContainer(i, i2);
    }

    private void updateHintTextContainer(Rect rect) {
        Rect rectAccordingToLayoutOrientation = LayoutOrientationResolver.getInstance().getRectAccordingToLayoutOrientation(rect);
        Rect surfaceViewRect = LayoutDependencyResolver.getSurfaceViewRect(this.mActivity, rectAccordingToLayoutOrientation.width() / rectAccordingToLayoutOrientation.height(), this.mScreenAspect);
        this.mHintText.updateHintTextContainer(surfaceViewRect.width(), surfaceViewRect.height());
        this.mHintText.setUiOrientation(surfaceViewRect, this.mActivity, this.mScreenAspect, this.mOrientation);
    }

    public void showHiSpeedSdCardRecommendDialogOnModeChange() {
        if (isNeedToShowHiSpeedSdCardRecommendation() && this.mStateMachine.getCurrentCapturingMode() == CapturingMode.SLOW_MOTION) {
            showMessageDialog(DialogId.HIGH_SPEED_SD_RECOMMENDATION_ON_MODE_CHANGE, new Object[0]);
        }
    }

    private void showHiSpeedSdCardRecommendDialogOnVideoSizeChange() {
        VideoSize videoSize = (VideoSize) this.mStateMachine.getUserSetting().get(UserSettingKey.VIDEO_SIZE);
        if (isNeedToShowHiSpeedSdCardRecommendation() && videoSize.is4KVideo()) {
            showMessageDialog(DialogId.FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_VIDEOSIZE_CHANGE, new Object[0]);
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void showHiSpeedSdCardRecommendDialogOnDestinationChange() {
        if (isNeedToShowHiSpeedSdCardRecommendation()) {
            VideoSize videoSize = (VideoSize) this.mStateMachine.getUserSetting().get(UserSettingKey.VIDEO_SIZE);
            if (this.mStateMachine.getCurrentCapturingMode() == CapturingMode.SLOW_MOTION) {
                showMessageDialog(DialogId.HIGH_SPEED_SD_RECOMMENDATION_ON_SETTING_CHANGE, new Object[0]);
            } else if (videoSize.is4KVideo()) {
                showMessageDialog(DialogId.FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_DESTINATION_CHANGE, new Object[0]);
            }
        }
    }

    private boolean isNeedToShowHiSpeedSdCardRecommendation() {
        DestinationToSave destinationToSave = (DestinationToSave) this.mActivity.getStoredSettings().getUserSettings().get(UserSettingKey.DESTINATION_TO_SAVE);
        if (destinationToSave.getType() != Storage$StorageType.EXTERNAL_CARD) {
            return false;
        }
        Storage$StorageState currentState = this.mActivity.getStorage().getCurrentState(destinationToSave.getType());
        return currentState == Storage$StorageState.AVAILABLE || currentState == Storage$StorageState.AVAILABLE_NEAR_FULL;
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public boolean isMessageDialogOpened() {
        return this.mMessageDialog.isOpened();
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void clearMessageDialog() {
        this.mMessageDialog.clear();
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void showMessageDialog(DialogId dialogId, Object... objArr) {
        if (CamLog.VERBOSE) {
            CamLog.d("showMessageDialog() E : " + dialogId);
        }
        ViewFinderImpl$ShowMessageDialogTask viewFinderImpl$ShowMessageDialogTask = new ViewFinderImpl$ShowMessageDialogTask(this, dialogId, objArr);
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId[dialogId.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                if (this.mSettingUi == null) {
                    this.mDelayUpdatedViewTaskList.add(viewFinderImpl$ShowMessageDialogTask);
                } else {
                    viewFinderImpl$ShowMessageDialogTask.run();
                }
                break;
            default:
                viewFinderImpl$ShowMessageDialogTask.run();
                break;
        }
    }

    private void exitByError() {
        if (PlatformCapability.hasDeviceError()) {
            if (this.mActivity != null) {
                this.mActivity.finishAndKillProcess();
                return;
            } else {
                Process.killProcess(Process.myPid());
                return;
            }
        }
        if (this.mActivity == null || this.mIsPaused) {
            return;
        }
        this.mActivity.finish();
    }

    private void launchLocationSourceSettings() {
        ApplicationLauncher.launchLocationSourceSettings(this.mActivity);
    }

    private void launchSideSenseSettings() {
        ApplicationLauncher.launchSideSenseSettings(this.mActivity);
    }

    private void updateLocation() {
        this.mActivity.getGeoTagManager().updateLocation(Geotag.OFF);
        this.mStateMachine.getUserSetting().set(Geotag.OFF);
    }

    private void openSettingMenuDialogInChina() {
        if (RegionConfig.isChinaRegion(this.mActivity)) {
            this.mSettingUi.openSettingMenuDialog();
        }
    }

    private void onOpenStorageDialog() {
        if (this.mCurrentDisplayingUiComponent == null) {
            return;
        }
        this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_DIALOG_OPENED, new Object[0]);
        if (this.mSettingUi != null) {
            this.mSettingUi.closeDialogs();
        }
    }

    private void onCloseStorageDialog() {
        if (isAllDialogClosed()) {
            this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_DIALOG_CLOSED, ViewFinder$UiComponentKind.SETTING_DIALOG);
        }
    }

    private void openUserSelectMenu(UserSettingKey userSettingKey) {
        if (userSettingKey != null && ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey[userSettingKey.ordinal()] == 3) {
            if (((VideoSize) this.mStateMachine.getUserSetting().get(UserSettingKey.VIDEO_SIZE)).is4KVideo()) {
                this.mSettingDialogStack.closeAllSettingDialogs(false);
            }
            requestToRecoverSystemUi();
        }
        updateUiComponent(ViewFinder$UiComponentKind.SETTING_DIALOG);
        this.mSettingUi.openUserSelectMenu(userSettingKey);
    }

    private void requestStartActivityForMessageDialog(Intent intent, Bundle bundle) {
        Handler handler = getBaseLayout().getRootView().getHandler();
        if (handler != null) {
            handler.post(new ViewFinderImpl$24(this, intent, bundle));
        }
    }

    private boolean requestStartActivity(Intent intent, Bundle bundle) {
        if (!this.mActivity.isInLockTaskMode()) {
            this.mCameraDevice.closeCamera(true);
            this.mIsRequestingStartActivity = true;
            try {
                if (!CapturingModeUtil.MODE_WHITE_LIST.contains(intent.getStringExtra("com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE"))) {
                    this.mActivity.startActivity(intent);
                    onAppsUiModeFinish();
                } else if (bundle != null) {
                    this.mActivity.startActivityForResult(intent, 19, bundle);
                } else {
                    this.mActivity.startActivityForResult(intent, 19);
                }
                return true;
            } catch (ActivityNotFoundException e) {
                CamLog.e("Failed to launch the AddOn application. Message : " + e.getMessage());
                return false;
            }
        }
        this.mActivity.finish();
        return false;
    }

    private boolean isPredictiveCaptureAvailable() {
        return getCapturingMode().isSuperiorAuto() && !getCapturingMode().isFront() && !getActivity().isOneShot() && PlatformCapability.isBypassCameraSupported() && PlatformCapability.isPredictiveCaptureShotSupported(getCapturingMode().getCameraId());
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void notifyZoomOperationRejected() {
        if (isAllDialogClosed()) {
            postHintText(new HintTextTimedOutMessage(HintTextTimedOutMessage$MessageType.ZOOM_NOT_AVAILABLE));
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public boolean isAutoPowerOffWarningDisplayed() {
        if (this.mHintText != null) {
            return this.mHintText.isHintTextDisplayed(HintTextAutoPowerOff.class.getSimpleName());
        }
        return false;
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void showAutoPowerOffHintText() {
        if (this.mHintText != null) {
            postHintText(new HintTextAutoPowerOff());
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void hideAutoPowerOffHintText() {
        if (this.mHintText != null) {
            this.mHintText.cancel(HintTextAutoPowerOff.class.getSimpleName());
            updateVisibilityForSpecificDisplaySize();
        }
    }

    private void updateFusionHintText(@Nullable CameraParameters$FusionResult cameraParameters$FusionResult) {
        if (this.mHintText != null && PlatformCapability.isHighSensitivityFusionSupported(getCapturingMode().getCameraId())) {
            this.mHintText.cancel(HintTextHighSensitivityFusionStatus.class.getSimpleName());
            this.mHintText.cancel(HintTextHighSensitivityFusionCondition.class.getSimpleName());
            if (cameraParameters$FusionResult != null) {
                if (cameraParameters$FusionResult.getFusionCondition() == CameraParameters$FusionCondition.CLOSE_TO_SUBJECT) {
                    postHintText(new HintTextHighSensitivityFusionCondition());
                } else if (cameraParameters$FusionResult.getFusionStatus() == CameraParameters$FusionStatus.FUSION_SUB_1) {
                    postHintText(new HintTextHighSensitivityFusionStatus());
                } else {
                    updateVisibilityForSpecificDisplaySize();
                }
            }
        }
    }

    private void showToastMessage(ToastContent$ToastID toastContent$ToastID) {
        if (!this.mIsSetupHeadupDisplayInvoked) {
            LayoutDependencyResolver.setupRotatableToast(this.mActivity);
            this.mToastContent.setSensorOrientation(this.mActivity.getOrientation());
        }
        this.mToastContent.show(this.mActivity, toastContent$ToastID);
    }

    private boolean isStorageReady() {
        Storage$StorageState currentState = this.mActivity.getStorage().getCurrentState(getCurrentStorage());
        return currentState == Storage$StorageState.AVAILABLE || currentState == Storage$StorageState.AVAILABLE_NEAR_FULL;
    }

    private Storage$StorageType getCurrentStorage() {
        if (this.mActivity.isOneShot()) {
            return this.mActivity.getLaunchCondition().getStorageTypeForOneshot();
        }
        UserSettings userSettings = getActivity().getStoredSettings().getUserSettings();
        DestinationToSave destinationToSave = (DestinationToSave) userSettings.get(UserSettingKey.DESTINATION_TO_SAVE);
        if (destinationToSave == null) {
            destinationToSave = (DestinationToSave) userSettings.get(this.mActivity.getLaunchCondition().getCapturingMode(), UserSettingKey.DESTINATION_TO_SAVE);
        }
        return destinationToSave.getType();
    }

    private boolean hasEnoughFreeSpace(Storage$StorageType storage$StorageType) {
        DestinationToSave destinationToSave = (DestinationToSave) this.mStateMachine.getUserSetting().get(UserSettingKey.DESTINATION_TO_SAVE);
        Storage$StorageState currentState = this.mActivity.getStorage().getCurrentState(storage$StorageType);
        return destinationToSave.getType() == storage$StorageType ? currentState == Storage$StorageState.AVAILABLE || currentState == Storage$StorageState.UNGRANTED : currentState == Storage$StorageState.AVAILABLE || currentState == Storage$StorageState.REMOVED || currentState == Storage$StorageState.UNGRANTED;
    }

    private boolean isInternalStorageWritable() {
        Storage$StorageState currentState = this.mActivity.getStorage().getCurrentState(Storage$StorageType.INTERNAL);
        return currentState == Storage$StorageState.AVAILABLE || currentState == Storage$StorageState.AVAILABLE_NEAR_FULL;
    }

    private boolean isCurrentStorageExternal() {
        return getCurrentStorage() == Storage$StorageType.EXTERNAL_CARD;
    }

    private boolean isSdCardWritable() {
        Storage$StorageState currentState = this.mActivity.getStorage().getCurrentState(Storage$StorageType.EXTERNAL_CARD);
        return currentState == Storage$StorageState.AVAILABLE || currentState == Storage$StorageState.AVAILABLE_NEAR_FULL;
    }

    private boolean isSdCardRemoved() {
        return this.mActivity.getStorage().getCurrentState(Storage$StorageType.EXTERNAL_CARD) == Storage$StorageState.REMOVED;
    }

    protected boolean onHandleBackKeyTutorial() {
        if (this.mBaseLayout != null && this.mBaseLayout.getTutorial() != null) {
            TutorialController tutorial = this.mBaseLayout.getTutorial();
            if (tutorial.isOpened()) {
                if (tutorial.backToPreviousPage()) {
                    return true;
                }
                MessageSettings messageSettings = this.mActivity.getStoredSettings().getMessageSettings();
                for (TutorialController$TutorialType tutorialController$TutorialType : tutorial.getTutorialTypes()) {
                    switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[tutorialController$TutorialType.ordinal()]) {
                        case 1:
                            this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_REQUEST_UPDATE_HIGH_SENSITIVITY_FUSION_MODE, FusionMode.AUTO);
                            break;
                        case 2:
                            updateHighSensitivityFusionModeForManual();
                            break;
                    }
                    Iterator<MessageType> it = tutorialController$TutorialType.messageTypes.iterator();
                    while (it.hasNext()) {
                        messageSettings.setNeverShow(it.next(), true);
                        messageSettings.save();
                    }
                }
                LocalResearchUtil.getInstance().sendSetupWizardEvent(Event$WizardResult.BACK_KEY);
                LocalResearchUtil.getInstance().closeSetupWizard();
                tutorial.close();
                setApplicationNavigatorEnabled(!this.mActivity.isOneShot());
                this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_DIALOG_CLOSED, new Object[0]);
                return true;
            }
        }
        return false;
    }

    protected boolean closeAutoReviewIfShowing() {
        if (!isAutoReviewShowing()) {
            return false;
        }
        hideAutoReview();
        return true;
    }

    protected boolean closeOverlayControlIfOpened() {
        if (!isOverlayControlVisible()) {
            return false;
        }
        disableSemiAutoControl();
        disableOverlayControl(getBaseLayout().getImageQualityControl());
        return true;
    }

    protected boolean closeSettingDialogIfOpened() {
        if (this.mSettingDialogStack != null) {
            return this.mSettingDialogStack.closeCurrentDialog();
        }
        return false;
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void notifyStorageStateChanged(Storage$StorageType storage$StorageType, Storage$StorageState storage$StorageState, boolean z, boolean z2) {
        if (CamLog.VERBOSE) {
            CamLog.d("onStorageStateChanged: StorageType = " + storage$StorageType + ", StorageState = " + storage$StorageState + ", isChangeable = " + z);
        }
        if (storage$StorageState != Storage$StorageState.AVAILABLE && storage$StorageState != Storage$StorageState.AVAILABLE_NEAR_FULL && this.mFocusRectangles != null) {
            this.mFocusRectangles.clearFaceDetection();
        }
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageState[storage$StorageState.ordinal()]) {
            case 1:
            case 2:
                this.mMessageDialog.removeDialogsInList(STORAGE_DIALOG_LIST);
                break;
            case 3:
                if (!z2) {
                    if (z) {
                        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType[storage$StorageType.ordinal()]) {
                            case 1:
                                showMessageDialog(DialogId.MEMORY_FULL_PROPOSE_CHANGE_TO_INTERNAL, new Object[0]);
                                break;
                            case 2:
                                showMessageDialog(DialogId.MEMORY_FULL_PROPOSE_CHANGE_TO_SD, new Object[0]);
                                break;
                        }
                    } else {
                        showMessageDialog(DialogId.MEMORY_FULL, new Object[0]);
                        break;
                    }
                } else {
                    showMessageDialog(DialogId.MEMORY_FULL_IN_BURST_MODE, new Object[0]);
                    break;
                }
                break;
            case 4:
            case 5:
            case 6:
                if (z) {
                    switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType[storage$StorageType.ordinal()]) {
                        case 1:
                            showMessageDialog(DialogId.MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_INTERNAL, new Object[0]);
                            break;
                        case 2:
                            showMessageDialog(DialogId.MEMORY_UNAVAILABLE_PROPOSE_CHANGE_TO_SD, new Object[0]);
                            break;
                    }
                } else {
                    switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType[storage$StorageType.ordinal()]) {
                        case 1:
                            showMessageDialog(DialogId.MEMORY_SD_UNAVAILABLE, new Object[0]);
                            break;
                        case 2:
                            showMessageDialog(DialogId.MEMORY_INTERNAL_UNAVAILABLE, new Object[0]);
                            break;
                    }
                }
                break;
            case 7:
                if (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$cameracommon$storage$Storage$StorageType[storage$StorageType.ordinal()] == 1) {
                    showMessageDialog(DialogId.MEMORY_SD_UNAVAILABLE, new Object[0]);
                    break;
                }
                break;
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void setDisplayFlashRequired(boolean z) {
        this.mRequireDisplayFlash = z;
    }

    private boolean isDisplayFlashRequired() {
        return this.mRequireDisplayFlash;
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void setDisplayFlashColor(int i, int i2, int i3) {
        if (i < 0 || i > 255 || i2 < 0 || i2 > 255 || i3 < 0 || i3 > 255 || !isDisplayFlashRequired()) {
            this.mDisplayFlashColor = -1;
        } else {
            this.mDisplayFlashColor = Color.rgb(i, i2, i3);
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public boolean isDisplayFlashScreenDisplayed() {
        return this.mIsDisplayFlashScreenDisplayed;
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void showDisplayFlashScreen() {
        if (isDisplayFlashRequired()) {
            if (this.mWindowDisplayFlashScreen == null) {
                LayoutInflater layoutInflater = this.mActivity.getLayoutInflater();
                if (layoutInflater == null) {
                    return;
                }
                this.mWindowDisplayFlashScreen = layoutInflater.inflate(2131492921, (ViewGroup) null);
                Window window = this.mActivity.getWindow();
                window.addContentView(this.mWindowDisplayFlashScreen, window.getAttributes());
            }
            if (this.mWindowDisplayFlashScreen != null) {
                this.mWindowDisplayFlashScreen.setBackgroundColor(this.mDisplayFlashColor);
                this.mWindowDisplayFlashScreen.setVisibility(0);
                this.mIsDisplayFlashScreenDisplayed = true;
            }
        }
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public void hideDisplayFlashScreen() {
        if (isDisplayFlashScreenDisplayed()) {
            if (this.mWindowDisplayFlashScreen != null) {
                this.mWindowDisplayFlashScreen.setVisibility(8);
            }
            this.mIsDisplayFlashScreenDisplayed = false;
        }
    }

    private void updateVideoHdrCondition(CapturingMode capturingMode, VideoHdr videoHdr, boolean z) {
        if (CamLog.VERBOSE) {
            CamLog.d("updateVideoHdrCondition : " + videoHdr);
        }
        if (!PlatformCapability.isVideoHdrSupported(capturingMode.getCameraId()) || !capturingMode.isVideo() || capturingMode == CapturingMode.SLOW_MOTION || this.mActivity.isOneShotVideo()) {
            return;
        }
        boolean zIsSelectable = UserSettingKey.VIDEO_HDR.isSelectable();
        boolean z2 = videoHdr == VideoHdr.HDR_ON;
        VideoSize videoSize = VideoSize.FULL_HD;
        if (z2 && zIsSelectable) {
            if (this.mFocusRectangles != null) {
                this.mFocusRectangles.clearAllFocus();
            }
            if (!z || this.mMessageDialog.isOpened()) {
                return;
            }
            showMessageDialog(DialogId.VIDEO_HDR_CAUTION, new Object[0]);
        }
    }

    private boolean isPhotoSelfTimerEnabled() {
        return ((SelfTimer) this.mStateMachine.getUserSetting().get(UserSettingKey.SELF_TIMER)) != SelfTimer.OFF;
    }

    public boolean isSelfTimerCountDownViewShown() {
        return this.mSelfTimerCountDownView != null && this.mSelfTimerCountDownView.isShown();
    }

    public void clearTouchedScreenButtonGroup() {
        this.mBaseLayout.getOnScreenButtonGroup().clearTouched();
    }

    public void clearCanceledSideTouchEventIcons() {
        if (isSetupHeadupDisplayInvoked() && this.mSideTouchUi.containsIn(SideTouchUi$Type.CAPTURE_COUNTDOWN, SideTouchUi$Type.ZOOM_BAR)) {
            this.mSideTouchUi.destroyIcon();
        }
    }

    public boolean isFrontAngleChanging() {
        return this.mIsFrontAngleChanging;
    }

    public void clearBurstShootingRejectedReason() {
        this.mBurstShootingRejectedReason = ViewFinder$BurstRejectedReason.NONE;
    }

    public boolean canFocusRectanglesBeUpdated() {
        return this.mCanFocusRectanglesBeUpdated;
    }

    @Override // com.sonyericsson.android.camera.view.ViewFinder
    public boolean isUserOperable() {
        return isEvfPrepared() && isSetupHeadupDisplayInvoked() && isHeadUpDisplayReady() && !isFrontAngleChanging() && !isCameraSwitching() && !isSwitchingAnimationProgress();
    }

    private void onStoreCompleted(StoreDataResult storeDataResult, boolean z) {
        CamLog.d("onStoreCompleted() result:" + storeDataResult.savingRequest.getRequestId() + " isLast:" + z);
        if (z) {
            this.mIsAutoReviewRequested = false;
        }
        if (!isHeadUpDisplayReady()) {
            this.mAutoReviewStoreData = storeDataResult;
            return;
        }
        if (!storeDataResult.isSuccess() && isCurrentStorageExternal() && !isSdCardWritable() && !isSdCardRemoved()) {
            showMessageDialog(DialogId.COULD_NOT_SAVE_PHOTO, new Object[0]);
        }
        if (isShownInInstantViewer(storeDataResult)) {
            CamLog.d("Potho which is shown in Instant viewer is saved and start Album for the photo.");
            InstantViewer.launchAlbum(this.mActivity, storeDataResult.uri, storeDataResult.savingRequest.common.mimeType, true, this.mStateMachine.getPredictiveCaptureStoreInfo());
        } else {
            addThumbnail(storeDataResult);
            if (z) {
                showAutoReview(storeDataResult);
            }
        }
    }

    private void addThumbnail(StoreDataResult storeDataResult) {
        boolean zIsPredictiveCaptureCoverImage;
        int requestId = storeDataResult.savingRequest.getRequestId();
        boolean zIsSuccess = storeDataResult.isSuccess();
        Uri uri = storeDataResult.uri;
        boolean zIsPredictiveCaptureImage = false;
        if (storeDataResult.savingRequest.getFilePath() != null) {
            if (storeDataResult.savingRequest instanceof PhotoSavingRequest) {
                zIsPredictiveCaptureImage = ((PhotoSavingRequest) storeDataResult.savingRequest).isPredictiveCaptureImage();
                zIsPredictiveCaptureCoverImage = ((PhotoSavingRequest) storeDataResult.savingRequest).isPredictiveCaptureCoverImage();
            }
            if (zIsPredictiveCaptureImage || zIsPredictiveCaptureCoverImage) {
                this.mActivity.runOnUiThread(new ViewFinderImpl$27(this, storeDataResult, requestId, zIsSuccess, uri));
            }
            return;
        }
        CamLog.d("File path is not set by storage error.");
        zIsPredictiveCaptureCoverImage = false;
        if (zIsPredictiveCaptureImage) {
        }
        this.mActivity.runOnUiThread(new ViewFinderImpl$27(this, storeDataResult, requestId, zIsSuccess, uri));
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void showAutoReview(StoreDataResult storeDataResult) {
        int duration;
        byte[] imageData;
        if (this.mActivity.isOneShot()) {
            return;
        }
        Uri uri = Uri.EMPTY;
        int duration2 = AutoReview.ALWAYS.getDuration();
        boolean z = true;
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType[storeDataResult.savingRequest.common.savedFileType.ordinal()]) {
            case 3:
                if (!isPreviewLayout(getCurrentLayoutPattern()) || !isSetupHeadupDisplayInvoked() || getBaseLayout() == null) {
                    duration = duration2;
                    imageData = null;
                    break;
                } else {
                    PhotoSavingRequest photoSavingRequest = (PhotoSavingRequest) storeDataResult.savingRequest;
                    if (this.mSideTouchUi.containsIn(SideTouchUi$Type.AUTO_REVIEW)) {
                        imageData = photoSavingRequest.getImageData();
                        uri = storeDataResult.uri;
                        duration = duration2;
                        break;
                    } else if (isAutoReviewEnabled()) {
                        byte[] imageData2 = photoSavingRequest.getImageData();
                        Uri uri2 = storeDataResult.uri;
                        duration = ((AutoReview) this.mStateMachine.getUserSetting().get(UserSettingKey.AUTO_REVIEW)).getDuration();
                        imageData = imageData2;
                        uri = uri2;
                        break;
                    }
                }
                break;
            case 4:
                if (this.mSideTouchUi.containsIn(SideTouchUi$Type.AUTO_REVIEW)) {
                    uri = storeDataResult.uri;
                    this.mSideTouchUi.setUiOrientation(this.mRecordingOrientation);
                    break;
                }
            default:
                duration = duration2;
                imageData = null;
                z = false;
                break;
        }
        if ((uri == null || Uri.EMPTY.equals(uri)) && imageData == null) {
            return;
        }
        AutoReviewContent autoReviewContent = new AutoReviewContent();
        autoReviewContent.mUri = uri;
        autoReviewContent.mData = imageData;
        autoReviewContent.mIsPhoto = z;
        autoReviewContent.mIsReverse = isNecessaryToReverseForAutoReview(storeDataResult);
        autoReviewContent.mDuration = duration;
        autoReviewContent.mEventListener = new ViewFinderImpl$OnAutoReviewEventListenerImpl(this, null);
        autoReviewContent.mClickListener = new ViewFinderImpl$28(this, storeDataResult);
        this.mAutoReviewProxy.notifyContent(autoReviewContent);
    }

    private boolean isShownInInstantViewer(StoreDataResult storeDataResult) {
        return this.mInstantViewer != null && this.mInstantViewer.isOpened() && storeDataResult.savingRequest.getRequestId() == this.mInstantViewer.getRequestId();
    }

    private void updateHighSensitivityFusionModeForManual() {
        if (UserSettingKey.FUSION_MODE.isSelectable()) {
            FusionMode fusionMode = (FusionMode) this.mStateMachine.getUserSetting().get(UserSettingKey.FUSION_MODE);
            StateMachine stateMachine = this.mStateMachine;
            StateMachine$TransitterEvent stateMachine$TransitterEvent = StateMachine$TransitterEvent.EVENT_REQUEST_UPDATE_HIGH_SENSITIVITY_FUSION_MODE;
            Object[] objArr = new Object[1];
            objArr[0] = fusionMode == FusionMode.OFF ? FusionMode.ON : FusionMode.OFF;
            stateMachine.sendEvent(stateMachine$TransitterEvent, objArr);
            return;
        }
        showMessageDialog(UserSettingKey.FUSION_MODE.getRestrictMessageDialogId(this.mStateMachine.getUserSetting()), new Object[0]);
    }

    private void enableSemiAutoControl(boolean z) {
        if (getBaseLayout().getSemiAutoControl().isInitialized() && getBaseLayout().getSemiAutoControl().get().isEnabled()) {
            return;
        }
        getBaseLayout().setupSemiAutoControl(new ViewFinderImpl$OverlayControlStateListener(this, ViewFinder$UiComponentKind.OVERLAY_CONTROL_SEEKING), this.mColorValueAccessor, this.mBrightnessValueAccessor, z);
        enableOverlayControl(getBaseLayout().getSemiAutoControl());
        this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_ON_SEMIAUTO_ENABLED, new Object[0]);
    }

    private void enableOverlayControl(BaseLayout$LazyInitializer<OverlayControl> baseLayout$LazyInitializer) {
        if (baseLayout$LazyInitializer.isInitialized() && baseLayout$LazyInitializer.get().isEnabled()) {
            return;
        }
        baseLayout$LazyInitializer.get().enable();
        baseLayout$LazyInitializer.get().setOrientation(this.mOrientation);
        updateAllOverlayControlVisibility();
        updateVisibilityForSpecificDisplaySize();
        getBaseLayout().getSceneIndicator().set(false);
        getBaseLayout().getConditionIndicator().set(false);
        if (this.mHintText != null) {
            this.mHintText.show(HintTextContent$HintPriority.HIGH);
        }
    }

    private void disableSemiAutoControl() {
        if (this.mStateMachine == null || getBaseLayout() == null) {
            return;
        }
        BaseLayout$LazyInitializer<OverlayControl> semiAutoControl = getBaseLayout().getSemiAutoControl();
        if (semiAutoControl.isInitialized() && semiAutoControl.get().isEnabled()) {
            if (isTouchFocus()) {
                this.mFocusRectangles.clearTouchFocus();
                this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_CLEAR_FOCUS, new Object[0]);
            }
            disableOverlayControl(getBaseLayout().getSemiAutoControl());
            this.mStateMachine.sendEvent(StateMachine$TransitterEvent.EVENT_ON_SEMIAUTO_DISABLED, new Object[0]);
        }
    }

    private void disableModeIconClickable() {
        this.mApplicationNavigator.setModeIconClickable(false);
    }

    private void disableOverlayControl(BaseLayout$LazyInitializer<OverlayControl> baseLayout$LazyInitializer) {
        if (baseLayout$LazyInitializer.isInitialized() && baseLayout$LazyInitializer.get().isEnabled()) {
            baseLayout$LazyInitializer.get().disable();
            if (this.mHintText != null && !isSettingDialogOpened()) {
                this.mHintText.showAll();
            }
            updateVisibilityForSpecificDisplaySize();
        }
    }

    public void hidePredictiveLaunchCover(ViewFinderImpl$PredictiveLaunchHideTrigger viewFinderImpl$PredictiveLaunchHideTrigger) {
        if (predictiveLaunchCoverExists()) {
            switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$ViewFinderImpl$PredictiveLaunchHideTrigger[viewFinderImpl$PredictiveLaunchHideTrigger.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                    VibrationManager.vibrate(this.mActivity, VibrationManager$VibrationPattern.EFFECT_FOR_CAPTURE);
                    break;
                default:
                    VibrationManager.vibrate(this.mActivity, VibrationManager$VibrationPattern.EFFECT_STANDARD);
                    break;
            }
            ResearchUtil.getInstance().sendPredictiveLaunchEvent(viewFinderImpl$PredictiveLaunchHideTrigger.mAction);
            getBaseLayout().hidePredictiveLaunchCover(new ViewFinderImpl$31(this));
            setApplicationNavigatorEnabled(true);
            updateGridLineView();
            changeToPhotoReadyView(true);
            this.mActivity.setupAutoPowerOffTimeOutDuration(false);
            this.mActivity.restartAutoPowerOffTimer();
            if (this.mLoopsManager != null && this.mLoopsManager.isConnected()) {
                this.mLoopsManager.disconnect();
            }
            this.mLoopsManager = null;
        }
    }

    public void prepareSelfTimerAndTouchCapture() {
        UserSettings userSetting = this.mStateMachine.getUserSetting();
        this.mPhotoSelfTimerSetting = (SelfTimer) userSetting.get(getCapturingMode(), UserSettingKey.SELF_TIMER);
        this.mTouchCapture = (TouchCapture) userSetting.get(getCapturingMode(), UserSettingKey.TOUCH_CAPTURE);
    }

    private void clearTouchCapture() {
        this.mTouchCapture = null;
    }
}
