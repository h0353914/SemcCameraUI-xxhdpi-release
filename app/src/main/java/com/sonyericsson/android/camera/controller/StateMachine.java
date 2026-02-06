package com.sonyericsson.android.camera.controller;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.location.Location;
import android.os.Handler;
import android.os.PowerManager;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.util.Size;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.CameraActivity$LayoutOrientation;
import com.sonyericsson.android.camera.LaunchCondition$ExtraOperation;
import com.sonyericsson.android.camera.LaunchCondition$LaunchTrigger;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CameraKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.configuration.parameters.FusionMode;
import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.Metering;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSound;
import com.sonyericsson.android.camera.configuration.parameters.SideSense;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.configuration.parameters.TouchIntention;
import com.sonyericsson.android.camera.configuration.parameters.UserSettingApplicable;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoSmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.device.CameraDeviceHandler;
import com.sonyericsson.android.camera.device.CameraDeviceHandler$ErrorCode;
import com.sonyericsson.android.camera.device.CameraInfo;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.device.CameraParameterConverter$SceneMode;
import com.sonyericsson.android.camera.device.CameraParameters$DeviceStabilityCondition;
import com.sonyericsson.android.camera.device.CameraParameters$FaceDetectionResult;
import com.sonyericsson.android.camera.device.CameraParameters$FusionResult;
import com.sonyericsson.android.camera.device.CameraParameters$ObjectTrackingResult;
import com.sonyericsson.android.camera.device.CameraParameters$SceneRecognitionResult;
import com.sonyericsson.android.camera.device.PlatformDependencyResolver;
import com.sonyericsson.android.camera.parameter.dependency.DependencyCheckUtil;
import com.sonyericsson.android.camera.recorder.RecorderController$RecorderListener;
import com.sonyericsson.android.camera.recorder.RecordingProfile;
import com.sonyericsson.android.camera.recorder.RecordingProfile$Builder;
import com.sonyericsson.android.camera.recorder.superslowrecorder.OnSuperSlowRecordingFinishedListener;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.setting.LastSettings;
import com.sonyericsson.android.camera.setting.MessageSettings;
import com.sonyericsson.android.camera.setting.MessageType;
import com.sonyericsson.android.camera.setting.UserSettings;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.MaxVideoSize;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.android.camera.util.SettingUtil;
import com.sonyericsson.android.camera.util.ThreadUtil;
import com.sonyericsson.android.camera.util.capability.CameraCapabilityList;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.UserEventHandler$VirtualKeyEvent;
import com.sonyericsson.android.camera.view.UserEventHandler$VirtualKeyEventDispatcher;
import com.sonyericsson.android.camera.view.ViewFinder;
import com.sonyericsson.android.camera.view.ViewFinder$BurstRejectedReason;
import com.sonyericsson.android.camera.view.ViewFinder$HeadUpDisplaySetupState;
import com.sonyericsson.android.camera.view.ViewFinder$UiComponentKind;
import com.sonyericsson.android.camera.view.ViewFinder$ViewUpdateEvent;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationType;
import com.sonyericsson.android.camera.view.baselayout.LayoutDependencyResolver;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.cameracommon.contentsview.ContentsViewController;
import com.sonyericsson.cameracommon.contentsview.PredictiveCaptureStoreInfo;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusPhoto;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusPhoto$Facing;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusVideo;
import com.sonyericsson.cameracommon.storage.PredictiveCapturePathBuilder;
import com.sonyericsson.cameracommon.storage.RequestFactory;
import com.sonyericsson.cameracommon.storage.RequestFactory$PhotoSavingRequestBuilder;
import com.sonyericsson.cameracommon.storage.RequestFactory$RequestBuilder;
import com.sonyericsson.cameracommon.storage.RequestFactory$VideoSavingRequestBuilder;
import com.sonyericsson.cameracommon.storage.SavingRequest;
import com.sonyericsson.cameracommon.storage.SavingTaskManager$SavedFileType;
import com.sonyericsson.cameracommon.storage.Storage;
import com.sonyericsson.cameracommon.storage.Storage$OnStoreCompletedListener;
import com.sonyericsson.cameracommon.storage.Storage$StorageReadyStateListener;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonyericsson.cameracommon.storage.StorageUtil;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.PermissionsUtil;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$CaptureOperation;
import com.sonymobile.cameracommon.research.parameters.Event$CaptureTrigger;
import com.sonymobile.cameracommon.research.parameters.Event$Category;
import com.sonymobile.cameracommon.research.parameters.Event$StopOperation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutorService;

public class StateMachine {
    private static final int COLOR_VALUE_MAX = 255;
    private static final int RESUME_TIMEOUT = 7000;
    private static final String TAG = "StateMachine";
    private static final int TERMINATE_WAIT_TIME = 4000;
    private static final String THREAD_NAME = "RequestStore";
    private static final boolean USE_PROGRESS_ON_PHOTO_THUMBNAIL = false;
    private static final boolean USE_PROGRESS_ON_VIDEO_THUMBNAIL = false;
    private final CameraActivity mActivity;
    private CameraDeviceHandler mCameraDeviceHandler;
    private boolean mIsSemiAutoEnabled;
    private final LastSettings mLastSettings;
    private long mLastSmileCaptureTakenTime;
    private ObjectTrackingManager mObjectTracking;
    private PredictiveCaptureStoreInfo mPredictiveCaptureStoreInfo;
    private Storage mStorage;
    private Storage$StorageReadyStateListener mStorageReadyStateListener;
    private final UserSettings mUserSettings;
    private ViewFinder mViewFinder;
    private final Handler mHandler = new Handler();
    private RequestFactory$PhotoSavingRequestBuilder mLastPhotoSavingRequest = null;
    private RequestFactory$VideoSavingRequestBuilder mLastVideoSavingRequest = null;
    private ContentsViewController mContentsViewController = null;
    private final ExecutorService mExecService = ThreadUtil.buildExecutor("RequestStore");
    private boolean mIsVideoRecording = false;
    private final List<RequestFactory$PhotoSavingRequestBuilder> mPhotoSavingRequestList = new ArrayList();
    private StateMachine$State mCurrentState = new StateMachine$StateNone(this, null);
    private int mHighFrameRateVideoRecordingCountInSuperSlowMotion = 0;
    private StoreDataResult mLastStoreDataResult = null;
    private StateMachine$ChangeCameraModeTask mChangeCameraModeTask = null;
    private StateMachine$StartRecordingTask mStartRecordingTask = null;
    private final List<Runnable> mPendingTaskListForStandby = new ArrayList();
    private final UserEventHandler$VirtualKeyEventDispatcher mVirtualKeyEventDispatcher = new UserEventHandler$VirtualKeyEventDispatcher();
    boolean mIsSceneRecognitionValid = false;
    private StateMachine$StorageStateAdapter mStorageStateListener = new StateMachine$StorageStateAdapter(this, null);
    private boolean mIsSdPermissionFinished = false;
    private Storage$OnStoreCompletedListener mOnStoreCompletedListener = new StateMachine$1(this);
    private final GestureShutter$ControllerHost mGestureShutterHost = new StateMachine$3(this);
    private final Set<StateMachine$OnStateChangedListener> mOnStateChangedListenerSet = new CopyOnWriteArraySet();
    private final UserSettingApplicable mSettingController = new StateMachine$SettingsController(this, null);
    private final Runnable mNotifyResumeTimeoutTask = new StateMachine$4(this);
    private ChapterThumbnail mChapterThumbnail = null;
    private final RecorderController$RecorderListener mRecorderListener = new StateMachine$5(this);
    private final OnSuperSlowRecordingFinishedListener mOnSuperSlowRecordingFinishedListener = new StateMachine$6(this);
    private boolean mIsPausedAudioPlayback = false;
    private StateMachine$SuitablePredictiveApplier mPredictiveApplier = new StateMachine$SuitablePredictiveApplier(this, null);
    private final GestureShutter mGestureShutter = new GestureShutter(this.mGestureShutterHost, null);

    public static final void preload() {
    }

    private void prepareZoom() {
    }

    static /* synthetic */ boolean access$1000(StateMachine stateMachine, Storage$StorageType storage$StorageType) {
        return stateMachine.isStorageWritable(storage$StorageType);
    }

    static /* synthetic */ void access$10200(StateMachine stateMachine) {
        stateMachine.stopPlaySound();
    }

    static /* synthetic */ void access$10300(StateMachine stateMachine) {
        stateMachine.pauseAudioPlaybackForRecord();
    }

    static /* synthetic */ StateMachine$StartRecordingTask access$10500(StateMachine stateMachine) {
        return stateMachine.mStartRecordingTask;
    }

    static /* synthetic */ StateMachine$StartRecordingTask access$10502(StateMachine stateMachine, StateMachine$StartRecordingTask stateMachine$StartRecordingTask) {
        stateMachine.mStartRecordingTask = stateMachine$StartRecordingTask;
        return stateMachine$StartRecordingTask;
    }

    static /* synthetic */ void access$10600(StateMachine stateMachine, StoreDataResult storeDataResult) {
        stateMachine.onOneShotStoreCompleted(storeDataResult);
    }

    static /* synthetic */ void access$10900(StateMachine stateMachine, RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        stateMachine.doCapture(requestFactory$PhotoSavingRequestBuilder);
    }

    static /* synthetic */ StateMachine$State access$1100(StateMachine stateMachine) {
        return stateMachine.mCurrentState;
    }

    static /* synthetic */ void access$11100(StateMachine stateMachine) {
        stateMachine.playShutterSound();
    }

    static /* synthetic */ ChapterThumbnail access$11202(StateMachine stateMachine, ChapterThumbnail chapterThumbnail) {
        stateMachine.mChapterThumbnail = chapterThumbnail;
        return chapterThumbnail;
    }

    static /* synthetic */ void access$11300(StateMachine stateMachine) {
        stateMachine.doHandleRecordingError();
    }

    static /* synthetic */ void access$11400(StateMachine stateMachine, boolean z) {
        stateMachine.doStopRecording(z);
    }

    static /* synthetic */ boolean access$11502(StateMachine stateMachine, boolean z) {
        stateMachine.mIsVideoRecording = z;
        return z;
    }

    static /* synthetic */ int access$11600(StateMachine stateMachine) {
        return stateMachine.mHighFrameRateVideoRecordingCountInSuperSlowMotion;
    }

    static /* synthetic */ int access$11608(StateMachine stateMachine) {
        int i = stateMachine.mHighFrameRateVideoRecordingCountInSuperSlowMotion;
        stateMachine.mHighFrameRateVideoRecordingCountInSuperSlowMotion = i + 1;
        return i;
    }

    static /* synthetic */ void access$11700(StateMachine stateMachine, Object[] objArr) {
        stateMachine.pauseVideoRecording(objArr);
    }

    static /* synthetic */ ViewFinder access$1200(StateMachine stateMachine) {
        return stateMachine.mViewFinder;
    }

    static /* synthetic */ void access$12000(StateMachine stateMachine) {
        stateMachine.sendVideoChapterThumbnailToViewFinder();
    }

    static /* synthetic */ void access$12100(StateMachine stateMachine) {
        stateMachine.doPauseRecording();
    }

    static /* synthetic */ void access$12300(StateMachine stateMachine) {
        stateMachine.doCaptureWhileRecording();
    }

    static /* synthetic */ void access$12400(StateMachine stateMachine) {
        stateMachine.requestVideoSmileCapture();
    }

    static /* synthetic */ void access$12600(StateMachine stateMachine) {
        stateMachine.doResumeRecording();
    }

    static /* synthetic */ ContentsViewController access$12700(StateMachine stateMachine) {
        return stateMachine.mContentsViewController;
    }

    static /* synthetic */ void access$12800(StateMachine stateMachine, CapturingMode capturingMode, AnimationRequest$AnimationType animationRequest$AnimationType) {
        stateMachine.switchCamera(capturingMode, animationRequest$AnimationType);
    }

    static /* synthetic */ void access$12900(StateMachine stateMachine, CapturingMode capturingMode, AnimationRequest$AnimationType animationRequest$AnimationType) {
        stateMachine.requestChangeModeTo(capturingMode, animationRequest$AnimationType);
    }

    static /* synthetic */ void access$1300(StateMachine stateMachine, boolean z) {
        stateMachine.switchSceneRecognition(z);
    }

    static /* synthetic */ LastSettings access$13000(StateMachine stateMachine) {
        return stateMachine.mLastSettings;
    }

    static /* synthetic */ void access$13100(StateMachine stateMachine) {
        stateMachine.removeChangeCameraModeTask();
    }

