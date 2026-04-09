.class Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyPhotoStateTask;
.super Ljava/lang/Object;
.source "WearableBridgeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyPhotoStateTask"
.end annotation


# instance fields
.field private final mPhotoState:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyPhotoStateTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyPhotoStateTask;->mPhotoState:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 304
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotifyPhotoStateTask.run() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyPhotoStateTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->access$1700(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 307
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "onStateChanged() : Observer disabled."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyPhotoStateTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    const-string v1, "com.sonymobile.cameracommon.wearablebridge.CLIENT_PHOTO_STATE_CHANGED"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->access$1900(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wearable-bridge-photo-state-key"

    .line 313
    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyPhotoStateTask;->mPhotoState:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    .line 315
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;->name()Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyPhotoStateTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->access$1800(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 318
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "NotifyPhotoStateTask.run() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-void
.end method
