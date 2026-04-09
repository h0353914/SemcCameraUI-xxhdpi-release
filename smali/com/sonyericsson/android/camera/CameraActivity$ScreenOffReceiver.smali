.class Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOffReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenOffReceiver"


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V
    .locals 0

    .line 700
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 705
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "onReceive():[IN]"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 707
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 709
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    const-string p1, "onReceive():[Receive SCREEN_OFF]"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 712
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 720
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition;->getLaunchTrigger()Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->POWER_KEY_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 721
    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$800(Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 722
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$900(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void

    .line 727
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestSuspend()V

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method