    static /* synthetic */ void access$13200(StateMachine stateMachine) {
        stateMachine.removeStartRecordingTask();
    }

    static /* synthetic */ void access$13400(StateMachine stateMachine) {
        stateMachine.cleanupPendingState();
    }

    static /* synthetic */ void access$13600(StateMachine stateMachine) {
        stateMachine.storeSavingRequestList();
    }

    static /* synthetic */ void access$1400(StateMachine stateMachine) {
        stateMachine.doStopObjectTracking();
    }

    static /* synthetic */ void access$14400(StateMachine stateMachine, boolean z) {
        stateMachine.doStartRecording(z);
    }

    static /* synthetic */ void access$14500(StateMachine stateMachine, int i) {
        stateMachine.updateRecordingProgress(i);
    }

    static /* synthetic */ boolean access$14600(StateMachine stateMachine) {
        return stateMachine.isCurrentStorageExternal();
    }

    static /* synthetic */ void access$14800(StateMachine stateMachine, RequestFactory$VideoSavingRequestBuilder requestFactory$VideoSavingRequestBuilder) {
        stateMachine.requestStoreVideo(requestFactory$VideoSavingRequestBuilder);
    }

    static /* synthetic */ boolean access$14900(StateMachine stateMachine, RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        return stateMachine.isNeedRepairRequestId(requestFactory$PhotoSavingRequestBuilder);
    }

    static /* synthetic */ void access$15100(StateMachine stateMachine, RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        stateMachine.storePicture(requestFactory$PhotoSavingRequestBuilder);
    }

    static /* synthetic */ int access$15200(StateMachine stateMachine) {
        return stateMachine.getOrientation();
    }

    static /* synthetic */ List access$15300(StateMachine stateMachine) {
        return stateMachine.mPhotoSavingRequestList;
    }

    static /* synthetic */ void access$1600(StateMachine stateMachine) {
        stateMachine.calculateRemainStorage();
    }

    static /* synthetic */ Handler access$1700(StateMachine stateMachine) {
        return stateMachine.mHandler;
    }

    static /* synthetic */ UserSettings access$1800(StateMachine stateMachine) {
        return stateMachine.mUserSettings;
    }

    static /* synthetic */ void access$1900(StateMachine stateMachine, StoreDataResult storeDataResult, Bitmap bitmap) {
        stateMachine.finishOneShot(storeDataResult, bitmap);
    }

    static /* synthetic */ boolean access$2000(StateMachine stateMachine) {
        return stateMachine.isLazyInitializationRunning();
    }

    static /* synthetic */ void access$2100(StateMachine stateMachine, SelfTimer selfTimer) {
        stateMachine.updatePhotoSelftimer(selfTimer);
    }

    static /* synthetic */ void access$2400(StateMachine stateMachine, boolean z) {
        stateMachine.setIsSceneRecognitionValid(z);
    }

    static /* synthetic */ void access$2500(StateMachine stateMachine) {
        stateMachine.showBlackScreen();
    }

    static /* synthetic */ CameraDeviceHandler access$2600(StateMachine stateMachine) {
        return stateMachine.mCameraDeviceHandler;
    }

    static /* synthetic */ void access$2700(StateMachine stateMachine, CapturingMode capturingMode, boolean z) {
        stateMachine.requestResizeEvf(capturingMode, z);
    }

    static /* synthetic */ ObjectTrackingManager access$2800(StateMachine stateMachine) {
        return stateMachine.mObjectTracking;
    }

    static /* synthetic */ ObjectTrackingManager access$2802(StateMachine stateMachine, ObjectTrackingManager objectTrackingManager) {
        stateMachine.mObjectTracking = objectTrackingManager;
        return objectTrackingManager;
    }

    static /* synthetic */ void access$2900(StateMachine stateMachine) {
        stateMachine.switchVideoFaceDetection();
    }

    static /* synthetic */ GestureShutter access$300(StateMachine stateMachine) {
        return stateMachine.mGestureShutter;
    }

    static /* synthetic */ boolean access$3000(StateMachine stateMachine) {
        return stateMachine.mIsSemiAutoEnabled;
    }

    static /* synthetic */ boolean access$3002(StateMachine stateMachine, boolean z) {
        stateMachine.mIsSemiAutoEnabled = z;
        return z;
    }

    static /* synthetic */ boolean access$3100(StateMachine stateMachine) {
        return stateMachine.isTouchAeEnabled();
    }

    static /* synthetic */ void access$3200(StateMachine stateMachine, int i) {
        stateMachine.onZoomChange(i);
    }

    static /* synthetic */ void access$3400(StateMachine stateMachine, StateMachine$State stateMachine$State, Object[] objArr) {
        stateMachine.changeTo(stateMachine$State, objArr);
    }

    static /* synthetic */ void access$3500(StateMachine stateMachine, boolean z) {
        stateMachine.cancelAutoFocus(z);
    }

    static /* synthetic */ void access$3600(StateMachine stateMachine, RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        stateMachine.requestStorePicture(requestFactory$PhotoSavingRequestBuilder);
    }

    static /* synthetic */ StoreDataResult access$3700(StateMachine stateMachine) {
        return stateMachine.mLastStoreDataResult;
    }

    static /* synthetic */ StoreDataResult access$3702(StateMachine stateMachine, StoreDataResult storeDataResult) {
        stateMachine.mLastStoreDataResult = storeDataResult;
        return storeDataResult;
    }

    static /* synthetic */ StateMachine$SuitablePredictiveApplier access$3800(StateMachine stateMachine) {
        return stateMachine.mPredictiveApplier;
    }

    static /* synthetic */ Storage$StorageType access$400(StateMachine stateMachine) {
        return stateMachine.getCurrentStorage();
    }

    static /* synthetic */ RequestFactory$PhotoSavingRequestBuilder access$4000(StateMachine stateMachine) {
        return stateMachine.mLastPhotoSavingRequest;
    }

    static /* synthetic */ RequestFactory$PhotoSavingRequestBuilder access$4002(StateMachine stateMachine, RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        stateMachine.mLastPhotoSavingRequest = requestFactory$PhotoSavingRequestBuilder;
        return requestFactory$PhotoSavingRequestBuilder;
    }

    static /* synthetic */ RequestFactory$VideoSavingRequestBuilder access$4100(StateMachine stateMachine) {
        return stateMachine.mLastVideoSavingRequest;
    }

    static /* synthetic */ RequestFactory$VideoSavingRequestBuilder access$4102(StateMachine stateMachine, RequestFactory$VideoSavingRequestBuilder requestFactory$VideoSavingRequestBuilder) {
        stateMachine.mLastVideoSavingRequest = requestFactory$VideoSavingRequestBuilder;
        return requestFactory$VideoSavingRequestBuilder;
    }

    static /* synthetic */ void access$4200(StateMachine stateMachine, StoreDataResult storeDataResult) {
        stateMachine.onPredictiveCaptureStoreComplete(storeDataResult);
    }

    static /* synthetic */ void access$4700(StateMachine stateMachine) {
        stateMachine.changeToStandby();
    }

    static /* synthetic */ StateMachine$NotifyDelayedEventTask access$4800(StateMachine stateMachine, StateMachine$TransitterEvent stateMachine$TransitterEvent, Object[] objArr) {
        return stateMachine.notifyDelayedEvent(stateMachine$TransitterEvent, objArr);
    }

    static /* synthetic */ CameraActivity access$500(StateMachine stateMachine) {
        return stateMachine.mActivity;
    }

    static /* synthetic */ boolean access$5000(StateMachine stateMachine) {
        return stateMachine.hasRemainSavingRequest();
    }

    static /* synthetic */ Runnable access$5200(StateMachine stateMachine) {
        return stateMachine.mNotifyResumeTimeoutTask;
    }

    static /* synthetic */ boolean access$5300(StateMachine stateMachine) {
        return stateMachine.isFusionMonitoringNeeded();
    }

    static /* synthetic */ void access$5400(StateMachine stateMachine, FastCapture fastCapture, StateMachine$StartupAction stateMachine$StartupAction) {
        stateMachine.startFastCapture(fastCapture, stateMachine$StartupAction);
    }

    static /* synthetic */ StateMachine$StorageStateAdapter access$5600(StateMachine stateMachine) {
        return stateMachine.mStorageStateListener;
    }

    static /* synthetic */ UserEventHandler$VirtualKeyEventDispatcher access$5700(StateMachine stateMachine) {
        return stateMachine.mVirtualKeyEventDispatcher;
    }

    static /* synthetic */ void access$5800(StateMachine stateMachine) {
        stateMachine.initGeoTagManager();
    }

    static /* synthetic */ void access$5900(StateMachine stateMachine) {
        stateMachine.initSideSenseSetting();
    }

    static /* synthetic */ Storage access$600(StateMachine stateMachine) {
        return stateMachine.mStorage;
    }

    static /* synthetic */ boolean access$6202(StateMachine stateMachine, boolean z) {
        stateMachine.mIsPausedAudioPlayback = z;
        return z;
    }

    static /* synthetic */ void access$6400(StateMachine stateMachine) {
        stateMachine.sendResearchViewEvent();
    }

    static /* synthetic */ int access$6500(StateMachine stateMachine) {
        return stateMachine.getSensorOrientation();
    }

    static /* synthetic */ void access$6700(StateMachine stateMachine) {
        stateMachine.notifySceneRecognitionDisabled();
    }

    static /* synthetic */ void access$6800(StateMachine stateMachine, StateMachine$NotifyDelayedEventTask stateMachine$NotifyDelayedEventTask) {
        stateMachine.removeDelayedEvent(stateMachine$NotifyDelayedEventTask);
    }

    static /* synthetic */ void access$6900(StateMachine stateMachine) {
        stateMachine.doZoomChangeAngle();
    }

    static /* synthetic */ boolean access$700(StateMachine stateMachine, Storage$StorageType storage$StorageType) {
        return stateMachine.checkSaveDestinationCanBeChange(storage$StorageType);
    }

    static /* synthetic */ boolean access$7000(StateMachine stateMachine) {
        return stateMachine.startAutoFocus();
    }

    static /* synthetic */ Object access$7200(Object[] objArr, int i, Class cls, Object obj) {
        return getEventParam(objArr, i, cls, obj);
    }

    static /* synthetic */ boolean access$7500(StateMachine stateMachine, boolean z) {
        return stateMachine.checkBurstConditions(z);
    }

    static /* synthetic */ void access$7700(StateMachine stateMachine) {
        stateMachine.requestPhotoSmileCapture();
    }

    static /* synthetic */ void access$7800(StateMachine stateMachine, Point point) {
        stateMachine.doChangeSelectedFace(point);
    }

    static /* synthetic */ void access$7900(StateMachine stateMachine, Rect rect) {
        stateMachine.doStartObjectTracking(rect);
    }

    static /* synthetic */ boolean access$800(StateMachine stateMachine) {
        return stateMachine.mIsSdPermissionFinished;
    }

    static /* synthetic */ boolean access$802(StateMachine stateMachine, boolean z) {
        stateMachine.mIsSdPermissionFinished = z;
        return z;
    }

    static /* synthetic */ void access$8100(StateMachine stateMachine, AnimationRequest$AnimationType animationRequest$AnimationType) {
        stateMachine.switchCamera(animationRequest$AnimationType);
    }

    static /* synthetic */ void access$8200(StateMachine stateMachine, float f) {
        stateMachine.updateAmberBlueColor(f);
    }

    static /* synthetic */ void access$8300(StateMachine stateMachine, float f) {
        stateMachine.updateBrightness(f);
    }

    static /* synthetic */ boolean access$8500(StateMachine stateMachine, Storage$StorageType storage$StorageType) {
        return stateMachine.isStorageFull(storage$StorageType);
    }

    static /* synthetic */ void access$8600(StateMachine stateMachine, boolean z) {
        stateMachine.notifyCoolingUltraLow(z);
    }

    static /* synthetic */ void access$8700(StateMachine stateMachine, FusionMode fusionMode) {
        stateMachine.updateFusionModeSetting(fusionMode);
    }

    static /* synthetic */ void access$8900(StateMachine stateMachine, CapturingMode capturingMode) {
        stateMachine.setCurrentCapturingMode(capturingMode);
    }

    static /* synthetic */ void access$9000(StateMachine stateMachine) {
        stateMachine.checkThermalWarning();
    }

    static /* synthetic */ List access$9100(StateMachine stateMachine) {
        return stateMachine.mPendingTaskListForStandby;
    }

    static /* synthetic */ boolean access$9200(StateMachine stateMachine) {
        return stateMachine.isEnoughStorageSizeAvailableForOneShotVideo();
    }

