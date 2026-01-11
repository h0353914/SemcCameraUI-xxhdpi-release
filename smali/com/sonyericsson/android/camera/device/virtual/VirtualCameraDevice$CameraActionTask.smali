.class abstract Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;
.super Ljava/lang/Object;
.source "VirtualCameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CameraActionTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;-><init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V

    return-void
.end method


# virtual methods
.method abstract doCameraAccess()V
.end method

.method onRejectCameraAccess()V
    .locals 2

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reject camera action["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] due to status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;->verifyStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;->doCameraAccess()V

    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$CameraActionTask;->onRejectCameraAccess()V

    :goto_0
    return-void
.end method

.method abstract verifyStatus(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$Status;)Z
.end method
