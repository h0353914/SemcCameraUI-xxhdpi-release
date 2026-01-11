.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$OpenCameraDeviceNotificationTask;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenCameraDeviceNotificationTask"
.end annotation


# instance fields
.field private final mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 5430
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$OpenCameraDeviceNotificationTask;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5431
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$OpenCameraDeviceNotificationTask;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$OpenCameraDeviceNotificationTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$OpenCameraDeviceNotificationTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5438
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$OpenCameraDeviceNotificationTask;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5439
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$OpenCameraDeviceNotificationTask;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_CAMERA_DEVICE_OPENED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraControllerCallbackImpl$OpenCameraDeviceNotificationTask;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
