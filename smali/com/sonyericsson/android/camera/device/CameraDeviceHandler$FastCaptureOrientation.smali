.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;
.super Landroid/view/OrientationEventListener;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FastCaptureOrientation"
.end annotation


# instance fields
.field private mOrientation:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method static bridge synthetic -$$Nest$mgetOrientation(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;)I
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->getOrientation()I

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Landroid/content/Context;)V
    .locals 0

    .line 2431
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 2432
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2428
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->mOrientation:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Landroid/content/Context;)V

    return-void
.end method

.method private getOrientation()I
    .locals 3

    .line 2442
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->mOrientation:I

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getNormalizedRotation(I)I

    move-result v0

    .line 2445
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraInfo()Lcom/sonyericsson/android/camera/device/CameraInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2447
    rem-int/lit16 v0, v0, 0x168

    return v0

    .line 2449
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$13;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->facing:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 2457
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    add-int/2addr p0, v0

    rem-int/lit16 p0, p0, 0x168

    goto :goto_0

    .line 2454
    :cond_1
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    add-int/lit16 p0, p0, 0x168

    sub-int/2addr p0, v0

    rem-int/lit16 p0, p0, 0x168

    goto :goto_0

    .line 2451
    :cond_2
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    add-int/2addr p0, v0

    rem-int/lit16 p0, p0, 0x168

    :goto_0
    return p0
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 0

    .line 2437
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->mOrientation:I

    return-void
.end method
