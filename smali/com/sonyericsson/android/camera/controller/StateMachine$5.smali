.class Lcom/sonyericsson/android/camera/controller/StateMachine$5;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readyToNotify()Z
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 563
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    move-result-object p0

    .line 564
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_READY:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerListener(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;)V
    .locals 0

    .line 552
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fputmQrResultListener(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 557
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_START_QR_SCANNING:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    return-void
.end method
