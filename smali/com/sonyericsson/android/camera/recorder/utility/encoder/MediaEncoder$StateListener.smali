.class public interface abstract Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;
.super Ljava/lang/Object;
.source "MediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateListener"
.end annotation


# virtual methods
.method public abstract onError(I)V
.end method

.method public abstract onFinished(Z)V
.end method

.method public abstract onMaxDurationReached()V
.end method

.method public abstract onMaxFileSizeReached()V
.end method

.method public abstract onProgress(J)V
.end method

.method public abstract onStarted()V
.end method

.method public abstract onStorageFull()V
.end method
