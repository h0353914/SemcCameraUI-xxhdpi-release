.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreAutoFocusCallback;
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
    name = "OnPreAutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 2272
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(Z)V
    .locals 2

    .line 2277
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fputmOnPreAutoFocusCallback(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreAutoFocusCallback;)V

    .line 2280
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->PRE_SCAN_DONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mchangePreProcessStateTo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;)V

    .line 2284
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2293
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onInitialAutoFocusDone(Z)V

    :cond_0
    return-void
.end method
