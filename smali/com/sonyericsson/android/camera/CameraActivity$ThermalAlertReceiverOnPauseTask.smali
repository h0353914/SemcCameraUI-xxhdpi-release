.class final Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnPauseTask;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThermalAlertReceiverOnPauseTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 2014
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnPauseTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V
    .locals 0

    .line 2014
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnPauseTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2017
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnPauseTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2000(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->onPause()V

    .line 2018
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setMeasurementThermal(Z)V

    .line 2019
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverOnPauseTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2200(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->onPause()V

    return-void
.end method
