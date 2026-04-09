.class public interface abstract Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;
.super Ljava/lang/Object;
.source "HandSignsDetectorInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;,
        Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;
    }
.end annotation


# virtual methods
.method public abstract getDetectHeight()I
.end method

.method public abstract getDetectWidth()I
.end method

.method public abstract isStarted()Z
.end method

.method public abstract release()V
.end method

.method public abstract setLayoutOrientation(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V
.end method

.method public abstract startDetect(Lcom/sonyericsson/android/camera/device/ImageRetriever;)V
.end method

.method public abstract stopDetect()V
.end method
