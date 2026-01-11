.class public Lcom/sonyericsson/android/camera/view/UserEventHandler;
.super Ljava/lang/Object;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaEventProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$PredictiveLaunchCoverProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleChangeButtonProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$SelfTimerCancelButtonProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowTriggerButtonProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingCamcordButtonProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingButtonProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$StopSlowMotionRecordingButtonProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEventDispatcher;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventDispatcher;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventDispatcher;,
        Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserEventHandler"


# instance fields
.field private mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

.field private final mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private final mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

.field private mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

.field private mIsBurstShotEnabled:Z

.field private final mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

.field private final mMessageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

.field private final mSideTouchCameraGestureDetector:Lcom/sonyericsson/android/camera/SideTouchEventDetector;

.field private final mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

.field private final mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

.field private final mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

.field private final mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

.field private final mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActionByKey(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAngleActionHandler(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandlingEventSource(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/setting/UserSettings;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcanObjectTracking(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->canObjectTracking()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcanSelfTimerActivation(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->canSelfTimerActivation()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdispatchCaptureAreaScaleReady(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchCaptureAreaScaleReady(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchCaptureAreaScaling(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchCaptureAreaScaling(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchClick(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchClick(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchKeyDown(Lcom/sonyericsson/android/camera/view/UserEventHandler;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchKeyDown(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdispatchKeyLongPress(Lcom/sonyericsson/android/camera/view/UserEventHandler;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchKeyLongPress(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdispatchKeyUp(Lcom/sonyericsson/android/camera/view/UserEventHandler;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchKeyUp(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdispatchLongClick(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchLongClick(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchSideTouchEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchSideTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdispatchTouchCancel(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchTouchCancel(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchTouchDown(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchTouchDown(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchTouchUp(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchTouchUp(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchVirtualKeyEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchVirtualKeyEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdispatchZoomEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;[Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchZoomEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetCurrentCapturingMode(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misBurstShotEnabled(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isBurstShotEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misCurrentStorageWritable(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isCurrentStorageWritable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misInternalStorageWritable(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isInternalStorageWritable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSuperSlowMode(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isSuperSlowMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misTouchCaptureEnabled(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isTouchCaptureEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyBurstShotRejectedReason(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyBurstShotRejectedReason(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyEventCaptureBurst(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventCaptureBurst()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyEventReady(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventReady()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyShutterKeyEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyShutterKeyEvent(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetKeyEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->resetKeyEventHandling()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetSideTouchEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->resetSideTouchEventHandling()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetTouchEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->resetTouchEventHandling()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectDefaultPhotoAction(Lcom/sonyericsson/android/camera/view/UserEventHandler;Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->selectDefaultPhotoAction(Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mselectDefaultVideoAction(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->selectDefaultVideoAction()Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->startEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/setting/MessageSettings;Z)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->NONE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 108
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 109
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 110
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 111
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 112
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 113
    iput-object p6, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mMessageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

    .line 114
    new-instance p2, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-direct {p2, p5}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;-><init>(Lcom/sonyericsson/android/camera/setting/UserSettings;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 115
    new-instance p2, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    const/4 p2, 0x0

    .line 116
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    .line 117
    iput-boolean p7, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mIsBurstShotEnabled:Z

    .line 118
    new-instance p3, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    invoke-direct {p3, p0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler-IA;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    .line 119
    new-instance p3, Lcom/sonyericsson/android/camera/SideTouchEventDetector;

    new-instance p4, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;

    invoke-direct {p4, p0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$OnSideTouchGestureListenerImpl-IA;)V

    invoke-direct {p3, p1, p4}, Lcom/sonyericsson/android/camera/SideTouchEventDetector;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mSideTouchCameraGestureDetector:Lcom/sonyericsson/android/camera/SideTouchEventDetector;

    return-void
.end method

.method private canObjectTracking()Z
    .locals 2

    .line 2086
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isObjectTrackingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2090
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPowerSavingSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2092
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isThermalWarningReceived()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2097
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isManualFocus()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private canSelfTimerActivation()Z
    .locals 1

    .line 2195
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isPhotoSelfTimerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isIdle()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private dispatchCaptureAreaScaleReady(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .locals 2

    .line 683
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dispatchCaptureAreaScaleReady() not accepted. requested:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " current:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 684
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 690
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 692
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchAreaScaleReady()V

    :cond_1
    return-void
.end method

.method private dispatchCaptureAreaScaling(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;F)V
    .locals 1

    .line 697
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "dispatchCaptureAreaScaling() not accepted. requested:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " current:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 698
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 704
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 706
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchAreaScaling(F)V

    :cond_1
    return-void
.end method

.method private dispatchClick(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .locals 1

    .line 636
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "dispatchClick() not accepted. requested:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " current:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 637
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 643
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 645
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doClick(Landroid/graphics/Point;)V

    :cond_1
    return-void
.end method

.method private dispatchKeyDown(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 929
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 933
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isAutoPowerOffWarningDisplayed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 934
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 935
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 936
    sget-object v2, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    return v1

    .line 947
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 953
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchKeyDownAfterTheSecondTime(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 955
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->dispatchKeyDownInTheFirstTime(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private dispatchKeyDownAfterTheSecondTime(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 807
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dispatchKeyDownAfterTheSecondTime() not accepted. requested:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " current:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 808
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v1

    .line 814
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 815
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCodeOnDown(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object p0

    .line 817
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private dispatchKeyDownInTheFirstTime(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 826
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->startEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dispatchKeyDownInTheFirstTime() startEventHandling() not accepted. requested:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " current:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 827
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v1

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 834
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCodeOnDown(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 836
    sget-object v2, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    .line 911
    :pswitch_1
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->CLOSE_INITIAL_RESPONSE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 913
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "CLOSE_INITIAL_RESPONSE : start"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return v1

    .line 892
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isFlashAndSettingMenuOpened()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 893
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isModeSelectorOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 899
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 900
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->predictiveLaunchCoverExists()Z

    move-result v0

    .line 901
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_SHUTTER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 902
    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hidePredictiveLaunchCover(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;)V

    .line 904
    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventReady(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 905
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->READY:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 907
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->startTracking()V

    return v1

    .line 894
    :cond_4
    :goto_0
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->REJECT:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 895
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    return v1

    .line 874
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperableForCameraKey()Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 877
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    sget-object v2, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->REJECT:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne v0, v2, :cond_7

    .line 878
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isFlashAndSettingMenuOpened()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 879
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    :cond_6
    return v1

    .line 883
    :cond_7
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 884
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyShutterKeyEvent(Z)V

    .line 885
    invoke-virtual {p1}, Landroid/view/KeyEvent;->startTracking()V

    return v1

    .line 856
    :pswitch_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isFlashAndSettingMenuOpened()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 857
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->REJECT:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 858
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    return v1

    .line 862
    :cond_8
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 863
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->predictiveLaunchCoverExists()Z

    move-result p1

    .line 864
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hidePredictiveLaunchCover(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;)V

    .line 866
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventReady(ZZ)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 867
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->READY:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 870
    :cond_9
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->clearCanceledSideTouchEventIcons()V

    return v1

    .line 838
    :pswitch_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    .line 842
    :cond_a
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->NONE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 844
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_ZOOM:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hidePredictiveLaunchCover(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;)V

    .line 846
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_b

    move v2, v1

    .line 847
    :cond_b
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mprepareKeyZooming(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;Z)Z

    return v1

    .line 852
    :pswitch_6
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideoRecording()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private dispatchKeyLongPress(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1078
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dispatchKeyLongPress() not accepted. requested:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " current:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 1079
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v1

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 1086
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCodeOnLongPress(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object p1

    .line 1088
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 1097
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperableForCameraKey()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 1101
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->REJECT:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne p1, v0, :cond_3

    return v1

    .line 1106
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventCaptureBurst()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1107
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE_BURST:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    goto :goto_0

    .line 1090
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne p1, v0, :cond_5

    .line 1091
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyBurstShotRejectedReason(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    return v1

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private dispatchKeyUp(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 960
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dispatchKeyUp() not accepted. requested:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " current:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 961
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v1

    .line 966
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->stopEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    .line 968
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 969
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCodeOnUp(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object p1

    .line 974
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 975
    sget-object v2, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->NONE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 977
    sget-object v2, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    .line 1020
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isHeadUpDisplayReady()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 1021
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isEvfPrepared()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 1025
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_KEY_MENU:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return v1

    .line 1030
    :pswitch_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isSelfTimerCountDownViewShown()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1031
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SELFTIMER_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return v1

    .line 1034
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideoRecording()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1035
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STOP_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return v1

    .line 1040
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->onHandleBackKeyTutorial()Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    .line 1045
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeAutoReviewIfShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    .line 1048
    :cond_6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeSettingDialogIfOpened()Z

    move-result p1

    if-eqz p1, :cond_7

    return v1

    .line 1054
    :cond_7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->canApplicationBeFinished()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1055
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    .line 1056
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->exists(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1057
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    return v2

    .line 1058
    :cond_9
    :goto_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->startReturnModeAnimation()V

    :cond_a
    return v1

    .line 1002
    :pswitch_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperableForCameraKey()Z

    move-result p1

    if-nez p1, :cond_b

    return v1

    .line 1006
    :cond_b
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE_BURST:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne v0, p1, :cond_c

    .line 1008
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return v1

    .line 1011
    :cond_c
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->REJECT:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne v0, p1, :cond_d

    return v1

    .line 1015
    :cond_d
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 1016
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyShutterKeyEvent(Z)V

    return v1

    .line 994
    :pswitch_4
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE_BURST:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne v0, p1, :cond_e

    .line 996
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_e
    return v1

    .line 987
    :pswitch_5
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->READY:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    if-ne v0, p1, :cond_f

    .line 989
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_f
    return v1

    .line 980
    :pswitch_6
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mstopZooming(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    return v1

    .line 984
    :pswitch_7
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideoRecording()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private dispatchLongClick(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .locals 1

    .line 651
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "dispatchLongClick() not accepted. requested:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " current:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 652
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 658
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 660
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doLongClick(Landroid/graphics/Point;)V

    :cond_1
    return-void
.end method

.method private dispatchSideTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 715
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isAutoPowerOffWarningDisplayed()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mSideTouchCameraGestureDetector:Lcom/sonyericsson/android/camera/SideTouchEventDetector;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 720
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getOrientation()I

    move-result p0

    .line 719
    invoke-virtual {v0, p1, p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->onSideTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0
.end method

.method private dispatchTouchCancel(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .locals 2

    .line 665
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    .line 667
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dispatchTouchCancel() not accepted. requested:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " current:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 668
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 676
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doCancel()V

    .line 679
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->stopEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    return-void
.end method

.method private dispatchTouchDown(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .locals 2

    .line 604
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->startEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dispatchTouchDown() startEventHandling() not accepted. requested:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " current:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 605
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 611
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 613
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchDown()V

    :cond_1
    return-void
.end method

.method private dispatchTouchUp(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    .line 620
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "dispatchTouchUp() not accepted. requested:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " current:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 621
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mTouchEventProcedures:Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 629
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchUp(Landroid/graphics/Point;)V

    .line 632
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->stopEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    return-void
.end method

.method private dispatchVirtualKeyEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;)Z
    .locals 4

    .line 724
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$android$camera$view$UserEventHandler$VirtualKeyEvent:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v0

    .line 726
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->predictiveLaunchCoverExists()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 730
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isMessageDialogOpened()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 734
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setPredictiveLaunchState(Z)V

    .line 735
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->SMILE_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 736
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 737
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 738
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    return v1
.end method

.method private varargs dispatchZoomEvent(Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;[Ljava/lang/Object;)Z
    .locals 3

    .line 746
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->isJumpZooming()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 747
    const-string p0, "Not handled due to isJumpZooming."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return v1

    .line 751
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$android$camera$view$UserEventHandler$ZoomEvent:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 768
    :cond_1
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->startEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    .line 769
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mprepareJumpZooming(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;F)Z

    goto :goto_0

    .line 763
    :cond_2
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->stopEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    .line 764
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mstopZooming(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    goto :goto_0

    .line 758
    :cond_3
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->startEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    .line 759
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mperformSlideZooming(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;F)Z

    goto :goto_0

    .line 753
    :cond_4
    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->startEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z

    .line 754
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mprepareSlideZooming(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    :goto_0
    return v0
.end method

.method private getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1

    .line 2120
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object p0
.end method

.method private isBurstShotEnabled()Z
    .locals 3

    .line 2152
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mIsBurstShotEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2156
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 2157
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 2161
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isManualBurstSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 2165
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    if-ne v0, v2, :cond_3

    return v1

    .line 2169
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isBokehEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 2173
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isNightMode()Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private isCameraKeyAssignedToBurstShot()Z
    .locals 1

    .line 2181
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    .line 2182
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->BURST_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isCurrentStorageWritable()Z
    .locals 2

    .line 2109
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 2110
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 2111
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    return p0
.end method

.method private isEventAccepted(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z
    .locals 1

    .line 594
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 597
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isIdle()Z
    .locals 0

    .line 2209
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isPreviewLayout()Z

    move-result p0

    return p0
.end method

.method private isInternalStorageWritable()Z
    .locals 1

    .line 2105
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    return p0
.end method

.method private isManualFocus()Z
    .locals 1

    .line 2124
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNightMode()Z
    .locals 0

    .line 2191
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isSuperNightMode()Z

    move-result p0

    return p0
.end method

.method private isObjectTrackingEnabled()Z
    .locals 1

    .line 2128
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPhotoSelfTimerEnabled()Z
    .locals 1

    .line 2147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 2148
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isStorageWritable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
    .locals 0

    .line 2115
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p0

    .line 2116
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isSuperSlowMode()Z
    .locals 1

    .line 2186
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 2187
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTouchCaptureEnabled()Z
    .locals 3

    .line 2132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    if-eqz v0, :cond_2

    .line 2134
    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$TouchCapture:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2138
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private notifyBurstShotRejectedReason(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V
    .locals 2

    .line 2031
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mIsBurstShotEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 2035
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 2036
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 2040
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isManualBurstSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2041
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isCameraKeyAssignedToBurstShot()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->-$$Nest$sfgetCAMERA()Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2042
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->BURST_IS_DISABLED_BY_CAMERA_KEY_ASSIGN_SETTING:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2046
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FUSION_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;

    if-ne p1, v0, :cond_3

    .line 2047
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_FUSION_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2050
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isBokehEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2051
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2054
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isNightMode()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2055
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_DUE_TO_NIGHT_MODE:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2061
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isCameraKeyAssignedToBurstShot()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->-$$Nest$sfgetCAMERA()Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 2062
    :cond_6
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isManualBurstSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2067
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_BURST_REJECTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;->CANNOT_BURST_USING_FRONT_CAMERA:Lcom/sonyericsson/android/camera/view/ViewFinder$BurstRejectedReason;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private notifyEventCaptureBurst()Z
    .locals 4

    .line 2251
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isInternalStorageWritable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2252
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isBurstShotEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2253
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->canSelfTimerActivation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2254
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    .line 2255
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2256
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2257
    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    goto :goto_0

    .line 2258
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RECORD_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    .line 2255
    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2260
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BURST:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    .line 2263
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyBurstShotRejectedReason(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    goto :goto_1

    .line 2265
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isBurstShotEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2266
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyBurstShotRejectedReason(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V

    :cond_4
    :goto_1
    return v1
.end method

.method private notifyEventReady()Z
    .locals 1

    const/4 v0, 0x0

    .line 2218
    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->notifyEventReady(ZZ)Z

    move-result p0

    return p0
.end method

.method private notifyEventReady(ZZ)Z
    .locals 2

    .line 2229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2233
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setPredictiveLaunchState(Z)V

    .line 2235
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->canSelfTimerActivation()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 2240
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    .line 2242
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2243
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p0

    if-nez p0, :cond_2

    .line 2244
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    goto :goto_0

    .line 2245
    :cond_2
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RECORD_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 2242
    invoke-virtual {p1, p0, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private notifyShutterKeyEvent(Z)V
    .locals 3

    .line 1948
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    .line 1950
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isCaptureAcceptable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1954
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->selectShutterKeyAction(Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p1

    .line 1956
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$1;->$SwitchMap$com$sonyericsson$android$camera$controller$StateMachine$TransitterEvent:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 1973
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1968
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 1969
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;->NORMAL:Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1963
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 1964
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1958
    :cond_3
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE_BURST:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 1959
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private resetKeyEventHandling()V
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->reset()V

    .line 569
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    instance-of v0, v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 570
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    .line 571
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->NONE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mActionByKey:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 573
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mclear(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V

    return-void
.end method

.method private resetSideTouchEventHandling()V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    instance-of v0, v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SideTouchEventSource;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 585
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    .line 587
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mclear(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V

    return-void
.end method

.method private resetTouchEventHandling()V
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    instance-of v0, v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 578
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    .line 580
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mAngleActionHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mclear(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V

    return-void
.end method

.method private selectDefaultPhotoAction(Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;
    .locals 1

    .line 2014
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isBurstShotEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2015
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isInternalStorageWritable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2016
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_BURST:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    return-object p0

    .line 2020
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->canSelfTimerActivation()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2021
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    return-object p0

    .line 2024
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    return-object p0
.end method

.method private selectDefaultVideoAction()Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;
    .locals 0

    .line 2002
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideoRecording()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2003
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_STOP_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    return-object p0

    .line 2005
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    return-object p0
.end method

.method private selectShutterKeyAction(Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;
    .locals 1

    .line 1984
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1985
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isSuperSlowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isVideoRecording()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1987
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_TRIGGER_SLOW_MOTION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    return-object p0

    .line 1989
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->selectDefaultVideoAction()Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    .line 1992
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->isCameraKeyAssignedToBurstShot()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1993
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->selectDefaultPhotoAction(Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p0

    return-object p0
.end method

.method private startEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)Z
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 534
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    return v1

    .line 538
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->-$$Nest$sfgetFOCUS()Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 539
    invoke-static {}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->-$$Nest$sfgetCAMERA()Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    return v1

    :cond_1
    return v2
.end method

.method private stopEventHandling(Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;)V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    if-nez v0, :cond_0

    return-void

    .line 562
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 563
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mHandlingEventSource:Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;

    :cond_1
    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler;->mSideTouchCameraGestureDetector:Lcom/sonyericsson/android/camera/SideTouchEventDetector;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->unregister()V

    return-void
.end method
