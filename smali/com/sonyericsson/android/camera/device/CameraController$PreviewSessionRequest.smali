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
.field private static final OPERATION_MODE_SOMC_CAMERA_BT601:I = 0x8000

.field private static final OPERATION_MODE_SOMC_CAMERA_BT709:I = 0x8003

.field private static final OPERATION_MODE_SOMC_CAMERA_VIDEO_HDR:I = 0x8002


# instance fields
.field private mIsNeedCapturedFrame:Z

.field private mIsVideoHdr:Z

.field private final mSessionIdTag:Ljava/lang/String;

.field private mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mSessionIdTag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 240
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 241
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->clear()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needVideo(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needVideoHdr(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;Z)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->needCapturedFrame(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z
    .locals 0

    .line 221
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->isVideoHdr()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)Z
    .locals 0

    .line 221
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->isNeedCapturedFrame()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;)I
    .locals 0

    .line 221
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getOperationMode()I

    move-result p0

    return p0
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsNeedCapturedFrame:Z

    .line 281
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsVideoHdr:Z

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-void
.end method

.method private getOperationMode()I
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsVideoHdr:Z

    if-eqz v0, :cond_0

    const p0, 0x8002

    return p0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eq p0, v0, :cond_1

    const p0, 0x8003

    return p0

    :cond_1
    const p0, 0x8000

    return p0
.end method

.method private isNeedCapturedFrame()Z
    .locals 0

    .line 257
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsNeedCapturedFrame:Z

    return p0
.end method

.method private isVideoHdr()Z
    .locals 0

    .line 261
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsVideoHdr:Z

    return p0
.end method

.method private needCapturedFrame(Z)V
    .locals 0

    .line 245
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsNeedCapturedFrame:Z

    return-void
.end method

.method private needVideo(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-void
.end method

.method private needVideoHdr(Z)V
    .locals 0

    .line 249
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsVideoHdr:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 294
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

    .line 299
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mSessionIdTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isNeedCapturedFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsNeedCapturedFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVideoHdr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->mIsVideoHdr:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", OperationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$PreviewSessionRequest;->getOperationMode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
