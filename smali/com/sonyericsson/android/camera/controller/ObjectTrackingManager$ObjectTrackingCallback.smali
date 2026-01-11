.class Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;
.super Ljava/lang/Object;
.source "ObjectTrackingManager.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObjectTrackingCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;-><init>(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)V

    return-void
.end method


# virtual methods
.method public onObjectTracked(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->-$$Nest$fgetmObjectTrackingCallback(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    .line 45
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "onObjectTracked: result is null."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 50
    :cond_2
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onObjectTracked: lost: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 53
    :cond_3
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ObjectTrackingManager$State:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->-$$Nest$fgetmCurrentState(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 74
    :cond_4
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    if-eqz v0, :cond_a

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->LOST:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->-$$Nest$fputmCurrentState(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;)V

    goto :goto_0

    .line 64
    :cond_5
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    if-eqz v0, :cond_7

    .line 66
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_6

    const-string p0, "onObjectTracked: ignore lost"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    return-void

    .line 70
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->TRACKING:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->-$$Nest$fputmCurrentState(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;)V

    goto :goto_0

    .line 57
    :cond_8
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    if-eqz v0, :cond_9

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->LOST:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->-$$Nest$fputmCurrentState(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;)V

    goto :goto_0

    .line 60
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;->TRACKING:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->-$$Nest$fputmCurrentState(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$State;)V

    .line 83
    :cond_a
    :goto_0
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    if-eqz v0, :cond_b

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->startTimeoutCount()V

    .line 85
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onObjectLost(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V

    goto :goto_1

    .line 87
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->stopTimeoutCount()V

    .line 88
    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_1

    .line 93
    :cond_c
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onObjectTracked(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V

    :cond_d
    :goto_1
    return-void
.end method
