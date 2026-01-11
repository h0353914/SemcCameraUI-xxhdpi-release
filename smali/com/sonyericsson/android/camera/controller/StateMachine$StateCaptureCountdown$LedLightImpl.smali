.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$LedLightImpl;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LedLightImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;)V
    .locals 0

    .line 5029
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$LedLightImpl;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$LedLightImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$LedLightImpl;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;)V

    return-void
.end method


# virtual methods
.method public turnOff()V
    .locals 1

    .line 5038
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$LedLightImpl;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setTorchAndCommit(Z)V

    return-void
.end method

.method public turnOn()V
    .locals 1

    .line 5033
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown$LedLightImpl;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateCaptureCountdown;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setTorchAndCommit(Z)V

    return-void
.end method
