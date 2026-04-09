.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseBypassCameraTimeoutTask"
.end annotation


# instance fields
.field private final mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 936
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V
    .locals 0

    .line 933
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 942
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1000(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 952
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseBypassCameraTaskRequested()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 953
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseBypassCameraTaskPerformed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 954
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 955
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;)V

    .line 961
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1100(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 964
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n========== TIMEOUT ==========\n"

    .line 965
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CloseBypassCameraTimeoutTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$1200(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Ljava/lang/StringBuilder;)V

    const-string p0, "============================="

    .line 967
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x2

    .line 968
    new-array p0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CloseBypassCameraTimeoutTask"

    aput-object v2, p0, v1

    const/4 v1, 0x1

    .line 969
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2c

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    .line 968
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 971
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "CloseBypassCameraTimeoutTask: The camera app keeps holding the camera hardware resources."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method