    static /* synthetic */ RequestFactory$VideoSavingRequestBuilder access$9300(StateMachine stateMachine, RecordingProfile recordingProfile) {
        return stateMachine.createVideoSavingRequest(recordingProfile);
    }

    static /* synthetic */ RecorderController$RecorderListener access$9400(StateMachine stateMachine) {
        return stateMachine.mRecorderListener;
    }

    static /* synthetic */ OnSuperSlowRecordingFinishedListener access$9500(StateMachine stateMachine) {
        return stateMachine.mOnSuperSlowRecordingFinishedListener;
    }

    static /* synthetic */ boolean access$9600(StateMachine stateMachine) {
        return stateMachine.shouldPlayShutterSound();
    }

    private void requestLoadStoredPicture(StoreDataResult storeDataResult) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke uri:" + storeDataResult.uri + ", semcType:" + storeDataResult.savingRequest.getSomcType() + ", OneShot:" + this.mActivity.isOneShot());
        }
        PerfLog.BYPASSCAMERA_ON_STORE_COMPLETE.transit();
        this.mStorage.requestLoad(storeDataResult.uri, storeDataResult.savingRequest.common.orientation, new StateMachine$2(this, storeDataResult));
    }

    private boolean isVideo() {
        return getCurrentCapturingMode().getType() == 2;
    }

    public void releaseContentsViewController() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke");
        }
        if (this.mContentsViewController != null) {
            this.mContentsViewController.clearContents();
        }
        this.mContentsViewController = null;
    }

    public synchronized boolean isDialogOpened() {
        return this.mCurrentState.getCaptureState() == StateMachine$CaptureState.STATE_OPERATION_RESTRICTED;
    }

    private boolean isAllSnapshotCompleted() {
        return this.mCameraDeviceHandler.getRemainSavingPhotoRequestCount() == 0;
    }

    public UserSettings getUserSetting() {
        return this.mUserSettings;
    }

    public Float getZoom() {
        return this.mCameraDeviceHandler.getZoom();
    }

    public void addOnStateChangedListener(StateMachine$OnStateChangedListener stateMachine$OnStateChangedListener) {
        this.mOnStateChangedListenerSet.add(stateMachine$OnStateChangedListener);
    }

    public void removeOnStateChangedListener(StateMachine$OnStateChangedListener stateMachine$OnStateChangedListener) {
        this.mOnStateChangedListenerSet.remove(stateMachine$OnStateChangedListener);
    }

    public StateMachine(CameraActivity cameraActivity, Storage storage) {
        this.mActivity = cameraActivity;
        this.mStorage = storage;
        this.mUserSettings = cameraActivity.getStoredSettings().getUserSettings();
        this.mUserSettings.register(this.mSettingController);
        this.mLastSettings = cameraActivity.getStoredSettings().getLastSettings();
        if (this.mStorageReadyStateListener == null) {
            this.mStorageReadyStateListener = new StateMachine$StorageReadyStateAdapter(this, null);
            this.mStorage.addStorageReadyStateListener(this.mStorageReadyStateListener);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void requestResizeEvf(CapturingMode capturingMode, boolean z) {
        Rect pictureRect;
        boolean z2;
        Rect previewRect;
        if (this.mCurrentState.getCaptureState() == StateMachine$CaptureState.STATE_PAUSE && z) {
            return;
        }
        if (capturingMode.isVideo()) {
            if (capturingMode == CapturingMode.SLOW_MOTION) {
                pictureRect = ((SlowMotion) this.mUserSettings.get(capturingMode, UserSettingKey.SLOW_MOTION)).getVideoSize().getVideoRect();
            } else {
                pictureRect = ((VideoSize) this.mUserSettings.get(capturingMode, UserSettingKey.VIDEO_SIZE)).getVideoRect();
                if (((VideoHdr) this.mUserSettings.get(capturingMode, UserSettingKey.VIDEO_HDR)) == VideoHdr.HDR_ON) {
                    z2 = true;
                }
                previewRect = this.mCameraDeviceHandler.getPreviewRect(capturingMode, pictureRect);
                if (previewRect == null) {
                    Size surfaceSize = PlatformDependencyResolver.getSurfaceSize(previewRect, z2);
                    this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_RESIZE_EVF_SCOPE, new Rect(0, 0, surfaceSize.getWidth(), surfaceSize.getHeight()), Boolean.valueOf(z));
                    return;
                }
                return;
            }
        } else {
            pictureRect = ((Resolution) this.mUserSettings.get(capturingMode, UserSettingKey.RESOLUTION)).getPictureRect();
        }
        z2 = false;
        previewRect = this.mCameraDeviceHandler.getPreviewRect(capturingMode, pictureRect);
        if (previewRect == null) {
        }
    }

    public void setDependencies(ViewFinder viewFinder, CameraDeviceHandler cameraDeviceHandler) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke");
        }
        this.mViewFinder = viewFinder;
        this.mCameraDeviceHandler = cameraDeviceHandler;
        this.mObjectTracking = new ObjectTrackingManager(viewFinder, cameraDeviceHandler, this);
    }

    private StateMachine$NotifyDelayedEventTask notifyDelayedEvent(StateMachine$TransitterEvent stateMachine$TransitterEvent, Object... objArr) {
        StateMachine$NotifyDelayedEventTask stateMachine$NotifyDelayedEventTask = new StateMachine$NotifyDelayedEventTask(this, stateMachine$TransitterEvent, objArr, null);
        this.mHandler.postDelayed(stateMachine$NotifyDelayedEventTask, 100L);
        return stateMachine$NotifyDelayedEventTask;
    }

    private void removeDelayedEvent(StateMachine$NotifyDelayedEventTask stateMachine$NotifyDelayedEventTask) {
        this.mHandler.removeCallbacks(stateMachine$NotifyDelayedEventTask);
    }

    private void sendVideoChapterThumbnailToViewFinder() {
        if (this.mChapterThumbnail == null || !this.mViewFinder.isHeadUpDisplayReady()) {
            return;
        }
        if (this.mLastVideoSavingRequest != null) {
            this.mChapterThumbnail.setOrientation(this.mLastVideoSavingRequest.mCommonStatus.orientation);
        }
        this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_ADD_VIDEO_CHAPTER, this.mChapterThumbnail);
        this.mChapterThumbnail = null;
    }

    public synchronized void sendEvent(StateMachine$TransitterEvent stateMachine$TransitterEvent, Object... objArr) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke TransitterEvent:" + stateMachine$TransitterEvent + ", current state:" + this.mCurrentState);
        }
        switch (StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent[stateMachine$TransitterEvent.ordinal()]) {
            case 1:
                this.mCurrentState.handleInitialize(objArr);
                break;
            case 2:
                this.mCurrentState.handleResume(objArr);
                break;
            case 3:
                this.mCurrentState.handleResumeTimeout(objArr);
                break;
            case 4:
                this.mCurrentState.handlePause(objArr);
                break;
            case 5:
                this.mCurrentState.handleFinalize(objArr);
                break;
            case 6:
                this.mCurrentState.handleOnHeatedOverWarning(objArr);
                break;
            case 7:
                this.mCurrentState.handleOnHeatedOverWarningExtra(objArr);
                break;
            case 8:
                this.mCurrentState.handleOnHeatedOverCoolingLow(objArr);
                break;
            case 9:
                this.mCurrentState.handleOnHeatedOverCoolingUltraLow(objArr);
                break;
            case 10:
                this.mCurrentState.handleOnReachBatteryLimit(new Object[0]);
                break;
            case 11:
                this.mCurrentState.handleOnReachBatteryLow(new Object[0]);
                break;
            case 12:
                this.mCurrentState.handleOnReachBatteryLevelChanged(Integer.valueOf(((Integer) objArr[0]).intValue()));
                break;
            case 13:
                this.mCurrentState.handleOnHeatedOverCritical(objArr);
                break;
            case 14:
                this.mCurrentState.handleOnHeatedOverNormal(objArr);
                break;
            case 15:
                this.mCurrentState.handleOnEvfPrepared(objArr);
                break;
            case 16:
                this.mCurrentState.handleOnInitialAutoFocusDone(objArr);
                break;
            case 17:
                this.mCurrentState.handleOnAutoFocusDone(objArr);
                break;
            case 18:
                this.mCurrentState.handleOnPreShutterDone(objArr);
                break;
            case 19:
                this.mCurrentState.handleOnShutterDone(objArr);
                break;
            case 20:
                this.mCurrentState.handleOnPrepareBurstDone(objArr);
                break;
            case 21:
                this.mCurrentState.handleOnPreTakePictureDone(objArr);
                break;
            case 22:
                this.mCurrentState.handleOnTakePictureDone(objArr);
                break;
            case 23:
                this.mCurrentState.handleOnVideoRecordingDone(objArr);
                break;
            case 24:
                this.mCurrentState.handleTouchContentProgress();
                break;
            case 25:
                this.mCurrentState.handleOnStoreRequested(objArr);
                break;
            case 26:
                this.mCurrentState.handleOnStoreCompleted(objArr);
                break;
            case 27:
                this.mCurrentState.handleKeyMenu(objArr);
                break;
            case 28:
                this.mCurrentState.handleStartTransitionOperation(objArr);
                break;
            case 29:
                this.mCurrentState.handleFinishTransitionOperation(objArr);
                break;
            case 30:
                this.mCurrentState.handleClearFocus(objArr);
                break;
            case 31:
                this.mCurrentState.handleDialogOpened(objArr);
                break;
            case 32:
                this.mCurrentState.handleDialogClosed(objArr);
                break;
            case 33:
                this.mCurrentState.handleStorageError(objArr);
                break;
            case 34:
                this.mCurrentState.handleStorageMounted(objArr);
                break;
            case 35:
                this.mCurrentState.handleOnStorageUngranted(objArr);
                break;
            case 36:
                this.mCurrentState.handleSetTouchedPosition(objArr);
                break;
            case 37:
                this.mCurrentState.handleRequestSetupHeadUpDisplay(objArr);
                break;
            case 38:
                this.mCurrentState.handleOnRecordingStartWaitDone(objArr);
                break;
            case 39:
                this.mCurrentState.handleOnRecordingError(objArr);
                break;
            case 40:
                this.mCurrentState.handleChangeSelectedFace(objArr);
                break;
            case 41:
                this.mCurrentState.handleSetSelectedObjectPosition(objArr);
                break;
            case 42:
                this.mCurrentState.handleDeselectObjectPosition(objArr);
                break;
            case 43:
                this.mCurrentState.handleStartAfAfterObjectTracked(objArr);
                break;
            case 44:
                this.mCurrentState.handleOnBurstShutterDone(objArr);
                break;
            case 45:
                this.mCurrentState.handleOnBurstStoreCompleted(objArr);
                break;
            case 46:
                this.mCurrentState.handleOnPredictiveCaptureGroupStoreCompleted(objArr);
                break;
            case 47:
                this.mCurrentState.handleOnOnePreviewFrameUpdated(objArr);
                break;
            case 48:
                this.mCurrentState.handleOnContinuousPreviewFrameUpdated(objArr);
                break;
            case 49:
                this.mCurrentState.handleSwitchCamera(objArr);
                break;
            case 50:
                this.mCurrentState.handleCancelTouchedPosition(objArr);
                break;
            case 51:
                this.mCurrentState.handleOnSemiAutoEnabled(objArr);
                break;
            case 52:
                this.mCurrentState.handleOnSemiAutoDisabled(objArr);
                break;
            case 53:
                this.mCurrentState.handleOnAmberBlueColorChanged(objArr);
                break;
            case 54:
                this.mCurrentState.handleOnBrightnessChanged(objArr);
                break;
            case 55:
                this.mCurrentState.handleSelfTimerCancel(objArr);
                break;
            case 56:
                this.mCurrentState.handleOnCameraDeviceOpened(objArr);
                break;
            case 57:
                this.mCurrentState.handleOnCameraDeviceClosed(objArr);
                break;
            case 58:
                this.mCurrentState.handleStopRecordingSlowMotion(objArr);
                break;
            case 59:
                this.mCurrentState.handleSlowMotionFeedbackAnimationEnd(objArr);
                break;
            case 60:
                this.mCurrentState.handleHighFameRateRecordingDone(objArr);
                break;
            case 61:
                this.mCurrentState.handleChangeAngleStart(objArr);
                break;
            case 62:
                this.mCurrentState.handleCaptureReady(objArr);
                break;
            case 63:
                this.mCurrentState.handleStartCaptureCountDown(objArr);
                break;
            case 64:
                this.mCurrentState.handleCapture(objArr);
                break;
            case 65:
                this.mCurrentState.handleCaptureBurst(objArr);
                break;
            case 66:
                this.mCurrentState.handleCaptureCancel(objArr);
                break;
            case 67:
                this.mCurrentState.handleRecordReady(objArr);
                break;
            case 68:
                this.mCurrentState.handleStartRecording(objArr);
                break;
            case 69:
                this.mCurrentState.handleStopRecording(objArr);
                break;
            case 70:
                this.mCurrentState.handleResumeRecording(objArr);
                break;
            case 71:
                this.mCurrentState.handlePauseRecording(objArr);
                break;
            case 72:
                this.mCurrentState.handleTriggerSlowMotion(objArr);
                break;
            case 73:
                this.mCurrentState.handleRequestUpdateHighSensitivityFusionMode(objArr);
                break;
            case 74:
                this.mCurrentState.handleFusionConditionChanged(objArr);
                break;
            case 75:
                this.mCurrentState.handleOnStorageReadyStateChanged(objArr);
                break;
            case 76:
                this.mCurrentState.handleChangeCapturingMode(objArr);
                break;
            case 77:
                this.mCurrentState.handlePrepareZoom(objArr);
                break;
            case 78:
                this.mCurrentState.handlePerformZoom(objArr);
                break;
            case 79:
                this.mCurrentState.handleFinishZoom(objArr);
                break;
        }
    }

    public synchronized void sendStaticEvent(StateMachine$StaticEvent stateMachine$StaticEvent, Object... objArr) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke StaticEvent:" + stateMachine$StaticEvent + ", current state:" + this.mCurrentState);
        }
        switch (StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$StaticEvent[stateMachine$StaticEvent.ordinal()]) {
            case 1:
                this.mContentsViewController = (ContentsViewController) objArr[0];
                if (StateMachine$CaptureState.access$13700(this.mCurrentState.getCaptureState())) {
                    this.mContentsViewController.disableClick();
                }
                storeSavingRequestList();
                break;
            case 2:
                switch (StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$view$ViewFinder$HeadUpDisplaySetupState[((ViewFinder$HeadUpDisplaySetupState) objArr[0]).ordinal()]) {
                    case 1:
                    case 2:
                        if (!this.mViewFinder.isMessageDialogOpened()) {
                            calculateRemainStorage();
                        }
                        break;
                    case 3:
                        VideoSize videoSize = (VideoSize) this.mUserSettings.get(UserSettingKey.VIDEO_SIZE);
                        this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_PREPARE_RECORDING_INDICATOR, Integer.valueOf((int) this.mLastVideoSavingRequest.mVideoStatus.maxDurationMills), Boolean.valueOf(videoSize != null && videoSize.isConstraint()), true, (VideoHdr) this.mUserSettings.get(UserSettingKey.VIDEO_HDR));
                        updateRecordingProgress(0);
                        this.mCameraDeviceHandler.requestOnePreviewFrame();
                        break;
                }
                if (isFusionMonitoringNeeded()) {
                    sendEvent(StateMachine$TransitterEvent.EVENT_ON_FUSION_CONDITION_CHANGED, this.mCameraDeviceHandler.getLatestFusionResult());
                }
                break;
            case 3:
                this.mCurrentState.handleOnSceneModeChanged(objArr);
                break;
            case 4:
                this.mCurrentState.handleOnFaceDetected(objArr);
                break;
            case 5:
                this.mCurrentState.handleOnObjectTracked(objArr);
                break;
            case 6:
                this.mCurrentState.handleOnOrientationChanged(objArr);
                break;
            case 7:
                this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_LAZY_INITIALIZATION_TASK_RUN, new Object[0]);
                this.mCurrentState.handleOnLazyInitializationTaskRun(objArr);
                break;
            case 8:
                this.mCurrentState.handleOnObjectLost(objArr);
                break;
            case 9:
                this.mGestureShutter.handleSettingsChanged(((Boolean) objArr[0]).booleanValue());
                break;
            case 10:
                this.mIsSdPermissionFinished = true;
                break;
            case 11:
                this.mCurrentState.handleOnPreviewStarted();
                break;
        }
    }

    private void showBlackScreen() {
        this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_SHOW_BLACK_SCREEN, new Object[0]);
    }

    private void storeSavingRequestList() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke mPhotoSavingRequestList.size():" + this.mPhotoSavingRequestList.size());
        }
        if (this.mPhotoSavingRequestList.isEmpty()) {
            return;
        }
        for (RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder : this.mPhotoSavingRequestList) {
            requestFactory$PhotoSavingRequestBuilder.setRequestId(this.mViewFinder.getRequestId(false));
            if (CamLog.DEBUG) {
                CamLog.d("storePicture() requestId:" + requestFactory$PhotoSavingRequestBuilder.getRequestId());
            }
            SavingRequest savingRequestCreateSavingRequest = RequestFactory.createSavingRequest(requestFactory$PhotoSavingRequestBuilder);
            this.mStorage.requestStore(savingRequestCreateSavingRequest, savingRequestCreateSavingRequest.getStorageType(), this.mOnStoreCompletedListener);
        }
        this.mPhotoSavingRequestList.clear();
    }

    private synchronized void changeTo(StateMachine$State stateMachine$State, Object... objArr) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke current:" + this.mCurrentState.getClass().getSimpleName() + ", to:" + stateMachine$State.getClass().getSimpleName());
        }
        this.mCurrentState.exit();
        this.mCurrentState = stateMachine$State;
        Iterator<StateMachine$OnStateChangedListener> it = this.mOnStateChangedListenerSet.iterator();
        while (it.hasNext()) {
            it.next().onStateChanged(this.mCurrentState.getCaptureState(), objArr);
        }
        this.mCurrentState.entry();
    }

    private void startFastCapture(FastCapture fastCapture, StateMachine$StartupAction stateMachine$StartupAction) {
        Rect previewRect = getPreviewRect();
        Rect surfaceViewRect = LayoutDependencyResolver.getSurfaceViewRect(this.mActivity, previewRect.width() / previewRect.height(), this.mActivity.getScreenAspect());
        PositionConverter.getInstance().init(((CapturingMode) this.mUserSettings.get(UserSettingKey.CAPTURING_MODE)).isFront(), surfaceViewRect, previewRect, PlatformCapability.getActiveArraySize(getCurrentCameraId()));
        PositionConverter.getInstance().setSurfaceSize(surfaceViewRect.width(), surfaceViewRect.height());
        PositionConverter.getInstance().setPreviewSize(previewRect.width(), previewRect.height());
        this.mActivity.requestPostLazyInitializationTaskExecute();
        if (!this.mActivity.awaitSetupAllReady()) {
            CamLog.e("Setup failed");
        }
        if (this.mViewFinder.isHeadUpDisplayReady() && isTutorialNeededToBeShownForCurrentMode()) {
            changeTo(new StateMachine$StateOperationRestricted(this, null), ViewFinder$UiComponentKind.TUTORIAL);
        } else if (isVideo()) {
            changeTo(new StateMachine$StateVideoReady(this, stateMachine$StartupAction), new Object[0]);
        } else {
            changeTo(new StateMachine$StatePhotoReady(this, true, true, stateMachine$StartupAction), new Object[0]);
        }
        switch (StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FastCapture[fastCapture.ordinal()]) {
            case 1:
            default:
                return;
            case 2:
                if (this.mActivity.getLaunchCondition().getExtraOperation() == LaunchCondition$ExtraOperation.LAUNCH_AND_CAPTURE) {
                    if (!PlatformCapability.hasDeviceError()) {
                        doFastestCapture();
                    }
                    this.mActivity.getLaunchCondition().clearExtraOperation();
                    return;
                }
                return;
            case 3:
                throw new IllegalArgumentException("StateMachine.Resume:[FastCapture OFF]");
        }
    }

    private void switchCamera(AnimationRequest$AnimationType animationRequest$AnimationType) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke current:" + getCurrentCapturingMode());
        }
        CapturingMode currentCapturingMode = getCurrentCapturingMode();
        switch (StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[currentCapturingMode.ordinal()]) {
            case 1:
                currentCapturingMode = CapturingMode.FRONT_PHOTO;
                break;
            case 2:
                currentCapturingMode = CapturingMode.NORMAL;
                break;
            case 3:
            case 8:
                currentCapturingMode = CapturingMode.FRONT_VIDEO;
                break;
            case 5:
                currentCapturingMode = CapturingMode.SUPERIOR_FRONT;
                break;
            case 6:
                currentCapturingMode = CapturingMode.SCENE_RECOGNITION;
                break;
            case 7:
                currentCapturingMode = CapturingMode.VIDEO;
                break;
        }
        switchCamera(currentCapturingMode, animationRequest$AnimationType);
    }

    private void switchCamera(CapturingMode capturingMode, AnimationRequest$AnimationType animationRequest$AnimationType) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke requestMode:" + capturingMode);
        }
        this.mCameraDeviceHandler.savePreloadSettings((CapturingMode) this.mUserSettings.get(UserSettingKey.CAPTURING_MODE), this.mUserSettings, this.mLastSettings, this.mActivity.isOneShot());
        this.mCameraDeviceHandler.releaseRecorder();
        if (isFusionMonitoringNeeded()) {
            this.mCameraDeviceHandler.stopFusionMonitoring();
            this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_FUSION_CONDITION, (CameraParameters$FusionResult) null);
        }
        this.mCameraDeviceHandler.stopPreviewSynchronized();
        this.mCameraDeviceHandler.closeCamera();
        changeModeTo(capturingMode, animationRequest$AnimationType);
        requestResizeEvf(capturingMode, false);
        this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_CAPTURING_MODE_CHANGED, capturingMode, false, animationRequest$AnimationType);
        sendResearchSameActivityEvent(getCurrentCapturingMode());
    }

    private void changeModeTo(CapturingMode capturingMode, AnimationRequest$AnimationType animationRequest$AnimationType) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke request:" + capturingMode + ", current:" + getCurrentCapturingMode());
        }
        this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_CAPTURING_MODE_CHANGING, new Object[0]);
        doStopObjectTracking();
        this.mUserSettings.resetTempParameters();
        this.mViewFinder.clearMessageDialog();
        this.mCameraDeviceHandler.savePreloadSettings((CapturingMode) this.mUserSettings.get(UserSettingKey.CAPTURING_MODE), this.mUserSettings, this.mLastSettings, this.mActivity.isOneShot());
        if (getCurrentCapturingMode().isFront() == capturingMode.isFront()) {
            setCurrentCapturingMode(capturingMode);
            changeTo(new StateMachine$StateWaitingEvfPreparedByModeChange(this, null), new Object[0]);
            this.mChangeCameraModeTask = new StateMachine$ChangeCameraModeTask(this, capturingMode, animationRequest$AnimationType, null);
            this.mHandler.post(this.mChangeCameraModeTask);
            return;
        }
        setCurrentCapturingMode(capturingMode);
        changeTo(new StateMachine$StateCameraSwitching(this, this.mActivity.prepareCameraDeviceHandler(FastCapture.LAUNCH_ONLY, capturingMode, this.mUserSettings), FastCapture.LAUNCH_ONLY, null), new Object[0]);
        this.mViewFinder.notifyOnEvfPrepared();
    }

    private void doFastestCapture() {
        if (!isStorageWritable(getCurrentStorage())) {
            changeTo(new StateMachine$StateWarning(this, null), new Object[0]);
            return;
        }
        pauseAudioPlaybackForCapture();
        switch (StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState[this.mCameraDeviceHandler.getPreProcessState().ordinal()]) {
            case 1:
                changeTo(new StateMachine$StatePhotoCapture(this, null), new Object[0]);
                return;
            case 2:
                changeTo(new StateMachine$StatePhotoCapture(this, null), new Object[0]);
                return;
            case 3:
                changeTo(new StateMachine$StatePhotoCapture(this, null), new Object[0]);
                return;
            case 4:
                changeTo(new StateMachine$StatePhotoCapture(this, null), new Object[0]);
                return;
            case 5:
            case 6:
                return;
            case 7:
                changeTo(new StateMachine$StatePhotoCapture(this, null), new Object[0]);
                return;
            default:
                throw new IllegalStateException("Un-Expected state:" + this.mCameraDeviceHandler.getPreProcessState());
        }
    }

    private boolean isTouchAeEnabled() {
        if (PlatformCapability.isTouchAeSupported(getCurrentCameraId()) && this.mUserSettings.get(UserSettingKey.TOUCH_CAPTURE) != TouchCapture.ON) {
            return (getCurrentCapturingMode() == CapturingMode.SCENE_RECOGNITION || getCurrentCapturingMode() == CapturingMode.SUPERIOR_FRONT || getCurrentCapturingMode() == CapturingMode.NORMAL) && this.mUserSettings.get(UserSettingKey.TOUCH_INTENTION) == TouchIntention.FOCUS_AND_EXPOSURE;
        }
        return false;
    }

    private void doChangeSelectedFace(Point point) {
        this.mObjectTracking.stop();
        this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED_BY_SELECT_FACE, new Object[0]);
        this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FACE_DETECTION_STARTED, new Object[0]);
        this.mCameraDeviceHandler.setSelectedFacePosition(point.x, point.y);
        if (isTouchAeEnabled()) {
            this.mCameraDeviceHandler.setMeteringAreaAndCommit(null, (Metering) this.mUserSettings.get(UserSettingKey.METERING));
        }
    }

    private boolean startAutoFocus() {
        if (this.mActivity != null) {
            if (!this.mStorage.isStorageActivated() || !isStorageWritable(getCurrentStorage())) {
                if (!CamLog.DEBUG) {
                    return false;
                }
                CamLog.d("Storage is not ready");
                return false;
            }
            pauseAudioPlaybackForCapture();
        }
        this.mCameraDeviceHandler.autoFocus();
        return true;
    }

    private void cancelAutoFocus(boolean z) {
        if (z) {
            this.mCameraDeviceHandler.resetFocusModeAndCommit();
        }
        this.mViewFinder.setDisplayFlashRequired(false);
        this.mViewFinder.setDisplayFlashColor(255, 255, 255);
        this.mCameraDeviceHandler.cancelAutoFocus();
    }

    private void doCapture(RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        this.mLastPhotoSavingRequest = requestFactory$PhotoSavingRequestBuilder;
        if (this.mLastPhotoSavingRequest != null) {
            this.mCameraDeviceHandler.applySavingRequest(this.mLastPhotoSavingRequest);
            this.mViewFinder.showDisplayFlashScreen();
            this.mCameraDeviceHandler.takePicture(this.mLastPhotoSavingRequest);
            this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY, Boolean.valueOf(isSettingChangeAcceptable()));
            sendResearchCaptureEvents();
        }
    }

    private void sendResearchCaptureEvents() {
        LocalResearchUtil.getInstance().sendEventSettings();
        LocalResearchUtil.getInstance().sendSemiAutoSettingValues(Event$Category.SETTINGS_PHOTO);
        ResearchUtil.getInstance().setOrientation(this.mLastPhotoSavingRequest.mCommonStatus.orientation);
        LocalResearchUtil.getInstance().sendSemiAutoSettingValues(Event$Category.SETTINGS_PHOTO);
        ResearchUtil.getInstance().setTimeCaptureStart();
    }

    private void doCaptureWhileRecording() {
        RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilderCreatePhotoSavingRequest = createPhotoSavingRequest(SavingTaskManager$SavedFileType.PHOTO_DURING_REC);
        if (requestFactory$PhotoSavingRequestBuilderCreatePhotoSavingRequest != null) {
            if (this.mContentsViewController != null) {
                this.mContentsViewController.stopAnimation(false);
            }
            this.mViewFinder.onShutterDone(true);
            this.mCameraDeviceHandler.captureWhileRecording(requestFactory$PhotoSavingRequestBuilderCreatePhotoSavingRequest);
        }
    }

    private void doStartRecording(boolean z) {
        SlowMotion slowMotion;
        if (this.mContentsViewController != null) {
            this.mContentsViewController.disableClick();
        }
        VideoSize videoSize = (VideoSize) this.mUserSettings.get(UserSettingKey.VIDEO_SIZE);
        if (getCurrentCapturingMode() == CapturingMode.SLOW_MOTION && (slowMotion = (SlowMotion) getUserSetting().get(UserSettingKey.SLOW_MOTION)) == SlowMotion.STANDARD_SLOW_MOTION) {
            videoSize = slowMotion.getVideoSize();
        }
        VideoHdr videoHdr = (VideoHdr) this.mUserSettings.get(UserSettingKey.VIDEO_HDR);
        RecordingProfile recordingProfileBuild = new RecordingProfile$Builder().videoSize(videoSize).setOneShot(this.mActivity.isOneShot()).videoHdr(videoHdr).build();
        this.mLastVideoSavingRequest = createVideoSavingRequest(recordingProfileBuild);
        this.mViewFinder.setRecordingOrientation(this.mActivity.getOrientation());
        boolean z2 = true;
        if (this.mLastVideoSavingRequest != null) {
            boolean z3 = (getCurrentCapturingMode() != CapturingMode.SLOW_MOTION && this.mUserSettings.get(UserSettingKey.VIDEO_SIZE) == VideoSize.MMS) || this.mUserSettings.isLimitForSizeOrDuration();
            this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_PREPARE_RECORDING_INDICATOR, Integer.valueOf((int) this.mLastVideoSavingRequest.mVideoStatus.maxDurationMills), Boolean.valueOf(z3), Boolean.valueOf((z3 || this.mUserSettings.get(UserSettingKey.CAPTURING_MODE) == CapturingMode.SLOW_MOTION) ? false : true), videoHdr);
            try {
                switch (StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[((SlowMotion) this.mUserSettings.get(UserSettingKey.SLOW_MOTION)).ordinal()]) {
                    case 2:
                    case 3:
                        this.mCameraDeviceHandler.updateRecorder(this.mLastVideoSavingRequest, shouldPlayShutterSound());
                        break;
                    default:
                        this.mCameraDeviceHandler.prepareRecorder(this.mLastVideoSavingRequest, this.mRecorderListener, this.mOnSuperSlowRecordingFinishedListener, shouldPlayShutterSound(), recordingProfileBuild, this.mStorage.createNotifier(getCurrentStorage(), 10));
                        break;
                }
                this.mCameraDeviceHandler.startRecording();
                if (isSettingChangeAcceptable()) {
                    this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY, false);
                }
                updateDateTaken(this.mLastVideoSavingRequest);
                this.mRecorderListener.setSavingRequestBuilder(this.mLastVideoSavingRequest);
            } catch (RuntimeException e) {
                CamLog.w("Start recording failed.", e);
                if (this.mContentsViewController != null) {
                    this.mContentsViewController.enableClick();
                }
                if (isCurrentStorageExternal() && !isStorageWritable(Storage$StorageType.EXTERNAL_CARD)) {
                    this.mViewFinder.showMessageDialog(DialogId.COULD_NOT_START_RECORDING, new Object[0]);
                    changeTo(new StateMachine$StateVideoReady(this), new Object[0]);
                    return;
                } else {
                    this.mViewFinder.showMessageDialog(DialogId.ERROR_IN_USE_BY_ANOTHER_APPLICATION, new Object[0]);
                    ResearchUtil.getInstance().sendCameraNotAvailableEvent();
                    z2 = false;
                }
            }
        } else {
            z2 = false;
        }
        ResearchUtil.getInstance().setRecordBySideSense(z);
        if (z2) {
            transitionToRecordingState(false);
        } else {
            changeTo(new StateMachine$StateWarning(this, null), new Object[0]);
        }
    }

    private void transitionToRecordingState(boolean z) {
        if (this.mActivity != null) {
            this.mActivity.disableAutoPowerOffTimer();
        }
        this.mChapterThumbnail = null;
        if (!z) {
            this.mCameraDeviceHandler.requestOnePreviewFrame();
        }
        if (this.mActivity != null) {
            int i = StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[getCurrentCapturingMode().ordinal()];
            if (i == 3) {
                this.mHighFrameRateVideoRecordingCountInSuperSlowMotion = 0;
                switch (StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[((SlowMotion) getUserSetting().get(UserSettingKey.SLOW_MOTION)).ordinal()]) {
                    case 1:
                        changeTo(new StateMachine$StateVideoRecording(this, (StateMachine$1) null), new Object[0]);
                        break;
                    case 2:
                        changeTo(new StateMachine$StateLowFrameRateVideoRecordingInSuperSlowMotion(this), new Object[0]);
                        break;
                    case 3:
                        changeTo(new StateMachine$StateHighFrameRateVideoRecordingInSuperSlowMotion(this), new Object[0]);
                        this.mViewFinder.startSlowMotionFeedbackAnimation();
                        break;
                }
            }
            switch (i) {
                case 7:
                case 8:
                    changeTo(new StateMachine$StateVideoRecording(this, false), new Object[0]);
                    break;
            }
        }
    }

    private void requestChangeModeTo(CapturingMode capturingMode, AnimationRequest$AnimationType animationRequest$AnimationType) {
        if (getCurrentCapturingMode() == capturingMode) {
            if (CamLog.DEBUG) {
                throw new IllegalArgumentException("The specified mode is already set, mode:" + getCurrentCapturingMode().name());
            }
            return;
        }
        switch (StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
            case 8:
                sendResearchSameActivityEvent(capturingMode);
                this.mCameraDeviceHandler.savePreloadSettings((CapturingMode) this.mUserSettings.get(UserSettingKey.CAPTURING_MODE), this.mUserSettings, this.mLastSettings, this.mActivity.isOneShot());
                if (isFusionMonitoringNeeded()) {
                    this.mCameraDeviceHandler.stopFusionMonitoring();
                    this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_FUSION_CONDITION, (CameraParameters$FusionResult) null);
                }
                changeModeTo(capturingMode, animationRequest$AnimationType);
                return;
            case 4:
            default:
                return;
        }
    }

    public boolean isVideoRecording() {
        return this.mIsVideoRecording;
    }

    private void updateFusionModeSetting(FusionMode fusionMode) {
        FusionMode fusionMode2 = (FusionMode) this.mUserSettings.get(UserSettingKey.FUSION_MODE);
        if (fusionMode == fusionMode2) {
            return;
        }
        int i = StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[getCurrentCapturingMode().ordinal()];
        if (i != 1) {
            if (i != 8) {
                return;
            }
            this.mUserSettings.set(fusionMode);
            LocalResearchUtil.getInstance().setSettingsValue(fusionMode2, fusionMode, getCurrentCapturingMode());
            return;
        }
        Iso iso = (Iso) this.mUserSettings.get(UserSettingKey.ISO);
        this.mUserSettings.set(fusionMode);
        if (iso != this.mUserSettings.get(UserSettingKey.ISO)) {
            this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_ISO_CHANGED_BY_FUSION, new Object[0]);
        }
        LocalResearchUtil.getInstance().setSettingsValue(fusionMode2, fusionMode, getCurrentCapturingMode());
    }

    public boolean canHandleWearableCaptureRequest() {
        return StateMachine$CaptureState.access$14200(this.mCurrentState.mCaptureState);
    }

    public boolean canHandleAsynchronizedTask() {
        return StateMachine$CaptureState.access$14300(this.mCurrentState.mCaptureState);
    }

    private void removeStartRecordingTask() {
        this.mHandler.removeCallbacks(this.mStartRecordingTask);
    }

    private void updateRecordingProgress(int i) {
        if (this.mViewFinder == null || !this.mViewFinder.isSetupHeadupDisplayInvoked()) {
            return;
        }
        if (this.mActivity != null) {
            this.mActivity.disableAutoPowerOffTimer();
        }
        this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_RECORDING_PROGRESS, Integer.valueOf(i));
    }

    private Event$StopOperation getCurrentRecordingStopOperation() {
        if (this.mActivity.isAlreadyHighTemperature()) {
            return Event$StopOperation.THERMAL_STOP;
        }
        if (this.mActivity.isAlreadyBcl()) {
            return Event$StopOperation.LOWBATTERY_STOP;
        }
        return Event$StopOperation.USER_STOP;
    }

    private void doStopRecording(boolean z) {
        PerfLog.STOP_REC.begin();
        if (this.mContentsViewController != null) {
            this.mContentsViewController.enableClick();
        }
        Optional<Long> optionalStopRecording = this.mCameraDeviceHandler.stopRecording(z);
        if (optionalStopRecording.isPresent()) {
            ResearchUtil.getInstance().setOrientation(this.mLastVideoSavingRequest.mCommonStatus.orientation);
            LocalResearchUtil.getInstance().sendEventSettings();
            LocalResearchUtil.getInstance().sendSemiAutoSettingValues(Event$Category.SETTINGS_VIDEO);
            LocalResearchUtil.getInstance().sendRecordingEvent(Event$CaptureOperation.RECORDING, getCurrentRecordingStopOperation(), optionalStopRecording.get().intValue(), false);
        }
        this.mViewFinder.onCaptureDone();
        if (VideoStabilizer.isIntelligentActive((VideoStabilizer) this.mUserSettings.get(UserSettingKey.VIDEO_STABILIZER))) {
            this.mLastVideoSavingRequest.setRequestId(this.mViewFinder.getRequestId(false));
        }
        PerfLog.STOP_REC.end();
    }

    private void doPauseRecording() {
        this.mCameraDeviceHandler.pauseRecording();
        changeTo(new StateMachine$StateVideoRecordingPausing(this, null), new Object[0]);
    }

    private void doResumeRecording() {
        this.mCameraDeviceHandler.resumeRecording();
        changeTo(new StateMachine$StateVideoRecording(this, (StateMachine$1) null), new Object[0]);
    }

    private void doHandleRecordingError() {
        this.mViewFinder.showMessageDialog(DialogId.ERROR_UNKNOWN, new Object[0]);
        changeTo(new StateMachine$StateWarning(this, null), new Object[0]);
    }

    private int getOrientation() {
        int normalizedRotation = RotationUtil.getNormalizedRotation(this.mActivity.getSensorOrientationDegree());
        CameraInfo cameraInfo = this.mCameraDeviceHandler.getCameraInfo();
        if (CamLog.DEBUG) {
            CamLog.d("ORIENTATION:sensorOrientation:" + normalizedRotation);
            CamLog.d("ORIENTATION:cameraOrientation", RotationUtil.orientationToString(cameraInfo.orientation));
            CamLog.d("ORIENTATION:cameraFacing:" + cameraInfo.facing);
        }
        switch (StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId[cameraInfo.facing.ordinal()]) {
        }
        return (cameraInfo.orientation + normalizedRotation) % 360;
    }

    private TakenStatusCommon createTakenStatusCommon(SavingTaskManager$SavedFileType savingTaskManager$SavedFileType, Rect rect, String str, String str2, String str3) {
        boolean zShouldAddToMediaStore;
        boolean z;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int orientation = getOrientation();
        Location currentLocation = (!this.mActivity.isOneShot() || PermissionsUtil.areCallerGeoPermissionsGranted(this.mActivity)) ? this.mActivity.getGeoTagManager().getCurrentLocation() : null;
        switch (StateMachine$8.$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType[savingTaskManager$SavedFileType.ordinal()]) {
            case 1:
                zShouldAddToMediaStore = true;
                z = zShouldAddToMediaStore;
                break;
            case 2:
                zShouldAddToMediaStore = this.mActivity.shouldAddToMediaStore();
                z = zShouldAddToMediaStore;
                break;
            case 3:
                zShouldAddToMediaStore = this.mActivity.shouldAddToMediaStore();
                z = zShouldAddToMediaStore;
                break;
            default:
                z = false;
                break;
        }
        return new TakenStatusCommon(jCurrentTimeMillis, orientation, currentLocation, rect.width(), rect.height(), str, str2, savingTaskManager$SavedFileType, str3, "", z, false);
    }

    public RequestFactory$PhotoSavingRequestBuilder createPhotoSavingRequest(SavingTaskManager$SavedFileType savingTaskManager$SavedFileType) {
        TakenStatusPhoto$Facing takenStatusPhoto$Facing;
        if (savingTaskManager$SavedFileType != SavingTaskManager$SavedFileType.BURST && savingTaskManager$SavedFileType != SavingTaskManager$SavedFileType.PHOTO && savingTaskManager$SavedFileType != SavingTaskManager$SavedFileType.PHOTO_DURING_REC) {
            throw new IllegalArgumentException("Unexpected type:" + savingTaskManager$SavedFileType);
        }
        Resolution resolution = (Resolution) this.mUserSettings.get(UserSettingKey.RESOLUTION);
        if (getCurrentCapturingMode().isFront()) {
            takenStatusPhoto$Facing = TakenStatusPhoto$Facing.FRONT;
        } else {
            takenStatusPhoto$Facing = TakenStatusPhoto$Facing.BACK;
        }
        RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder = new RequestFactory$PhotoSavingRequestBuilder(createTakenStatusCommon(savingTaskManager$SavedFileType, resolution.getPictureRect(), "image/jpeg", ".JPG", null), new TakenStatusPhoto(takenStatusPhoto$Facing), false);
        requestFactory$PhotoSavingRequestBuilder.addCallback(this.mOnStoreCompletedListener);
        requestFactory$PhotoSavingRequestBuilder.setOneshot(this.mActivity.isOneShotPhoto());
        if (savingTaskManager$SavedFileType == SavingTaskManager$SavedFileType.BURST) {
            requestFactory$PhotoSavingRequestBuilder.setSomcType(129);
            requestFactory$PhotoSavingRequestBuilder.setStorageType(Storage$StorageType.INTERNAL);
        } else {
            requestFactory$PhotoSavingRequestBuilder.setStorageType(getCurrentStorage());
        }
        requestFactory$PhotoSavingRequestBuilder.setExtraOutput(this.mActivity.getExtraOutput());
        return requestFactory$PhotoSavingRequestBuilder;
    }

    private RequestFactory$VideoSavingRequestBuilder createVideoSavingRequest(RecordingProfile recordingProfile) {
        SlowMotion slowMotion;
        VideoSize videoSize = (VideoSize) this.mUserSettings.get(UserSettingKey.VIDEO_SIZE);
        if (getCurrentCapturingMode() == CapturingMode.SLOW_MOTION && (slowMotion = (SlowMotion) getUserSetting().get(UserSettingKey.SLOW_MOTION)) == SlowMotion.STANDARD_SLOW_MOTION) {
            videoSize = slowMotion.getVideoSize();
        }
        MaxVideoSize maxVideoSize = this.mUserSettings.getMaxVideoSize(this.mStorage, getCurrentStorage(), recordingProfile);
        long jMin = Math.min(maxVideoSize.getMaxFileSize(), StorageUtil.getStorageMaximumFileSize(this.mActivity, getCurrentStorage()));
        long maxDuration = maxVideoSize.getMaxDuration();
        String mime = recordingProfile.getMime();
        String extension = recordingProfile.getExtension();
        String string = getCurrentCapturingMode() == CapturingMode.SLOW_MOTION ? getUserSetting().get(UserSettingKey.SLOW_MOTION).toString() : null;
        RequestFactory$VideoSavingRequestBuilder requestFactory$VideoSavingRequestBuilder = new RequestFactory$VideoSavingRequestBuilder(createTakenStatusCommon(SavingTaskManager$SavedFileType.VIDEO, videoSize.getVideoRect(), mime, extension, null), new TakenStatusVideo(maxDuration, jMin));
        requestFactory$VideoSavingRequestBuilder.addCallback(this.mOnStoreCompletedListener);
        requestFactory$VideoSavingRequestBuilder.setExtraOutput(this.mActivity.getExtraOutput());
        requestFactory$VideoSavingRequestBuilder.setSlowMotion(string, this.mStorage, getCurrentStorage());
        requestFactory$VideoSavingRequestBuilder.setOneShot(this.mActivity.isOneShotVideo());
        requestFactory$VideoSavingRequestBuilder.setStorageType(getCurrentStorage());
        return requestFactory$VideoSavingRequestBuilder;
    }

    private void updateDateTaken(RequestFactory$RequestBuilder requestFactory$RequestBuilder) {
        requestFactory$RequestBuilder.setDateTaken(System.currentTimeMillis());
    }

    public void onInitialAutoFocusDone(boolean z) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke success:" + z);
        }
        ResearchUtil.getInstance().setTimeAfDone();
        ResearchUtil.getInstance().setCaptureTrigger(Event$CaptureTrigger.FAST_CAPTURING_LAUNCH);
        sendEvent(StateMachine$TransitterEvent.EVENT_ON_INITIAL_AUTO_FOCUS_DONE, Boolean.valueOf(z));
    }

    public void onAutoFocusDone(boolean z, boolean z2, boolean z3, int i, int i2, int i3) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke isHighQualityBurstAvailable:" + z + ", isAfSuccessed:" + z2 + ", requireDisplayFlash:" + z3);
        }
        if (this.mViewFinder != null) {
            this.mViewFinder.setDisplayFlashRequired(z3);
            this.mViewFinder.setDisplayFlashColor(i, i2, i3);
        }
        ResearchUtil.getInstance().setTimeAfDone();
        sendEvent(StateMachine$TransitterEvent.EVENT_ON_AUTO_FOCUS_DONE, Boolean.valueOf(z2), Boolean.valueOf(z));
    }

    private void stopPlaySound() {
        this.mActivity.stopPlayingSound();
    }

    public void onPreShutterDone(RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        checkCallback(requestFactory$PhotoSavingRequestBuilder);
        sendEvent(StateMachine$TransitterEvent.EVENT_ON_PRE_SHUTTER_DONE, requestFactory$PhotoSavingRequestBuilder);
    }

    public void onShutterDone(RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder, int i, boolean z) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke captureNum:" + i + ", isAfSuccessed:" + z);
        }
        if (i > 1) {
            this.mPredictiveCaptureStoreInfo = new PredictiveCaptureStoreInfo(i, requestFactory$PhotoSavingRequestBuilder.getSaveTimeForPredictiveCapture());
        } else {
            this.mPredictiveCaptureStoreInfo = null;
        }
        sendEvent(StateMachine$TransitterEvent.EVENT_ON_SHUTTER_DONE, requestFactory$PhotoSavingRequestBuilder, Boolean.valueOf(z));
    }

    public void onPreTakePictureDone(RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke");
        }
        checkCallback(requestFactory$PhotoSavingRequestBuilder);
        sendEvent(StateMachine$TransitterEvent.EVENT_ON_PRE_TAKE_PICTURE_DONE, requestFactory$PhotoSavingRequestBuilder);
    }

    public void onTakePictureDone(RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke");
        }
        sendEvent(StateMachine$TransitterEvent.EVENT_ON_TAKE_PICTURE_DONE, requestFactory$PhotoSavingRequestBuilder);
    }

    public void onPrepareBurstDone(boolean z) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke isSuccess:" + z);
        }
        sendEvent(StateMachine$TransitterEvent.EVENT_ON_PREPARE_BURST_DONE, Boolean.valueOf(z));
    }

    private void checkCallback(RequestFactory$RequestBuilder requestFactory$RequestBuilder) {
        requestFactory$RequestBuilder.addCallback(this.mOnStoreCompletedListener);
    }

    public void onVideoRecordingDone() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke");
        }
        this.mIsVideoRecording = false;
        sendEvent(StateMachine$TransitterEvent.EVENT_ON_VIDEO_RECORDING_DONE, new Object[0]);
    }

    private void requestPhotoSmileCapture() {
        requestSmileCapture(((SmileCapture) this.mUserSettings.get(UserSettingKey.SMILE_CAPTURE)).getIntValue());
    }

    private void requestVideoSmileCapture() {
        requestSmileCapture(((VideoSmileCapture) this.mUserSettings.get(UserSettingKey.VIDEO_SMILE_CAPTURE)).getIntValue());
    }

    private void requestSmileCapture(int i) {
        if (SystemClock.uptimeMillis() - this.mLastSmileCaptureTakenTime <= 1000 || i >= this.mViewFinder.getSelectedFaceSmileScore()) {
            return;
        }
        this.mVirtualKeyEventDispatcher.sendVirtualKeyEvent(UserEventHandler$VirtualKeyEvent.SMILE_CAPTURE);
        this.mLastSmileCaptureTakenTime = SystemClock.uptimeMillis();
    }

    private void storePicture(RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        SavingRequest savingRequestCreateSavingRequest = RequestFactory.createSavingRequest(requestFactory$PhotoSavingRequestBuilder);
        StateMachine$SuitablePredictiveApplier.access$8800(this.mPredictiveApplier, savingRequestCreateSavingRequest);
        this.mStorage.requestStore(savingRequestCreateSavingRequest, savingRequestCreateSavingRequest.getStorageType(), this.mOnStoreCompletedListener);
    }

    private synchronized void requestStorePicture(RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        if (isNeedRepairRequestId(requestFactory$PhotoSavingRequestBuilder) && this.mContentsViewController != null) {
            requestFactory$PhotoSavingRequestBuilder.setRequestId(this.mViewFinder.getRequestId(false));
        }
        this.mExecService.execute(new StateMachine$RequestStoreTask(this, requestFactory$PhotoSavingRequestBuilder, null));
    }

    private synchronized void requestStoreVideo(RequestFactory$VideoSavingRequestBuilder requestFactory$VideoSavingRequestBuilder) {
        if (requestFactory$VideoSavingRequestBuilder == null) {
            return;
        }
        if (this.mContentsViewController != null) {
            this.mContentsViewController.stopAnimation(false);
        }
        if ((!VideoStabilizer.isIntelligentActive((VideoStabilizer) this.mUserSettings.get(UserSettingKey.VIDEO_STABILIZER)) || requestFactory$VideoSavingRequestBuilder.getRequestId() == -1) && this.mContentsViewController != null) {
            requestFactory$VideoSavingRequestBuilder.setRequestId(this.mViewFinder.getRequestId(false));
        }
        requestFactory$VideoSavingRequestBuilder.setDateTaken(System.currentTimeMillis());
        SavingRequest savingRequestCreateSavingRequest = RequestFactory.createSavingRequest(requestFactory$VideoSavingRequestBuilder);
        this.mStorage.requestStore(savingRequestCreateSavingRequest, savingRequestCreateSavingRequest.getStorageType(), this.mOnStoreCompletedListener);
        sendEvent(StateMachine$TransitterEvent.EVENT_ON_STORE_REQUESTED, new Object[0]);
    }

    private void onOneShotStoreCompleted(StoreDataResult storeDataResult) {
        if (storeDataResult.savingRequest.getExtraOutput() == null) {
            requestLoadStoredPicture(storeDataResult);
        } else {
            finishOneShot(storeDataResult, null);
        }
    }

    private void finishOneShot(StoreDataResult storeDataResult, Bitmap bitmap) {
        this.mActivity.finishOneShot(new StateMachine$OneShotResult(storeDataResult.uri, storeDataResult.storeResult, storeDataResult.savingRequest, bitmap, null));
    }

    public void onSceneModeChanged(CameraParameters$SceneRecognitionResult cameraParameters$SceneRecognitionResult) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke");
        }
        if (this.mActivity.isThermalWarningReceived()) {
            return;
        }
        sendStaticEvent(StateMachine$StaticEvent.EVENT_ON_SCENE_MODE_CHANGED, cameraParameters$SceneRecognitionResult);
    }

    public void onFaceDetected(CameraParameters$FaceDetectionResult cameraParameters$FaceDetectionResult) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke");
        }
        if (this.mActivity.isThermalWarningReceived() || !isStorageWritable(getCurrentStorage()) || this.mCameraDeviceHandler.isObjectTrackingRunning()) {
            return;
        }
        sendStaticEvent(StateMachine$StaticEvent.EVENT_ON_FACE_DETECTED, cameraParameters$FaceDetectionResult);
    }

    public void onObjectTracked(CameraParameters$ObjectTrackingResult cameraParameters$ObjectTrackingResult) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke");
        }
        if (this.mActivity.isThermalWarningReceived()) {
            return;
        }
        sendStaticEvent(StateMachine$StaticEvent.EVENT_ON_OBJECT_TRACKED, cameraParameters$ObjectTrackingResult);
    }

    public void onObjectLost(CameraParameters$ObjectTrackingResult cameraParameters$ObjectTrackingResult) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke");
        }
        if (this.mActivity.isThermalWarningReceived()) {
            return;
        }
        sendStaticEvent(StateMachine$StaticEvent.EVENT_ON_OBJECT_TRACKING_LOST, cameraParameters$ObjectTrackingResult);
    }

    private void doZoomChangeAngle() {
        changeTo(new StateMachine$StateCropping(this, this.mCurrentState.getCaptureState()), new Object[0]);
    }

    private void onZoomChange(int i) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke");
        }
        if (this.mViewFinder == null || !this.mViewFinder.isSetupHeadupDisplayInvoked()) {
            return;
        }
        this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_ZOOM_CHANGED, Integer.valueOf(i));
    }

    public void onCropRegionReady() {
        if (CamLog.DEBUG) {
            CamLog.d("invoke");
        }
        this.mActivity.runOnUiThread(new StateMachine$7(this));
    }

    public void onDeviceError(CameraDeviceHandler$ErrorCode cameraDeviceHandler$ErrorCode) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke");
        }
        PowerManager powerManager = (PowerManager) this.mActivity.getSystemService("power");
        PlatformCapability.setDeviceError(true);
        if (powerManager.isScreenOn()) {
            CamLog.e("ERROR:[Screen backlight is ON.");
            this.mViewFinder.showMessageDialog(DialogId.ERROR_IN_USE_BY_ANOTHER_APPLICATION, new Object[0]);
        } else {
            CamLog.e("ERROR:[Screen backlight is OFF. Force close application.]");
            this.mActivity.finishAndKillProcess();
        }
    }

    private void removeChangeCameraModeTask() {
        this.mHandler.removeCallbacks(this.mChangeCameraModeTask);
    }

    private Rect getPreviewRect() {
        Rect pictureRect;
        CapturingMode capturingMode = (CapturingMode) this.mUserSettings.get(UserSettingKey.CAPTURING_MODE);
        if (capturingMode.isVideo()) {
            pictureRect = ((VideoSize) this.mUserSettings.get(UserSettingKey.VIDEO_SIZE)).getVideoRect();
        } else {
            pictureRect = ((Resolution) this.mUserSettings.get(UserSettingKey.RESOLUTION)).getPictureRect();
        }
        return LayoutOrientationResolver.getInstance().getRectAccordingToLayoutOrientation(this.mCameraDeviceHandler.getPreviewRect(capturingMode, pictureRect));
    }

    private void calculateRemainStorage() {
        if (this.mCameraDeviceHandler == null || this.mViewFinder == null || this.mActivity == null || getCurrentStorage() == null) {
            return;
        }
        Storage$StorageType currentStorage = getCurrentStorage();
        if (this.mStorage.getRemainStorage(currentStorage) <= 61440) {
            sendEvent(StateMachine$TransitterEvent.EVENT_STORAGE_ERROR, currentStorage, this.mStorage.getCurrentState(currentStorage));
        }
    }

    private int getSensorOrientation() {
        int i = this.mActivity.getLastDetectedOrientation() == CameraActivity$LayoutOrientation.Portrait ? 1 : 2;
        if (CamLog.DEBUG) {
            CamLog.d("getOrientation: sensor orientation:" + i);
        }
        return i;
    }

    private void moveToCameraNotAvailable() {
        CamLog.e(".startFastCapture():[Camera not available]");
        this.mViewFinder.showMessageDialog(DialogId.ERROR_IN_USE_BY_ANOTHER_APPLICATION, new Object[0]);
        ResearchUtil.getInstance().sendCameraNotAvailableEvent();
    }

    private void onPredictiveCaptureStoreComplete(StoreDataResult storeDataResult) {
        PerfLog.BURST_STORE_COMPLETE.transit();
        if (this.mPredictiveCaptureStoreInfo != null && storeDataResult.savingRequest.getSaveTimeForPredictiveCapture().equals(this.mPredictiveCaptureStoreInfo.getCaptureTime())) {
            this.mPredictiveCaptureStoreInfo = null;
        }
        Intent intent = new Intent("com.sonyericsson.android.camera.intent.action.PREDICTIVE_CAPTURE_SAVE_COMPLETED");
        intent.putExtra("com.sonyericsson.android.camera.extra.PREDICTIVE_CAPTURE_DIRECTORY_PATH", PredictiveCapturePathBuilder.getPredictiveCaptureGroupIdPath(storeDataResult.savingRequest.getFilePath()));
        this.mActivity.sendBroadcast(intent);
    }

    public CapturingMode getCurrentCapturingMode() {
        if (getUserSetting().get(UserSettingKey.CAPTURING_MODE) == null) {
            return this.mActivity.getLaunchCondition().getCapturingMode();
        }
        return (CapturingMode) getUserSetting().get(UserSettingKey.CAPTURING_MODE);
    }

    public CameraInfo$CameraId getCurrentCameraId() {
        return getCameraId(getCurrentCapturingMode());
    }

    private CameraInfo$CameraId getCameraId(CapturingMode capturingMode) {
        switch (StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
            case 1:
            case 5:
            case 8:
                return CameraInfo$CameraId.BACK;
            case 2:
            case 6:
            case 7:
                return CameraInfo$CameraId.FRONT;
            case 3:
            case 4:
            default:
                return CameraInfo$CameraId.BACK;
        }
    }

    public boolean canApplicationBeFinished() {
        boolean zAccess$15600;
        synchronized (this.mCurrentState) {
            zAccess$15600 = StateMachine$CaptureState.access$15600(this.mCurrentState.getCaptureState());
        }
        return zAccess$15600;
    }

    public boolean isMenuAvailable() {
        return StateMachine$CaptureState.access$15700(this.mCurrentState.getCaptureState());
    }

    public boolean isRecording() {
        if (this.mCurrentState != null) {
            return StateMachine$CaptureState.access$13700(this.mCurrentState.getCaptureState());
        }
        return false;
    }

    private void setCurrentCapturingMode(CapturingMode capturingMode) {
        getUserSetting().changeCapturingMode(capturingMode);
        LocalResearchUtil.getInstance().setSettingsValue(getUserSetting(), capturingMode);
    }

    private boolean isSmoothZoomEnabled() {
        return !this.mCameraDeviceHandler.isCameraFront();
    }

    private boolean isPhotoSelfTimerEnabled() {
        return this.mViewFinder.getPhotoSelfTimerSetting() != SelfTimer.OFF;
    }

    private boolean isBurstByCameraKeyEnabled() {
        return this.mUserSettings.get(UserSettingKey.CAMERA_KEY) == CameraKey.BURST_SHOT;
    }

    private boolean isLazyInitializationRunning() {
        return this.mActivity.isLazyInitializationRunning();
    }

    private boolean canInvokePhotoSelfTimer() {
        return !isLazyInitializationRunning() && isPhotoSelfTimerEnabled() && isStorageWritable(getCurrentStorage());
    }

    @Deprecated
    public synchronized StateMachine$CaptureState getCurrentCaptureState() {
        return this.mCurrentState.getCaptureState();
    }

    private void updateAmberBlueColor(float f) {
        CameraCapabilityList cameraCapability = PlatformCapability.getCameraCapability(getCurrentCameraId());
        int iIntValue = cameraCapability.MIN_AWB_AB.get().intValue();
        int iIntValue2 = cameraCapability.MAX_AWB_AB.get().intValue();
        int iCeil = (int) Math.ceil(iIntValue + ((iIntValue2 - iIntValue) * f));
        if (CamLog.DEBUG) {
            CamLog.d("invoke color-changed slider:" + f + ", min:" + iIntValue + ", max:" + iIntValue2 + ", value:" + iCeil);
        }
        this.mCameraDeviceHandler.setAmberBlueColorAndCommit(iCeil);
        LocalResearchUtil.getInstance().setSemiAutoSettingAmberBlueValue(iCeil);
    }

    private void updateBrightness(float f) {
        CameraCapabilityList cameraCapability = PlatformCapability.getCameraCapability(getCurrentCameraId());
        int iIntValue = cameraCapability.EV_MIN.get().intValue();
        int iIntValue2 = cameraCapability.EV_MAX.get().intValue();
        int iCeil = (int) Math.ceil(iIntValue + ((iIntValue2 - iIntValue) * f));
        if (CamLog.DEBUG) {
            CamLog.d("invoke brightness-changed slider:" + f + ", min:" + iIntValue + ", max:" + iIntValue2 + ", value:" + iCeil);
        }
        this.mCameraDeviceHandler.setBrightnessAndCommit(iCeil);
        LocalResearchUtil.getInstance().setSemiAutoSettingBrightnessValue(iCeil);
    }

    private void changeToStandby() {
        if (isVideo()) {
            changeTo(new StateMachine$StateVideoReady(this), new Object[0]);
        } else {
            changeTo(new StateMachine$StatePhotoReady(this, true), new Object[0]);
        }
    }

    private void sendResearchSameActivityEvent(CapturingMode capturingMode) {
        LocalResearchUtil.getInstance().clearAllSettings();
        LocalResearchUtil.getInstance().clearTemporarySettingValues();
        ResearchUtil.getInstance().onPause(true);
        LocalResearchUtil.getInstance().sendView(LaunchCondition$LaunchTrigger.SAME_ACTIVITY, capturingMode);
    }

    private void notifyCoolingUltraLow(boolean z) {
        if (this.mViewFinder != null) {
            this.mViewFinder.onNotifyCoolingUltraLow(z);
        }
        this.mCameraDeviceHandler.setUltraLowPower();
        if (this.mViewFinder != null && this.mViewFinder.isSetupHeadupDisplayInvoked() && this.mCameraDeviceHandler.isObjectTrackingRunning()) {
            this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE, new Object[0]);
        }
        this.mObjectTracking.stop();
        this.mGestureShutter.handlePreviewStopped();
    }

    private void pauseAudioPlaybackForCapture() {
        if (!this.mIsPausedAudioPlayback && shouldPlayShutterSound()) {
            this.mActivity.pauseAudioPlayback();
            this.mIsPausedAudioPlayback = true;
        }
    }

    private void pauseAudioPlaybackForRecord() {
        this.mActivity.pauseAudioPlayback();
        this.mIsPausedAudioPlayback = true;
    }

    private void playShutterSound() {
        if (shouldPlayShutterSound()) {
            this.mCameraDeviceHandler.playShutterSound(getCurrentCapturingMode().getType());
        }
    }

    private boolean shouldPlayShutterSound() {
        return ((ShutterSound) this.mUserSettings.get(getCurrentCapturingMode(), UserSettingKey.SHUTTER_SOUND)) != ShutterSound.OFF;
    }

    private void doStartObjectTracking(Rect rect) {
        if (isStorageWritable(getCurrentStorage())) {
            this.mObjectTracking.start(rect);
        }
    }

    private void doStopObjectTracking() {
        this.mObjectTracking.stop();
        this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE, new Object[0]);
    }

    public void setGestureShutterWindowHost(GestureShutter$WindowHost gestureShutter$WindowHost) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke");
        }
        this.mGestureShutter.setWindowHost(gestureShutter$WindowHost);
    }

    private void updatePhotoSelftimer(SelfTimer selfTimer) {
        if (this.mViewFinder != null) {
            this.mViewFinder.setSelfTimer((CapturingMode) this.mUserSettings.get(UserSettingKey.CAPTURING_MODE), selfTimer);
        }
    }

    private void setIsSceneRecognitionValid(boolean z) {
        this.mIsSceneRecognitionValid = z;
    }

    private void switchSceneRecognition(boolean z) {
        if (this.mIsSceneRecognitionValid && z) {
            this.mCameraDeviceHandler.startSceneRecognition();
        } else {
            this.mCameraDeviceHandler.stopSceneRecognition();
        }
    }

    private void switchVideoFaceDetection() {
        if (DependencyCheckUtil.isFaceDetectionAvailable(getCurrentCapturingMode(), (VideoSize) this.mUserSettings.get(UserSettingKey.VIDEO_SIZE), (VideoHdr) this.mUserSettings.get(UserSettingKey.VIDEO_HDR))) {
            this.mCameraDeviceHandler.startFaceDetection();
        } else {
            this.mCameraDeviceHandler.stopFaceDetection();
        }
    }

    private void notifySceneRecognitionDisabled() {
        CameraParameters$SceneRecognitionResult cameraParameters$SceneRecognitionResult = new CameraParameters$SceneRecognitionResult();
        cameraParameters$SceneRecognitionResult.sceneMode = CameraParameterConverter$SceneMode.getSceneMode(0);
        cameraParameters$SceneRecognitionResult.deviceStabilityCondition = CameraParameters$DeviceStabilityCondition.getCondition(0);
        cameraParameters$SceneRecognitionResult.isMacroRange = false;
        this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_DETECTED_SCENE_CHANGED, cameraParameters$SceneRecognitionResult);
    }

    public CapturingMode getLaunchCapturingMode() {
        return this.mActivity.getLaunchCondition().getCapturingMode();
    }

    private void sendResearchViewEvent() {
        LaunchCondition$LaunchTrigger launchTrigger = this.mActivity.getLaunchCondition().getLaunchTrigger();
        if (launchTrigger == LaunchCondition$LaunchTrigger.VIDEO_EDITOR) {
            launchTrigger = LaunchCondition$LaunchTrigger.OTHER;
        }
        LocalResearchUtil.getInstance().sendView(launchTrigger, getCurrentCapturingMode());
    }

    private boolean isEnoughStorageSizeAvailableForOneShotVideo() {
        SlowMotion slowMotion;
        if (!this.mActivity.isOneShotVideo()) {
            return true;
        }
        VideoSize videoSize = (VideoSize) this.mUserSettings.get(UserSettingKey.VIDEO_SIZE);
        VideoHdr videoHdr = (VideoHdr) this.mUserSettings.get(UserSettingKey.VIDEO_HDR);
        if (getCurrentCapturingMode() == CapturingMode.SLOW_MOTION && (slowMotion = (SlowMotion) getUserSetting().get(UserSettingKey.SLOW_MOTION)) == SlowMotion.STANDARD_SLOW_MOTION) {
            videoSize = slowMotion.getVideoSize();
        }
        RecordingProfile recordingProfileBuild = new RecordingProfile$Builder().videoSize(videoSize).setOneShot(true).videoHdr(videoHdr).build();
        MaxVideoSize maxVideoSize = this.mUserSettings.getMaxVideoSize(this.mStorage, getCurrentStorage(), recordingProfileBuild);
        return maxVideoSize.getMaxDuration() > 0 ? maxVideoSize.getMaxDuration() >= 1000 : maxVideoSize.getMaxFileSize() <= 0 || maxVideoSize.getMaxFileSize() >= recordingProfileBuild.minFileSize * 1024;
    }

    public PredictiveCaptureStoreInfo getPredictiveCaptureStoreInfo() {
        return this.mPredictiveCaptureStoreInfo;
    }

    private void checkThermalWarning() {
        if (getCurrentCapturingMode() != CapturingMode.SLOW_MOTION && PlatformCapability.isPowerSavingSupported(getCurrentCameraId())) {
            if (this.mActivity.isThermalWarningReceived()) {
                sendEvent(StateMachine$TransitterEvent.EVENT_ON_HEATED_OVER_COOLING_ULTRA_LOW, new Object[0]);
            } else if (this.mActivity.isThermalWarningExtraState()) {
                sendEvent(StateMachine$TransitterEvent.EVENT_ON_HEATED_OVER_COOLING_LOW, new Object[0]);
            }
        }
    }

    private void pauseVideoRecording(Object... objArr) {
        doStopRecording(false);
        changeTo(new StateMachine$StatePause(this, ((Boolean) objArr[0]).booleanValue(), null), objArr);
    }

    private boolean hasRemainSavingRequest() {
        return this.mCameraDeviceHandler.getRemainPrevSavingRequestCount() > 0;
    }

    private void initGeoTagManager() {
        if (this.mActivity.getGeoTagManager() != null) {
            if (this.mActivity.getGeoTagManager().isGeotagPermissionGranted()) {
                this.mUserSettings.set(Geotag.ON);
                this.mActivity.getGeoTagManager().setIsGeotagPermissionGranted(false);
            }
            this.mActivity.getGeoTagManager().initGeotag(this.mActivity, this.mActivity.isAllowToUseLocation());
            this.mActivity.getGeoTagManager().notifyStatus();
        }
    }

    private void initSideSenseSetting() {
        if (SettingUtil.isSideSenseEnabled(true)) {
            return;
        }
        this.mUserSettings.set(SideSense.OFF);
    }

    private void cleanupPendingState() {
        updatePhotoSelftimer((SelfTimer) this.mUserSettings.get(UserSettingKey.SELF_TIMER));
    }

    private boolean isStorageWritable(@NonNull Storage$StorageType storage$StorageType) {
        Storage$StorageState currentState = this.mStorage.getCurrentState(storage$StorageType);
        return currentState != null && currentState.isWritable();
    }

    private boolean isStorageFull(Storage$StorageType storage$StorageType) {
        return this.mStorage.getCurrentState(storage$StorageType) == Storage$StorageState.FULL;
    }

    private boolean checkSaveDestinationCanBeChange(Storage$StorageType storage$StorageType) {
        Storage$StorageType storage$StorageType2;
        if (storage$StorageType == Storage$StorageType.INTERNAL) {
            storage$StorageType2 = Storage$StorageType.EXTERNAL_CARD;
        } else {
            if (storage$StorageType != Storage$StorageType.EXTERNAL_CARD) {
                return false;
            }
            storage$StorageType2 = Storage$StorageType.INTERNAL;
        }
        return isStorageWritable(storage$StorageType2);
    }

    private Storage$StorageType getCurrentStorage() {
        if (this.mActivity.isOneShot()) {
            return this.mActivity.getLaunchCondition().getStorageTypeForOneshot();
        }
        DestinationToSave destinationToSave = (DestinationToSave) this.mUserSettings.get(UserSettingKey.DESTINATION_TO_SAVE);
        if (destinationToSave == null) {
            destinationToSave = (DestinationToSave) this.mUserSettings.get(this.mActivity.getLaunchCondition().getCapturingMode(), UserSettingKey.DESTINATION_TO_SAVE);
        }
        return destinationToSave.getType();
    }

    private boolean isCurrentStorageExternal() {
        return getCurrentStorage() == Storage$StorageType.EXTERNAL_CARD;
    }

    public boolean isTutorialNeededToBeShownForCurrentMode() {
        if (this.mActivity.isOneShot() || this.mActivity.getLaunchCondition().getLaunchTrigger() == LaunchCondition$LaunchTrigger.GOOGLE_ASSISTANT) {
            return false;
        }
        MessageSettings messageSettings = this.mActivity.getStoredSettings().getMessageSettings();
        CapturingMode currentCapturingMode = getCurrentCapturingMode();
        if (currentCapturingMode.isFront()) {
            if (currentCapturingMode.isVideo()) {
                return !messageSettings.isNeverShow(MessageType.TUTORIAL_EYE_GUIDE);
            }
            return !messageSettings.isNeverShow(MessageType.TUTORIAL_HAND_SHUTTER);
        }
        switch (StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion[((SlowMotion) getUserSetting().get(UserSettingKey.SLOW_MOTION)).ordinal()]) {
            case 1:
                return !messageSettings.isNeverShow(MessageType.TUTORIAL_STANDARD_SLOW_MOTION);
            case 2:
                return !messageSettings.isNeverShow(MessageType.TUTORIAL_SUPER_SLOW_MOTION);
            case 3:
                return !messageSettings.isNeverShow(MessageType.TUTORIAL_SUPER_SLOW_MOTION_SHOT);
            default:
                if (currentCapturingMode.isVideo() && !this.mActivity.isOneShotVideo() && PlatformCapability.isHighSensitivityFusionSupported(currentCapturingMode.getCameraId())) {
                    return !messageSettings.isNeverShow(MessageType.TUTORIAL_VIDEO_FUSION);
                }
                return false;
        }
    }

    private boolean isNeedRepairRequestId(RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        if (requestFactory$PhotoSavingRequestBuilder.getRequestId() == -1) {
            return requestFactory$PhotoSavingRequestBuilder.getCaptureIdForPredictiveCapture() == -1 || requestFactory$PhotoSavingRequestBuilder.getSomcType() == 100;
        }
        return false;
    }

    private boolean isFusionMonitoringNeeded() {
        for (FusionMode fusionMode : FusionMode.getOptions(getCurrentCapturingMode())) {
            if (fusionMode != FusionMode.OFF) {
                return true;
            }
        }
        return false;
    }

    private boolean checkBurstConditions(boolean z) {
        if (!isStorageWritable(Storage$StorageType.INTERNAL) || this.mCameraDeviceHandler.getRemainSavingPhotoRequestCount() > 0) {
            return false;
        }
        if (getCurrentCapturingMode() != CapturingMode.SCENE_RECOGNITION || z) {
            return true;
        }
        this.mViewFinder.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_BURST_REJECTED, ViewFinder$BurstRejectedReason.CANNOT_BURST_IN_DARK_CONDITION);
        return false;
    }

    public boolean isSettingChangeAcceptable() {
        return !isLazyInitializationRunning() && isAllSnapshotCompleted();
    }

    public synchronized boolean isAngleEventReceivable() {
        switch (StateMachine$8.$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$CaptureState[this.mCurrentState.getCaptureState().ordinal()]) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public UserEventHandler$VirtualKeyEventDispatcher getVirtualKeyEventDispatcher() {
        return this.mVirtualKeyEventDispatcher;
    }

    private static <T> T getEventParam(Object[] objArr, int i, Class<T> cls, T t) {
        if (objArr != null && objArr.length > i && cls.isInstance(objArr[i])) {
            return (T) objArr[i];
        }
        if (objArr == null) {
            CamLog.d("Specified parameter is empty.");
        } else if (objArr.length <= i) {
            CamLog.d("Specified parameter count is too short");
        } else if (!objArr[i].getClass().isInstance(cls)) {
            CamLog.d("Specified parameter type is missmatch.");
        }
        return t;
    }
}
