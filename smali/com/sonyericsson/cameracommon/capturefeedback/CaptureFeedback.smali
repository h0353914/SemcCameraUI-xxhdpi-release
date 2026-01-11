.class public interface abstract Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;
.super Ljava/lang/Object;
.source "CaptureFeedback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback$OnFirstFrameDrawnListener;
    }
.end annotation


# virtual methods
.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract release()V
.end method

.method public abstract setOnFirstFrameDrawnListener(Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback$OnFirstFrameDrawnListener;)V
.end method

.method public abstract start(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;)V
.end method
