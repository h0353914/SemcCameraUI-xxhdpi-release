.class Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewSessionRequest"
.end annotation


# static fields
.field public static final OPERATION_MODE_SOMC_CAMERA_BT601:I = 0x8000

.field public static final OPERATION_MODE_SOMC_CAMERA_BT709:I = 0x8003

.field public static final OPERATION_MODE_SOMC_CAMERA_STEADY_SHOT:I = 0x9001

.field public static final OPERATION_MODE_SOMC_CAMERA_VIDEO_HDR:I = 0x8002


# instance fields
.field private mIsNeedCapturedFrame:Z

.field private mIsSteadyShot:Z

.field private mIsVideoHdr:Z

.field private mNeedSlowMotion:Z

.field private final mSessionIdTag:Ljava/lang/String;

.field private mSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

.field private mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field private misLogicCameraOperationMode:Z


# direct methods
.method static bridge synthetic -$$Nest$mgetOperationMode(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)I
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getOperationMode()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSessionType(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misNeedCapturedFrame(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->isNeedCapturedFrame()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSlowMotion(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->isSlowMotion()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misVideoHdr(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->isVideoHdr()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mneedCapturedFrame(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needCapturedFrame(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mneedLogicCameraOperationMode(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needLogicCameraOperationMode(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mneedSlowMotion(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needSlowMotion(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mneedSteadyShot(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needSteadyShot(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mneedVideo(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needVideo(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mneedVideoHdr(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needVideoHdr(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSessionType(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->setSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 2411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2413
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mSessionIdTag:Ljava/lang/String;

    .line 2414
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;->SESSION_TYPE_NORMAL:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    const/4 p1, 0x0

    .line 2415
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 2416
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->clear()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    .line 2478
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsNeedCapturedFrame:Z

    .line 2479
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsVideoHdr:Z

    const/4 v0, 0x0

    .line 2480
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-void
.end method

.method private getOperationMode()I
    .locals 1

    .line 2465
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsVideoHdr:Z

    if-eqz v0, :cond_0

    const p0, 0x8002

    goto :goto_0

    .line 2467
    :cond_0
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsSteadyShot:Z

    if-eqz p0, :cond_1

    const p0, 0x9001

    goto :goto_0

    :cond_1
    const p0, 0x8000

    :goto_0
    return p0
.end method

.method private getSessionType()Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;
    .locals 0

    .line 2424
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-object p0
.end method

.method private isNeedCapturedFrame()Z
    .locals 0

    .line 2444
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsNeedCapturedFrame:Z

    return p0
.end method

.method private isSlowMotion()Z
    .locals 0

    .line 2456
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mNeedSlowMotion:Z

    return p0
.end method

.method private isVideoHdr()Z
    .locals 0

    .line 2448
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsVideoHdr:Z

    return p0
.end method

.method private needCapturedFrame(Z)V
    .locals 0

    .line 2432
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsNeedCapturedFrame:Z

    return-void
.end method

.method private needLogicCameraOperationMode(Z)V
    .locals 0

    .line 2428
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->misLogicCameraOperationMode:Z

    return-void
.end method

.method private needSlowMotion(Z)V
    .locals 0

    .line 2452
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mNeedSlowMotion:Z

    return-void
.end method

.method private needSteadyShot(Z)V
    .locals 0

    .line 2460
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsSteadyShot:Z

    return-void
.end method

.method private needVideo(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .locals 0

    .line 2440
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-void
.end method

.method private needVideoHdr(Z)V
    .locals 0

    .line 2436
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsVideoHdr:Z

    return-void
.end method

.method private setSessionType(Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V
    .locals 0

    .line 2420
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 2493
    instance-of v0, p1, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 2498
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mSessionIdTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNeedCapturedFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsNeedCapturedFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isVideoHdr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsVideoHdr:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OperationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2487
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getOperationMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSessionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mSessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
