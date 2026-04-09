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
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Landroid/content/Context;)V
    .locals 0

    .line 1578
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 1579
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 1575
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->mOrientation:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V
    .locals 0

    .line 1574
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;)I
    .locals 0

    .line 1574
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->getOrientation()I

    move-result p0

    return p0
.end method

.method private getOrientation()I
    .locals 3

    .line 1589
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->mOrientation:I

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getNormalizedRotation(I)I

    move-result v0

    .line 1592
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCameraInfo()Lcom/sonyericsson/android/camera/device/CameraInfo;

    move-result-object p0

    .line 1593
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$6;->$SwitchMap$com$sonyericsson$android$camera$device$CameraInfo$CameraId:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->facing:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1601
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    add-int/2addr p0, v0

    rem-int/lit16 p0, p0, 0x168

    goto :goto_0

    .line 1598
    :pswitch_0
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    add-int/lit16 p0, p0, 0x168

    sub-int/2addr p0, v0

    rem-int/lit16 p0, p0, 0x168

    goto :goto_0

    .line 1595
    :pswitch_1
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo;->orientation:I

    add-int/2addr p0, v0

    rem-int/lit16 p0, p0, 0x168

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 0

    .line 1584
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$FastCaptureOrientation;->mOrientation:I

    return-void
.end method
