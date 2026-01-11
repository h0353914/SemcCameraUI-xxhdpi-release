.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$10;
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
        "Lcom/sonyericsson/android/camera/device/CameraActionSound;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 3208
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$10;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/sonyericsson/android/camera/device/CameraActionSound;
    .locals 0

    .line 3210
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$10;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmCameraActionSound(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 3208
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$10;->get()Lcom/sonyericsson/android/camera/device/CameraActionSound;

    move-result-object p0

    return-object p0
.end method
