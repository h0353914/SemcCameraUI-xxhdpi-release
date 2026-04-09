.class Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureButtonProcedure"
.end annotation


# instance fields
.field private mIsBurst:Z

.field private mIsTouched:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 1

    .line 1114
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    const/4 p1, 0x0

    .line 1115
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsTouched:Z

    .line 1116
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsBurst:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V
    .locals 0

    .line 1114
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 2

    .line 1150
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsTouched:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1153
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsTouched:Z

    .line 1156
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->clearBurstShootingRejectedReason()V

    .line 1157
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public doLongClick(Landroid/graphics/Point;)V
    .locals 0

    .line 1162
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsTouched:Z

    if-nez p1, :cond_0

    return-void

    .line 1165
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsBurst:Z

    return-void
.end method

.method public doTouchDown()V
    .locals 1

    const/4 v0, 0x1

    .line 1120
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsTouched:Z

    const/4 v0, 0x0

    .line 1121
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsBurst:Z

    .line 1123
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->clearCanceledSideTouchEventIcons()V

    .line 1124
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3300(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    return-void
.end method

.method public doTouchUp(Landroid/graphics/Point;)V
    .locals 2

    .line 1129
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->CAPTURE_BUTTON_TAP:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    const/4 p1, 0x0

    .line 1130
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsTouched:Z

    .line 1132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isSwitchingAnimationProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->closeDialogs()V

    .line 1138
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->CAPTURE_BUTTON:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    .line 1141
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->mIsBurst:Z

    if-eqz v0, :cond_1

    .line 1142
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1144
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3500(Lcom/sonyericsson/android/camera/view/UserEventHandler;Z)Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
