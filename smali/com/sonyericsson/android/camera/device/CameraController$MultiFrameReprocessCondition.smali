.class Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiFrameReprocessCondition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;
    }
.end annotation


# instance fields
.field private mImageNum:I

.field private final mReprocessData:Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

.field private mResultNum:I

.field private mType:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;


# direct methods
.method static bridge synthetic -$$Nest$macceptable(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->acceptable(Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$macceptable(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Landroid/media/Image;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->acceptable(Landroid/media/Image;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetData(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->getData()Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misLLS(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->isLLS()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misPrepared(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->isPrepared()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyShutter(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->notifyShutter(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecycle(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->recycle()V

    return-void
.end method

.method public constructor <init>(ILcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;)V
    .locals 2

    .line 1105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1102
    new-instance v0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;-><init>(Lcom/sonyericsson/android/camera/device/zsl/ImageToken;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mReprocessData:Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    .line 1106
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mImageNum:I

    .line 1107
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mResultNum:I

    .line 1108
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mType:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    return-void
.end method

.method private acceptable(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 2

    .line 1137
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mResultNum:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mResultNum:I

    if-nez v0, :cond_0

    .line 1138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mReprocessData:Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->setResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private acceptable(Landroid/media/Image;)Z
    .locals 2

    .line 1121
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mImageNum:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mImageNum:I

    if-nez v0, :cond_0

    .line 1122
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mReprocessData:Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->setImage(Landroid/media/Image;)V

    return v1

    .line 1126
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    const/4 p0, 0x0

    return p0
.end method

.method private getData()Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;
    .locals 0

    .line 1166
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mReprocessData:Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    return-object p0
.end method

.method private isLLS()Z
    .locals 1

    .line 1112
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mType:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;->LLS:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$Type;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPrepared()Z
    .locals 0

    .line 1157
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mReprocessData:Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->isValid()Z

    move-result p0

    return p0
.end method

.method private notifyShutter(Landroid/os/Handler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V
    .locals 1

    .line 1174
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->isLLS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$1;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private recycle()V
    .locals 0

    .line 1149
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameReprocessCondition;->mReprocessData:Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->recycle()V

    return-void
.end method
