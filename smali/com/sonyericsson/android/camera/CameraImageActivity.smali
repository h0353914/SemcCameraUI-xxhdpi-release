.class public Lcom/sonyericsson/android/camera/CameraImageActivity;
.super Landroid/app/Activity;
.source "CameraImageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 25
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraImageActivity;->isVoiceInteractionRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const-class v0, Lcom/sonyericsson/android/camera/InternalCameraActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 28
    :cond_0
    const-class v0, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    const-string v0, "is_voice_interaction_root"

    .line 31
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraImageActivity;->isVoiceInteractionRoot()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraImageActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1, p1}, Lcom/sonyericsson/android/camera/CameraImageActivity;->overridePendingTransition(II)V

    .line 35
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraImageActivity;->finish()V

    return-void
.end method
