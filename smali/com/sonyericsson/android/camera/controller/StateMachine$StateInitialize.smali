.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateInitialize"
.end annotation


# instance fields
.field private mEvf:Lcom/sonymobile/cameracommon/evf/Evf;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 2169
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    .line 2170
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .locals 0

    .line 2165
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method


# virtual methods
.method public varargs handleOnEvfPrepared([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2237
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonymobile/cameracommon/evf/Evf;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->mEvf:Lcom/sonymobile/cameracommon/evf/Evf;

    return-void
.end method

.method public varargs handleOnInitialAutoFocusDone([Ljava/lang/Object;)V
    .locals 0

    .line 2215
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preCapture()V

    return-void
.end method

.method public varargs handleOnPreShutterDone([Ljava/lang/Object;)V
    .locals 1

    .line 2221
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    return-void
.end method

.method public varargs handleOnPreTakePictureDone([Ljava/lang/Object;)V
    .locals 1

    .line 2227
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 4

    .line 2232
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;ZLcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleResume([Ljava/lang/Object;)V
    .locals 13

    const/4 v0, 0x1

    .line 2176
    aget-object v1, p1, v0

    move-object v4, v1

    check-cast v4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    const/4 v1, 0x2

    .line 2177
    aget-object v2, p1, v1

    move-object v7, v2

    check-cast v7, Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;

    .line 2179
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isCameraDisabled()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    .line 2180
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1200(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ERROR_USE_OF_CAMERA_RESTRICTED:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    new-array v0, v9, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V

    return-void

    .line 2185
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$device$CameraDeviceHandler$PreProcessState:[I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getPreProcessState()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2196
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2197
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getAndClearPreCaptureResult()Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2199
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v5, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_PRE_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v2, v6, v9

    invoke-static {v3, v5, v6}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$4800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;

    goto :goto_0

    .line 2188
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->preCapture()V

    .line 2205
    :cond_1
    :goto_0
    :pswitch_2
    aget-object v2, p1, v9

    move-object v10, v2

    check-cast v10, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 2206
    iget-object v11, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v12, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->mEvf:Lcom/sonymobile/cameracommon/evf/Evf;

    const/4 v8, 0x0

    move-object v2, v12

    move-object v5, v10

    invoke-direct/range {v2 .. v8}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateResume;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonymobile/cameracommon/evf/Evf;Lcom/sonyericsson/android/camera/controller/StateMachine$StartupAction;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v10, v2, v9

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 2207
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$5000(Lcom/sonyericsson/android/camera/controller/StateMachine;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v0

    aput-object p1, v2, v1

    .line 2206
    invoke-static {v11, v12, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
