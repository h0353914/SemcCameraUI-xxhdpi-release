.class public abstract Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;
.super Landroid/content/BroadcastReceiver;
.source "ScreenOffReceiverBase.java"


# instance fields
.field private mIsRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 23
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 24
    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;->onScreenOff()V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract onScreenOff()V
.end method

.method public final registerTo(Landroid/content/Context;)V
    .locals 2

    .line 38
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;->mIsRegistered:Z

    return-void
.end method

.method public final unregisterFrom(Landroid/content/Context;)V
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;->mIsRegistered:Z

    return-void
.end method
