.class public interface abstract Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;
.super Ljava/lang/Object;
.source "HandSignsDetectorInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DetectResultInterface"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;
    }
.end annotation


# virtual methods
.method public abstract getArea()Landroid/graphics/Rect;
.end method

.method public abstract getStatus()Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;
.end method
