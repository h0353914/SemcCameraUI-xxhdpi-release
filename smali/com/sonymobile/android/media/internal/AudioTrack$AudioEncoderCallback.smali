.class Lcom/sonymobile/android/media/internal/AudioTrack$AudioEncoderCallback;
.super Landroid/media/MediaCodec$Callback;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioEncoderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/media/internal/AudioTrack;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/media/internal/AudioTrack;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioEncoderCallback;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/media/internal/AudioTrack;Lcom/sonymobile/android/media/internal/AudioTrack$AudioEncoderCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioEncoderCallback;-><init>(Lcom/sonymobile/android/media/internal/AudioTrack;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    .line 795
    const-string p1, "AudioTrack"

    const-string v0, "Error from encoder"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioEncoderCallback;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {p0}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmCallback(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x4

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1

    .line 781
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioEncoderCallback;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {p0}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmAudioRecordHandler(Lcom/sonymobile/android/media/internal/AudioTrack;)Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

    move-result-object p0

    const/16 p1, 0x66

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 782
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 789
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioEncoderCallback;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {p0}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmCodecHandler(Lcom/sonymobile/android/media/internal/AudioTrack;)Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;

    move-result-object p0

    const/16 p1, 0x69

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 790
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method
