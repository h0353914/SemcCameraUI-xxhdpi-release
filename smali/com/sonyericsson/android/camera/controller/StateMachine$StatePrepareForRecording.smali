.class Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;
.super Lcom/sonyericsson/android/camera/controller/StateMachine$StateNone;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePrepareForRecording"
.end annotation


# instance fields
.field private mTriggerLock3A:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 1

    .line 5200
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateNone;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$StateNone-IA;)V

    const/4 p1, 0x1

    .line 5197
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->mTriggerLock3A:Z

    .line 5201
    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PREPARE_FOR_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->mCaptureState:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    return-void
.end method


# virtual methods
.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 5219
    aget-object p1, p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;

    if-eqz p1, :cond_0

    .line 5220
    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->mTriggerLock3A:Z

    if-eqz p1, :cond_0

    .line 5222
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->mTriggerLock3A:Z

    .line 5223
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->lock3A(Z)V

    :cond_0
    return-void
.end method

.method public varargs handleOnOrientationChanged([Ljava/lang/Object;)V
    .locals 2

    .line 5206
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs handleOnRecordingError([Ljava/lang/Object;)V
    .locals 0

    .line 5214
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePrepareForRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mdoHandleRecordingError(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method
