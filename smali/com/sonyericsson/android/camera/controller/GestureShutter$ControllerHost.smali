.class public interface abstract Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;
.super Ljava/lang/Object;
.source "GestureShutter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/GestureShutter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ControllerHost"
.end annotation


# virtual methods
.method public abstract addOrientationListener(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;)V
.end method

.method public abstract getLayoutOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;
.end method

.method public abstract prepareGestureShutterCountDown()V
.end method

.method public abstract removeOrientationListener(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;)V
.end method

.method public abstract resetGestureShutterCountDown()V
.end method

.method public abstract startGestureShutterCountDown()V
.end method
