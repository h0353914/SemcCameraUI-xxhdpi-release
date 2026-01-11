.class Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForceExitRequestReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 2758
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 2761
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "ForceExitRequestReceiver.onReceive()"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 2767
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object p1

    .line 2769
    sget-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->SETUP_WIZARD:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 2770
    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "com.sonymobile.cameracommon.intent.ACTION_FORCE_EXIT_REQUEST"

    .line 2771
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2773
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_2

    .line 2774
    const-string p1, "ForceExitRequestReceiver() Force Exit"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2775
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ForceExitRequestReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    :cond_3
    return-void
.end method
