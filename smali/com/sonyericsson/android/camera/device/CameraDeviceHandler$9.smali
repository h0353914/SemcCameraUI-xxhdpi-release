.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/utility/Accessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareRecorder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;ZLcom/sonyericsson/android/camera/recorder/RecordingProfile;Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/camera/recorder/utility/Accessor<",
        "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 3203
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
    .locals 0

    .line 3205
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmBypassCameraController(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/BypassCameraController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->getBypassCameraInstance()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 3203
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$9;->get()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    move-result-object p0

    return-object p0
.end method
