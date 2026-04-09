.class public interface abstract Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;
.super Ljava/lang/Object;
.source "RecorderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/RecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecorderListener"
.end annotation


# virtual methods
.method public abstract onRecordError(II)V
.end method

.method public abstract onRecordFinished(Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
.end method

.method public abstract onRecordProgress(J)V
.end method

.method public abstract setSavingRequestBuilder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V
.end method
