.class Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayLaunchInternalModeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 1547
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1550
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DelayLaunchInternalModeTask E:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1551
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmDelayLaunchInternalModeTaskCount(Lcom/sonyericsson/android/camera/CameraActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fputmDelayLaunchInternalModeTaskCount(Lcom/sonyericsson/android/camera/CameraActivity;I)V

    .line 1552
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$misKeyguardLocked(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1553
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmDelayLaunchInternalModeTask(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1554
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fputmDelayLaunchInternalModeTaskCount(Lcom/sonyericsson/android/camera/CameraActivity;I)V

    .line 1555
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$mlaunchInternalMode(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void

    .line 1558
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1559
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mDelayLaunchInternalModeTaskCount :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmDelayLaunchInternalModeTaskCount(Lcom/sonyericsson/android/camera/CameraActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1560
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmDelayLaunchInternalModeTaskCount(Lcom/sonyericsson/android/camera/CameraActivity;)I

    move-result v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetMAX_COUNT(Lcom/sonyericsson/android/camera/CameraActivity;)I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 1561
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmDelayLaunchInternalModeTask(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1562
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fputmDelayLaunchInternalModeTaskCount(Lcom/sonyericsson/android/camera/CameraActivity;I)V

    goto :goto_0

    .line 1564
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmDelayLaunchInternalModeTask(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/CameraActivity$DelayLaunchInternalModeTask;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    .line 1566
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "DelayLaunchInternalModeTask X:"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return-void
.end method
