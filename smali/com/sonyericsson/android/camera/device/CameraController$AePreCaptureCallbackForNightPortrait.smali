.class final Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallbackForNightPortrait;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AePreCaptureCallbackForNightPortrait"
.end annotation


# instance fields
.field private mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field private mJpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

.field private mShutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallbackForNightPortrait;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 840
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallbackForNightPortrait;->mShutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    .line 841
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallbackForNightPortrait;->mJpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    .line 842
    iput-object p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallbackForNightPortrait;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallbackForNightPortrait-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallbackForNightPortrait;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method


# virtual methods
.method public onAeConverged()V
    .locals 3

    .line 847
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallbackForNightPortrait;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->getCameraDeviceStatus()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    if-eq v0, v1, :cond_0

    return-void

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallbackForNightPortrait;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallbackForNightPortrait;->mShutter:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallbackForNightPortrait;->mJpeg:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$AePreCaptureCallbackForNightPortrait;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {v0, v1, v2, p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$mstartTakeMainFrameForNightPortrait(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraShutterCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraPictureCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method
