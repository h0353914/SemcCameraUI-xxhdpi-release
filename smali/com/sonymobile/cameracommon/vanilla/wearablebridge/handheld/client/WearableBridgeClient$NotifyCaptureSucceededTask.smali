.class Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyCaptureSucceededTask;
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
    name = "NotifyCaptureSucceededTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyCaptureSucceededTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$1;)V
    .locals 0

    .line 322
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyCaptureSucceededTask;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 325
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotifyCaptureSucceededTask.run() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyCaptureSucceededTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->access$1700(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "onStateChanged() : Observer disabled."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyCaptureSucceededTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    const-string v1, "com.sonymobile.cameracommon.wearablebridge.CLIENT_PHOTO_CAPTURE_COMPLETED"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->access$1900(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wearable-bridge-completion-status-key"

    const/4 v2, 0x1

    .line 334
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 337
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$NotifyCaptureSucceededTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->access$1800(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 339
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "NotifyCaptureSucceededTask.run() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-void
.end method
