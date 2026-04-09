.class public Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;
.super Ljava/lang/Object;
.source "ObjectTrackingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;,
        Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;,
        Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;
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
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinder;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->STOPPED:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    .line 111
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;-><init>(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mHandler:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;

    .line 100
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    .line 101
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 102
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mObjectTrackingCallback:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mHandler:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/StateMachine;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/view/ViewFinder;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    return-object p0
.end method

.method public static final preload()V
    .locals 0

    return-void
.end method

.method private startTracking(Landroid/graphics/Rect;)V
    .locals 4

    .line 135
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTracking E: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_STARTED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 143
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;-><init>(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mObjectTrackingCallback:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 145
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromViewToActiveArray(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mObjectTrackingCallback:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;

    .line 144
    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->startObjectTracking(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;)V

    .line 147
    sget-object p1, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->IDLE:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    .line 148
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "startTracking X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public start(Landroid/graphics/Rect;)V
    .locals 4

    .line 114
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start() called: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 116
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ObjectTrackingManager$State:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->stop()V

    .line 125
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->startTracking(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 2

    .line 152
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "stop() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->stopObjectTracking()V

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mHandler:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->stopTimeoutCount()V

    .line 155
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->STOPPED:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mCurrentState:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mObjectTrackingCallback:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;

    .line 157
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_STOP:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 159
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "stop() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method
