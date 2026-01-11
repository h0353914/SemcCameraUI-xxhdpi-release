.class Lcom/sonyericsson/android/camera/CameraActivity$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$2;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryLevelChanged(I)V
    .locals 2

    .line 571
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBatteryLevelChanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 574
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$2;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BATTERY_LEVEL_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onReachBatteryLimit(Z)V
    .locals 2

    .line 559
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$2;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$misRecording(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendLowBatteryEvent(ZZ)V

    .line 561
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$2;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz p1, :cond_0

    .line 562
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$2;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_REACH_BATTERY_LIMIT:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 565
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$2;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$mreleaseCamera(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method

.method public onReachLowBattery()V
    .locals 2

    .line 554
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$2;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_REACH_BATTERY_LOW:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method
