.class public interface abstract Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;
.super Ljava/lang/Object;
.source "RecorderInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/RecorderInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecordTrackListener"
.end annotation


# virtual methods
.method public abstract onCompleted()V
.end method

.method public abstract onProgress(J)V
.end method

.method public abstract onStarted()V
.end method
