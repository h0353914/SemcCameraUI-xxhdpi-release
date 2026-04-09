.class final Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;
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
    name = "ThermalAlertReceiverCreateTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 1049
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V
    .locals 0

    .line 1049
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1052
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    new-instance v1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1053
    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2100(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;)V

    .line 1052
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2002(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    return-void
.end method
