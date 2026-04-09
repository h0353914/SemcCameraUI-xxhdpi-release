.class public interface abstract Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;
.super Ljava/lang/Object;
.source "SideTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDoubleTapListener"
.end annotation


# virtual methods
.method public abstract onDoubleTap(ILandroid/view/MotionEvent;)V
.end method

.method public abstract onDoubleTapForLearning(Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;)V
.end method

.method public abstract onSingleTapConfirmed(ILandroid/view/MotionEvent;)V
.end method
