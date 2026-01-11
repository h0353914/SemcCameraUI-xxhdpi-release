.class public interface abstract Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;
.super Ljava/lang/Object;
.source "GestureShutter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/GestureShutter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowHost"
.end annotation


# virtual methods
.method public abstract getGestureShutterView()Lcom/sonyericsson/android/camera/view/GestureShutterView;
.end method

.method public abstract getLeftIconAreaHeight()I
.end method

.method public abstract getPreviewOffset()Landroid/graphics/Point;
.end method

.method public abstract getPreviewSize()Landroid/graphics/Point;
.end method

.method public abstract getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;
.end method

.method public abstract getViewFinderSize()Landroid/graphics/Rect;
.end method

.method public abstract hideGestureShutterView()V
.end method

.method public abstract showGestureShutterView()V
.end method
