.class Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;
.super Landroid/os/Handler;
.source "VideoTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/VideoTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CodecHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/media/internal/VideoTrack;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/media/internal/VideoTrack;Landroid/os/Looper;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    .line 356
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private addTrack()V
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget v0, v0, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerTrackIndex:I

    if-gez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v1, v0, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v2, v2, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, v0, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerTrackIndex:I

    .line 501
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {p0}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmCallback(Lcom/sonymobile/android/media/internal/VideoTrack;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 502
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private doQueueOutputBuffer(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 9

    .line 370
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmVideoMime(Lcom/sonymobile/android/media/internal/VideoTrack;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmVideoMime(Lcom/sonymobile/android/media/internal/VideoTrack;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "video/3gpp"

    .line 371
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    .line 379
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmFirstCodecConfigFrame(Lcom/sonymobile/android/media/internal/VideoTrack;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->addTrack()V

    .line 382
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object p2, p2, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 383
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {p0, v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fputmFirstCodecConfigFrame(Lcom/sonymobile/android/media/internal/VideoTrack;Z)V

    return-void

    .line 372
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmFirstCodecConfigFrame(Lcom/sonymobile/android/media/internal/VideoTrack;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->addTrack()V

    .line 374
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v0, v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fputmFirstCodecConfigFrame(Lcom/sonymobile/android/media/internal/VideoTrack;Z)V

    .line 388
    :cond_2
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    .line 391
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v3}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmFirstVideoFrameTimeUs(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    if-eqz v0, :cond_4

    .line 394
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v0, v1, v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fputmFirstVideoFrameTimeUs(Lcom/sonymobile/android/media/internal/VideoTrack;J)V

    .line 395
    iput-wide v5, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 402
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->queueBuffer(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void

    .line 406
    :cond_5
    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_6

    .line 410
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->queueBuffer(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void

    .line 416
    :cond_6
    iget-wide v3, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v7, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v7}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmFirstVideoFrameTimeUs(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v7

    sub-long/2addr v3, v7

    .line 417
    iget-object v7, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v7}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmVideoOffset(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v7

    sub-long v7, v3, v7

    iput-wide v7, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 420
    iget-object v7, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v7}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmRecordedDurationAtStopUs(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-lez v5, :cond_7

    iget-wide v5, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v7, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v7}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmRecordedDurationAtStopUs(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_7

    .line 422
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v5, v5, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v6, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    if-eq v5, v6, :cond_7

    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v5, v5, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v6, Lcom/sonymobile/android/media/internal/Track$States;->STOPPING:Lcom/sonymobile/android/media/internal/Track$States;

    if-eq v5, v6, :cond_7

    .line 423
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    sget-object v6, Lcom/sonymobile/android/media/internal/Track$States;->STOPPING:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v6, v5, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    .line 425
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v5, v5, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 429
    :cond_7
    iget v5, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v5, :cond_8

    .line 432
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->queueBuffer(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void

    .line 436
    :cond_8
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v5, v5, Lcom/sonymobile/android/media/internal/VideoTrack;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-interface {v5, v3, v4}, Lcom/sonymobile/android/media/internal/ClockInterface;->isPausedAt(J)Z

    move-result v5

    if-nez v5, :cond_d

    .line 440
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v5}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmPauseResumeFlag(Lcom/sonymobile/android/media/internal/VideoTrack;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 442
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v5, v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fputmWaitForKeyFrame(Lcom/sonymobile/android/media/internal/VideoTrack;Z)V

    .line 443
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v5, v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fputmKeyFrameRequested(Lcom/sonymobile/android/media/internal/VideoTrack;Z)V

    .line 444
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v5, v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fputmPauseResumeFlag(Lcom/sonymobile/android/media/internal/VideoTrack;Z)V

    .line 448
    :cond_9
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v5}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmWaitForKeyFrame(Lcom/sonymobile/android/media/internal/VideoTrack;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 449
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v5}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmKeyFrameRequested(Lcom/sonymobile/android/media/internal/VideoTrack;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 452
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 453
    const-string v6, "request-sync"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    iget-object v6, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v6, v6, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6, v5}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 456
    iget-object v5, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v5, v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fputmKeyFrameRequested(Lcom/sonymobile/android/media/internal/VideoTrack;Z)V

    :cond_a
    if-nez v0, :cond_b

    .line 461
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object p2, p2, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 463
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {p1}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmFrameDropCounter(Lcom/sonymobile/android/media/internal/VideoTrack;)I

    move-result p2

    add-int/2addr p2, v2

    invoke-static {p1, p2}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fputmFrameDropCounter(Lcom/sonymobile/android/media/internal/VideoTrack;I)V

    .line 465
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {p1}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmLastRecordedVideoTimestampUs(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {p0}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmFrameInterval(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fputmLastRecordedVideoTimestampUs(Lcom/sonymobile/android/media/internal/VideoTrack;J)V

    return-void

    .line 469
    :cond_b
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v0, v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fputmWaitForKeyFrame(Lcom/sonymobile/android/media/internal/VideoTrack;Z)V

    .line 472
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmLastRecordedVideoTimestampUs(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmFrameInterval(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 476
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    sub-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fputmVideoOffset(Lcom/sonymobile/android/media/internal/VideoTrack;J)V

    .line 477
    iput-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 482
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->queueBuffer(ILandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_2

    .line 485
    :cond_d
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {p2}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmPauseResumeFlag(Lcom/sonymobile/android/media/internal/VideoTrack;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 488
    iget-object p2, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {p2, v2}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fputmPauseResumeFlag(Lcom/sonymobile/android/media/internal/VideoTrack;Z)V

    .line 492
    :cond_e
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_2
    return-void
.end method

.method private doTimeOutBufferCallback()V
    .locals 4

    .line 542
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmRecordedDurationAtStopUs(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v0, v0, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v1, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v0, v0, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v1, Lcom/sonymobile/android/media/internal/Track$States;->STOPPING:Lcom/sonymobile/android/media/internal/Track$States;

    if-eq v0, v1, :cond_0

    .line 544
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    sget-object v1, Lcom/sonymobile/android/media/internal/Track$States;->STOPPING:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v1, v0, Lcom/sonymobile/android/media/internal/VideoTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Forced stop due to timeout of buffer callback : recording duration at stop = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmRecordedDurationAtStopUs(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , last recorded timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmLastRecordedVideoTimestampUs(Lcom/sonymobile/android/media/internal/VideoTrack;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    :cond_0
    return-void
.end method

.method private queueBuffer(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    .line 507
    new-instance v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;-><init>(ILandroid/media/MediaCodec$BufferInfo;)V

    .line 509
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v1, v1, Lcom/sonymobile/android/media/internal/VideoTrack;->mMuxerState:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    sget-object v2, Lcom/sonymobile/android/media/internal/Track$MuxerState;->IDLE:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    if-ne v1, v2, :cond_2

    .line 510
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v1, v1, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 514
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 515
    iget-object v2, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    .line 516
    iput-boolean v1, v0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->containsCopiedBuffer:Z

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object v1, v1, Lcom/sonymobile/android/media/internal/VideoTrack;->mEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 526
    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/32 v3, 0x989680

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1

    goto :goto_0

    .line 527
    :cond_1
    const-string p0, "VideoTrack"

    const-string p1, "MediaMuxer is timed out."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 532
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-object p1, p1, Lcom/sonymobile/android/media/internal/VideoTrack;->mBufferList:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {p1, v0, v1}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fputmLastRecordedVideoTimestampUs(Lcom/sonymobile/android/media/internal/VideoTrack;J)V

    .line 534
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    .line 535
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {p0}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmMuxerHandler(Lcom/sonymobile/android/media/internal/VideoTrack;)Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

    move-result-object p0

    const/16 p1, 0x6e

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/internal/Track$MuxerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 537
    :cond_3
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->this$0:Lcom/sonymobile/android/media/internal/VideoTrack;

    invoke-static {p0}, Lcom/sonymobile/android/media/internal/VideoTrack;->-$$Nest$fgetmMuxerHandler(Lcom/sonymobile/android/media/internal/VideoTrack;)Lcom/sonymobile/android/media/internal/Track$MuxerHandler;

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

    .line 555
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x69

    if-eq v0, v1, :cond_1

    const/16 p1, 0x6f

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->doTimeOutBufferCallback()V

    goto :goto_0

    .line 557
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/android/media/internal/VideoTrack$CodecHandler;->doQueueOutputBuffer(ILandroid/media/MediaCodec$BufferInfo;)V

    :goto_0
    return-void
.end method
