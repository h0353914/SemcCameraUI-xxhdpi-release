.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;
.super Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitControllerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V
    .locals 0

    .line 604
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method protected doCameraDeviceAccess()V
    .locals 7

    .line 613
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/BypassCameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    new-instance v4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {v4, v6}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/BypassCameraController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/BypassCameraController$BypassCameraControllerCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$302(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/BypassCameraController;)Lcom/sonyericsson/android/camera/device/BypassCameraController;

    .line 616
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$400(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {v3, v4, v5}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$1;)V

    new-instance v4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {v4, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceHandlerInquirer;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->access$602(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController;

    return-void
.end method

.method public postCameraDeviceAccess()V
    .locals 0

    .line 623
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$InitControllerTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method protected verifyCameraDeviceStatus()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
