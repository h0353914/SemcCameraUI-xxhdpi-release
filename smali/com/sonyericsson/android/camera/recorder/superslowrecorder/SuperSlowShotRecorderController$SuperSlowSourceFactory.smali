.class Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$SuperSlowSourceFactory;
.super Ljava/lang/Object;
.source "SuperSlowShotRecorderController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuperSlowSourceFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$SuperSlowSourceFactory-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$SuperSlowSourceFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createAudioSource(Landroid/media/MediaCodec;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;
    .locals 0

    .line 383
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This recorder doesn\'t support audio track."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createVideoSource(Landroid/media/MediaCodec;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;
    .locals 0

    .line 378
    new-instance p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;-><init>(Landroid/media/MediaCodec;)V

    return-object p0
.end method
