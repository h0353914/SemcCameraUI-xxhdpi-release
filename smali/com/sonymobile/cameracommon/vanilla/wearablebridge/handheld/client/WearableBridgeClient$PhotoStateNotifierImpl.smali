.class Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$PhotoStateNotifierImpl;
.super Ljava/lang/Object;
.source "WearableBridgeClient.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoStateNotifierImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$PhotoStateNotifierImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$1;)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$PhotoStateNotifierImpl;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)V

    return-void
.end method


# virtual methods
.method public onCaptureFailed()V
    .locals 3

    .line 280
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onCaptureFailed() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 282
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyCaptureFailedTask;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$PhotoStateNotifierImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyCaptureFailedTask;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$1;)V

    .line 283
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$PhotoStateNotifierImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->access$1500(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 285
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "onCaptureFailed() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCaptureSucceeded()V
    .locals 3

    .line 270
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onCaptureSucceeded() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 272
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyCaptureSucceededTask;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$PhotoStateNotifierImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyCaptureSucceededTask;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$1;)V

    .line 273
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$PhotoStateNotifierImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->access$1500(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 275
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "onCaptureSucceeded() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;)V
    .locals 2

    .line 260
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onStateChanged() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 262
    :cond_0
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyPhotoStateTask;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$PhotoStateNotifierImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    invoke-direct {v0, v1, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyPhotoStateTask;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;)V

    .line 263
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$PhotoStateNotifierImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->access$1500(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 265
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "onStateChanged() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method
