.class Lcom/sonymobile/android/media/internal/VideoTrack$VideoEncoderCallback;
.super Landroid/media/MediaCodec$Callback;
.source "VideoTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/VideoTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoEncoderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/media/internal/VideoTrack;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/media/internal/VideoTrack;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$VideoEncoderCallback;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/media/internal/VideoTrack;Lcom/sonymobile/android/media/internal/VideoTrack$VideoEncoderCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/android/media/internal/VideoTrack$VideoEncoderCallback;-><init>(Lcom/sonymobile/android/media/internal/VideoTrack;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    .line 590
    const-string p1, "VideoTrack"

    const-string v0, "Error from encoder"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$VideoEncoderCallback;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {p0}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmCallback(Lcom/sonymobile/android/media/internal/VideoTrack;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x4

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 592
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 585
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$VideoEncoderCallback;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {p0}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmCodecHandler(Lcom/sonymobile/android/media/internal/VideoTrack;)Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;

    move-result-object p0

    const/16 p1, 0x69

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method
