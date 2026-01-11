.class public interface abstract Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;
.super Ljava/lang/Object;
.source "SideTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGestureListener"
.end annotation


# virtual methods
.method public abstract onCancel(Landroid/view/MotionEvent;)V
.end method

.method public abstract onDown(ILandroid/view/MotionEvent;)V
.end method

.method public abstract onFling(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
.end method

.method public abstract onGestureFinished(I)V
.end method

.method public abstract onLongPress(ILandroid/view/MotionEvent;)V
.end method

.method public abstract onScroll(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
.end method

.method public abstract onUp(ILandroid/view/MotionEvent;)V
.end method
