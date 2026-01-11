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

    .line 1139
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    new-instance v1, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ThermalAlertReceiverCreateTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmThermalAlertListener(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ThermalAlertReceiverListener;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fputmThermalAlertReceiver(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)V

    return-void
.end method
