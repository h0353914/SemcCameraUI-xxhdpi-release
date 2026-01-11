.class public Lcom/sonyericsson/android/camera/OneshotPhotoActivityOnLockScreen;
.super Lcom/sonyericsson/android/camera/CameraActivity;
.source "OneshotPhotoActivityOnLockScreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public requestSuspend()V
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/OneshotPhotoActivityOnLockScreen;->finish()V

    return-void
.end method

.method protected shouldShowWhenLocked()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public terminateApplication()V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/OneshotPhotoActivityOnLockScreen;->finish()V

    return-void
.end method
