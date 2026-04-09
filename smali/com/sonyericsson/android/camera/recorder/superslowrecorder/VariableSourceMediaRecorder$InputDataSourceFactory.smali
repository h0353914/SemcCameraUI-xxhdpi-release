.class public interface abstract Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;
.super Ljava/lang/Object;
.source "VariableSourceMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputDataSourceFactory"
.end annotation


# virtual methods
.method public abstract createAudioSource(Landroid/media/MediaCodec;Landroid/media/CamcorderProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;
.end method

.method public abstract createVideoSource(Landroid/media/MediaCodec;Landroid/media/CamcorderProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;
.end method
