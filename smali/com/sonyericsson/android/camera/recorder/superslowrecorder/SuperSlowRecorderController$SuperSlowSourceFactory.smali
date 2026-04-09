.class Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;
.super Ljava/lang/Object;
.source "SuperSlowRecorderController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$InputDataSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuperSlowSourceFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$1;)V
    .locals 0

    .line 467
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)V

    return-void
.end method


# virtual methods
.method public createAudioSource(Landroid/media/MediaCodec;Landroid/media/CamcorderProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;
    .locals 9

    .line 477
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    new-instance v8, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    iget v3, p2, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iget v4, p2, Landroid/media/CamcorderProfile;->audioChannels:I

    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    .line 478
    invoke-static {p2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->access$1100(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)I

    move-result v6

    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    .line 479
    invoke-static {p2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->access$1200(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)I

    move-result v7

    const/4 v5, 0x2

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;-><init>(Landroid/media/MediaCodec;IIIII)V

    .line 477
    invoke-static {v0, v8}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->access$1002(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    .line 480
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->access$1000(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    move-result-object p0

    return-object p0
.end method

.method public createVideoSource(Landroid/media/MediaCodec;Landroid/media/CamcorderProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;
    .locals 0

    .line 472
    new-instance p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;-><init>(Landroid/media/MediaCodec;)V

    return-object p0
.end method
