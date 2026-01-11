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

    .line 3674
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onAutoPowerOff(Ljava/lang/Object;)V
    .locals 5

    .line 3684
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3685
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->hideAutoPowerOffHintText()V

    .line 3689
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->values()[Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 3690
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3691
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->getAction()Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    move-result-object p1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    .line 3696
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendAutoPowerOffEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;)V

    .line 3698
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->LIFT_TRIGGER:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->LIFT_TRIGGER_DIALOG:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    if-ne p1, v0, :cond_3

    goto :goto_2

    .line 3704
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->abort()V

    goto :goto_3

    .line 3702
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->screenOff()V

    goto :goto_3

    .line 3708
    :cond_5
    const-string p1, "AutoPowerOffAction is not found."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 3709
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->abort()V

    :goto_3
    return-void
.end method

.method public onAutoPowerOffWarning()V
    .locals 1

    .line 3677
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3678
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->showAutoPowerOffHintText()V

    :cond_0
    return-void
.end method
