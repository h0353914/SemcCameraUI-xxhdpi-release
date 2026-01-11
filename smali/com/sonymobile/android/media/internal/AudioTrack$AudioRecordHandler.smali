.class Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;
.super Landroid/os/Handler;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/media/internal/AudioTrack;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/media/internal/AudioTrack;Landroid/os/Looper;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    .line 516
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private doHandleInputBuffer(I)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 527
    iget-object v2, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v2, v2, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 528
    iget-object v3, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmAudioDurationUs(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v3

    iget-object v5, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v5}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmAudioOffset(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v5

    add-long v4, v3, v5

    .line 529
    iget-object v3, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmAudioRecorder(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v3

    iget-object v6, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v6}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmInputBufferSize(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v6

    invoke-virtual {v3, v2, v6}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 530
    iget-object v6, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v6}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmNumAudioChannels(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v6

    div-int v6, v3, v6

    iget-object v7, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v7}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmBytesPerSample(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v7

    div-int/2addr v6, v7

    const-wide/32 v7, 0xf4240

    int-to-long v9, v6

    mul-long/2addr v9, v7

    .line 531
    iget-object v6, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v6}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmAudioSamplingRate(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v6

    int-to-long v6, v6

    div-long/2addr v9, v6

    .line 533
    iget-object v6, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v6, v6, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v7, Lcom/sonymobile/android/media/internal/Track$States;->PAUSED:Lcom/sonymobile/android/media/internal/Track$States;

    const-string v8, "Read audio data is empty."

    const-string v11, "AudioTrack"

    const/4 v12, 0x4

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v6, v7, :cond_3

    iget-object v6, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v6}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmAudioDurationUs(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v6

    add-long/2addr v6, v9

    iget-object v15, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v15, v15, Lcom/sonymobile/android/media/internal/AudioTrack;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    .line 534
    invoke-interface {v15}, Lcom/sonymobile/android/media/internal/ClockInterface;->getDurationAtPauseUs()J

    move-result-wide v15

    cmp-long v6, v6, v15

    if-lez v6, :cond_3

    .line 535
    iget-object v4, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-boolean v4, v4, Lcom/sonymobile/android/media/internal/AudioTrack;->mIsPauseLatchDown:Z

    if-nez v4, :cond_0

    .line 536
    iget-object v4, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v4, v4, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 537
    iget-object v4, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iput-boolean v13, v4, Lcom/sonymobile/android/media/internal/AudioTrack;->mIsPauseLatchDown:Z

    :cond_0
    if-eqz v2, :cond_9

    .line 540
    iget-object v4, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v4}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmEosFlagged(Lcom/sonymobile/android/media/internal/AudioTrack;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 541
    iget-object v4, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v4}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmInputBufferSize(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 542
    iget-object v4, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v4, v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fputmInputBufferSize(Lcom/sonymobile/android/media/internal/AudioTrack;I)V

    :cond_1
    if-gez v3, :cond_2

    .line 545
    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmCallback(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v13, v12, v14}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 551
    :cond_2
    iget-object v2, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmAudioRecordHandler(Lcom/sonymobile/android/media/internal/AudioTrack;)Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v3, v1, v14}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 553
    iget-object v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmAudioRecordHandler(Lcom/sonymobile/android/media/internal/AudioTrack;)Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 555
    :cond_3
    iget-object v6, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v6, v6, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v7, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    if-eq v6, v7, :cond_9

    if-eqz v2, :cond_9

    .line 556
    iget-object v6, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v6}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmEosFlagged(Lcom/sonymobile/android/media/internal/AudioTrack;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 557
    iget-object v6, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v6}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmInputBufferSize(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v6

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    if-le v6, v7, :cond_4

    .line 558
    iget-object v6, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fputmInputBufferSize(Lcom/sonymobile/android/media/internal/AudioTrack;I)V

    .line 562
    :cond_4
    iget-object v6, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v6}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmStartVolumeDelayUs(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_5

    .line 563
    new-array v6, v3, [B

    .line 564
    invoke-static {v6, v14}, Ljava/util/Arrays;->fill([BB)V

    .line 565
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 567
    :cond_5
    iget-object v2, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmAudioDurationUs(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v6

    add-long/2addr v6, v9

    invoke-static {v2, v6, v7}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fputmAudioDurationUs(Lcom/sonymobile/android/media/internal/AudioTrack;J)V

    .line 569
    iget-object v2, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v2, v2, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v6, Lcom/sonymobile/android/media/internal/Track$States;->STOPPING:Lcom/sonymobile/android/media/internal/Track$States;

    if-ne v2, v6, :cond_6

    .line 574
    iget-object v2, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v2, v13}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fputmEosFlagged(Lcom/sonymobile/android/media/internal/AudioTrack;Z)V

    move v6, v12

    if-gez v3, :cond_8

    move v3, v14

    goto :goto_0

    :cond_6
    if-gez v3, :cond_7

    .line 580
    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmCallback(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v13, v12, v14}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_7
    move v6, v14

    .line 586
    :cond_8
    :goto_0
    iget-object v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    move/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_9
    :goto_1
    return-void
.end method

.method private doReleaseAudioRecorder()V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmAudioRecorder(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmAudioRecorder(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 633
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fputmAudioRecorder(Lcom/sonymobile/android/media/internal/AudioTrack;Landroid/media/AudioRecord;)V

    :cond_0
    return-void
.end method

.method private doStartAudioRecorder()V
    .locals 5

    .line 595
    const-string v0, "AudioTrack"

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fputmEosFlagged(Lcom/sonymobile/android/media/internal/AudioTrack;Z)V

    .line 596
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fputmFirstCodecFrame(Lcom/sonymobile/android/media/internal/AudioTrack;Z)V

    const/4 v1, 0x4

    .line 598
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmAudioRecorder(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 600
    iget-object v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmAudioRecorder(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 601
    const-string v3, "Could not start audio recorder, Recording state is STOPPED"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmCallback(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object v3

    const v4, 0xf4240

    invoke-virtual {v3, v2, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 603
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 607
    :catch_0
    const-string v3, "Could not start audio recorder, illegal state"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmCallback(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 612
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    sget-object v0, Lcom/sonymobile/android/media/internal/Track$States;->STARTED:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    return-void
.end method

.method private doStopAudioRecorder()V
    .locals 4

    .line 617
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmAudioRecorder(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmAudioRecorder(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 621
    :catch_0
    const-string v0, "AudioTrack"

    const-string v1, "Could not stop audio recorder, illegal state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->-$$Nest$fgetmCallback(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 626
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    sget-object v0, Lcom/sonymobile/android/media/internal/Track$States;->STOPPING:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 639
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 648
    :pswitch_0
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->doStartAudioRecorder()V

    .line 650
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    .line 651
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 652
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 653
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 666
    :pswitch_1
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->doReleaseAudioRecorder()V

    .line 668
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    .line 669
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 670
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 671
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 657
    :pswitch_2
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->doStopAudioRecorder()V

    .line 659
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    .line 660
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 661
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 662
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 642
    :cond_0
    :try_start_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->doHandleInputBuffer(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
