.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateVideoRecordingPausing"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 10898
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecording-IA;)V

    .line 10899
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method


# virtual methods
.method public varargs handleResumeRecording([Ljava/lang/Object;)V
    .locals 0

    .line 10909
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoResumeRecording(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    .line 10910
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoRecordingPausing;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->requestOnePreviewFrame()V

    return-void
.end method

.method protected isPaused()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
