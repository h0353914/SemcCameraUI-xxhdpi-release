.class Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;
.super Ljava/lang/Object;
.source "BypassCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaptureImageReaderRequest"
.end annotation


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;

.field private mCaptureSize:Landroid/graphics/Rect;

.field private mCapturingBufferNum:I

.field private mImageReaderBufferNum:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V
    .locals 0

    .line 1559
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;-><init>()V

    return-void
.end method

.method static synthetic access$4000(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)I
    .locals 0

    .line 1559
    iget p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mImageReaderBufferNum:I

    return p0
.end method

.method static synthetic access$4002(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;I)I
    .locals 0

    .line 1559
    iput p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mImageReaderBufferNum:I

    return p1
.end method

.method static synthetic access$4100(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)I
    .locals 0

    .line 1559
    iget p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCapturingBufferNum:I

    return p0
.end method

.method static synthetic access$4102(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;I)I
    .locals 0

    .line 1559
    iput p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCapturingBufferNum:I

    return p1
.end method

.method static synthetic access$4200(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Landroid/graphics/Rect;
    .locals 0

    .line 1559
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCaptureSize:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 1559
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCaptureSize:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;
    .locals 0

    .line 1559
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;

    return-object p0
.end method

.method static synthetic access$4302(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;
    .locals 0

    .line 1559
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCallback:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$ImageReaderInitializedCallback;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Z
    .locals 0

    .line 1559
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->isSameRequest(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Z

    move-result p0

    return p0
.end method

.method private isSameRequest(Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1576
    iget v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mImageReaderBufferNum:I

    iget v1, p1, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mImageReaderBufferNum:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCapturingBufferNum:I

    iget v1, p1, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCapturingBufferNum:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCaptureSize:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCaptureSize:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCaptureSize:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/BypassCameraController$CaptureImageReaderRequest;->mCaptureSize:Landroid/graphics/Rect;

    .line 1579
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
