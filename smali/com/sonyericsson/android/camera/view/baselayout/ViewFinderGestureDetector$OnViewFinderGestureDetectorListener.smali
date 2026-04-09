.class public interface abstract Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;
.super Ljava/lang/Object;
.source "ViewFinderGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnViewFinderGestureDetectorListener"
.end annotation


# virtual methods
.method public abstract onDown(Landroid/view/MotionEvent;)V
.end method

.method public abstract onDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
.end method

.method public abstract onFinishDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)V
.end method

.method public abstract onStartDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
.end method
