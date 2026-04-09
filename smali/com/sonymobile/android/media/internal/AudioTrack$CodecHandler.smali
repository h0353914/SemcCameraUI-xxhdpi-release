.class Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;
.super Landroid/os/Handler;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CodecHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/media/internal/AudioTrack;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/media/internal/AudioTrack;Landroid/os/Looper;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    .line 682
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private addTrack()V
    .locals 3

    .line 739
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mMuxerTrackIndex:I

    if-gez v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v1, v1, Lcom/sonymobile/android/media/internal/AudioTrack;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v2, v2, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mMuxerTrackIndex:I

    .line 743
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {p0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$900(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 744
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private doQueueOutputBuffer(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1200(Lcom/sonymobile/android/media/internal/AudioTrack;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 698
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 700
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->addTrack()V

    .line 701
    iget-object v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v3, v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1202(Lcom/sonymobile/android/media/internal/AudioTrack;Z)Z

    if-eqz v0, :cond_1

    .line 704
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void

    .line 709
    :cond_1
    new-instance v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;-><init>(ILandroid/media/MediaCodec$BufferInfo;)V

    .line 711
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object p2, p2, Lcom/sonymobile/android/media/internal/AudioTrack;->mMuxerState:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    sget-object v3, Lcom/sonymobile/android/media/internal/Track$MuxerState;->IDLE:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    if-ne p2, v3, :cond_3

    .line 712
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object p2, p2, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 715
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 716
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 717
    iget-object v3, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 718
    iput-boolean v1, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->containsCopiedBuffer:Z

    .line 724
    :cond_2
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object p2, p2, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 726
    :cond_3
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object p1, p1, Lcom/sonymobile/android/media/internal/AudioTrack;->mBufferList:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 727
    iget-object p1, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_4

    .line 731
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {p0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1300(Lcom/sonymobile/android/media/internal/AudioTrack;)Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

    move-result-object p0

    const/16 p1, 0x6e

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 733
    :cond_4
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {p0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1300(Lcom/sonymobile/android/media/internal/AudioTrack;)Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

    move-result-object p0

    const/16 p1, 0x68

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 750
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 753
    :cond_0
    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/android/media/internal/AudioTrack$CodecHandler;->doQueueOutputBuffer(ILandroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
