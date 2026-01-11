.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$CloseCameraDeviceNotificationTask;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseCameraDeviceNotificationTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;)V
    .locals 0

    .line 4895
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$CloseCameraDeviceNotificationTask;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$CloseCameraDeviceNotificationTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$CloseCameraDeviceNotificationTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4900
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$CloseCameraDeviceNotificationTask;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4901
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl$CloseCameraDeviceNotificationTask;->this$1:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$BypassCameraControllerCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_CAMERA_DEVICE_CLOSED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
