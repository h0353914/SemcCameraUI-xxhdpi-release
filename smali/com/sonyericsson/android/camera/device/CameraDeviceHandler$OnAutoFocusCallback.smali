.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnAutoFocusCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraDeviceHandler2Interface$CameraAutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnAutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 2241
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(Z)V
    .locals 2

    .line 2244
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraDeviceHandler"

    const-string v1, "onAutoFocus():[IN]"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2246
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    iput-boolean p1, v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isAutoFocus:Z

    .line 2247
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2249
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onAutoFocusDone(Z)V

    :cond_1
    return-void
.end method
