.class Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoPowerOffListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 3659
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V
    .locals 0

    .line 3659
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onAutoPowerOff(Ljava/lang/Object;)V
    .locals 6

    .line 3669
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3670
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2900(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->hideAutoPowerOffHintText()V

    .line 3674
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER_DIALOG:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    .line 3675
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3676
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$1500(Lcom/sonyericsson/android/camera/CameraActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffTask;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v2, v3, v1}, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 3680
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->values()[Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 3681
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3682
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getAction()Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    move-result-object v1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 3687
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendAutoPowerOffEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;)V

    goto :goto_2

    :cond_5
    const-string p1, "AutoPowerOffAction is not found."

    .line 3690
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 3692
    :goto_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->abort()V

    return-void
.end method

.method public onAutoPowerOffWarning()V
    .locals 1

    .line 3662
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2900(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3663
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2900(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showAutoPowerOffHintText()V

    :cond_0
    return-void
.end method
