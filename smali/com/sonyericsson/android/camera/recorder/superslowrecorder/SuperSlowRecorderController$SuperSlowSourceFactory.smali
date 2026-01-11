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

    .line 462
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)V

    return-void
.end method


# virtual methods
.method public createAudioSource(Landroid/media/MediaCodec;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;
    .locals 9

    .line 472
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    new-instance v8, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    .line 474
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getAudioSampleRate()I

    move-result v3

    .line 475
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getAudioChannels()I

    move-result v4

    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->-$$Nest$fgetmMuteDurationInMillis(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)I

    move-result v6

    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->-$$Nest$fgetmSilentDurationInMillis(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)I

    move-result v7

    const/4 v5, 0x2

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;-><init>(Landroid/media/MediaCodec;IIIII)V

    invoke-static {v0, v8}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->-$$Nest$fputmMutableAudioSource(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;)V

    .line 479
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$SuperSlowSourceFactory;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->-$$Nest$fgetmMutableAudioSource(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    move-result-object p0

    return-object p0
.end method

.method public createVideoSource(Landroid/media/MediaCodec;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;
    .locals 0

    .line 467
    new-instance p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/VideoFrameSource;-><init>(Landroid/media/MediaCodec;)V

    return-object p0
.end method
