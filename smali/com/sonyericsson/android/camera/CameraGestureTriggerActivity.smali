.class public Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;
.super Lcom/sonyericsson/android/camera/CameraActivity;
.source "CameraGestureTriggerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onHomeKeyEvent()V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->onHomeKeyEvent()V

    .line 36
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;->requestSuspend()V

    return-void
.end method

.method public requestSuspend()V
    .locals 1

    const/16 v0, 0x8

    .line 23
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;->finishActivity(I)V

    const/16 v0, 0x9

    .line 24
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;->finishActivity(I)V

    const/16 v0, 0xe

    .line 25
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;->finishActivity(I)V

    const/16 v0, 0xc

    .line 26
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;->finishActivity(I)V

    const/16 v0, 0xd

    .line 27
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;->finishActivity(I)V

    .line 30
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraGestureTriggerActivity;->finishAffinity()V

    return-void
.end method

.method protected shouldShowWhenLocked()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
