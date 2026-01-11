.class Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;
.super Ljava/util/TimerTask;
.source "ThermalAlertReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LowTempBurnTimerTask"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$1:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;)V
    .locals 1

    .line 483
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;->this$1:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 484
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;-><init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 488
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "LowTempBurn timer expired."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;->cancel()Z

    .line 494
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask$1;-><init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
