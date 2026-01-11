.class public Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;
.super Ljava/lang/Object;
.source "VideoFrameSource.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;


# instance fields
.field private final mEncoder:Landroid/media/MediaCodec;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;->mEncoder:Landroid/media/MediaCodec;

    return-void
.end method


# virtual methods
.method public createInputSurface()Landroid/view/Surface;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    return-void
.end method
