.class public interface abstract Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;
.super Ljava/lang/Object;
.source "MediaMuxerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MuxerListener"
.end annotation


# virtual methods
.method public abstract onMaxDurationReached()V
.end method

.method public abstract onMaxFileSizeReached()V
.end method

.method public abstract onProgress(J)V
.end method

.method public abstract onStorageFull()V
.end method
