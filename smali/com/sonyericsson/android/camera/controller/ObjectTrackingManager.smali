.class public Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;
.super Ljava/lang/Object;
.source "ObjectTrackingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;,
        Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;,
        Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ObjectTrackingManager"


# instance fields
.field private final mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

.field private mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

.field private final mHandler:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;

.field private mObjectTrackingCallback:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;

.field private final mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

.field private final mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mHandler:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmObjectTrackingCallback(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mObjectTrackingCallback:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/StateMachine;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/view/ViewFinder;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentState(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinder;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->STOPPED:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    .line 112
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;-><init>(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mHandler:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;

    .line 101
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    .line 102
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 103
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    return-void
.end method

.method public static final preload()V
    .locals 0

    return-void
.end method

.method private startTracking(Landroid/graphics/Rect;)V
    .locals 4

    .line 136
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startTracking E: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_STARTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 144
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;-><init>(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mObjectTrackingCallback:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;

    .line 146
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromViewToActiveArray(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mObjectTrackingCallback:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startObjectTracking(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;)V

    .line 152
    sget-object p1, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->IDLE:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    .line 153
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string/jumbo p0, "startTracking X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public start(Landroid/graphics/Rect;)V
    .locals 2

    .line 115
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "start() called: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_3

    .line 117
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ObjectTrackingManager$State:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->stop()V

    .line 126
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->startTracking(Landroid/graphics/Rect;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 157
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "stop() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopObjectTracking()V

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mHandler:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->stopTimeoutCount()V

    .line 160
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->STOPPED:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mObjectTrackingCallback:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;

    .line 162
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_STOP:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 164
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string/jumbo p0, "stop() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method
