.class public abstract Lcom/sonyericsson/android/camera/device/StateCheckerBase;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "StateCheckerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;
    }
.end annotation


# instance fields
.field protected mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/StateCheckerBase;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    return-void
.end method


# virtual methods
.method public setStateListener(Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/StateCheckerBase;->mStateCheckerCallback:Lcom/sonyericsson/android/camera/device/StateCheckerBase$StateCheckerCallback;

    return-void
.end method
