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
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 528
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$100(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$200(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v3

    add-long v9, v1, v3

    .line 529
    iget-object v1, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$400(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$300(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v1

    .line 530
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$500(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v2

    div-int v2, v1, v2

    iget-object v3, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$600(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v3

    div-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v4, v2

    .line 531
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$700(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v4, v2

    .line 533
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v2, v2, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v3, Lcom/sonymobile/android/media/internal/Track$States;->PAUSED:Lcom/sonymobile/android/media/internal/Track$States;

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    .line 534
    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$100(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v11, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v11, v11, Lcom/sonymobile/android/media/internal/AudioTrack;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    invoke-interface {v11}, Lcom/sonymobile/android/media/internal/ClockInterface;->getDurationAtPauseUs()J

    move-result-wide v11

    cmp-long v2, v2, v11

    if-lez v2, :cond_3

    .line 535
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-boolean v2, v2, Lcom/sonymobile/android/media/internal/AudioTrack;->mIsPauseLatchDown:Z

    if-nez v2, :cond_0

    .line 536
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v2, v2, Lcom/sonymobile/android/media/internal/AudioTrack;->mPauseLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 537
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iput-boolean v7, v2, Lcom/sonymobile/android/media/internal/AudioTrack;->mIsPauseLatchDown:Z

    :cond_0
    if-eqz v0, :cond_9

    .line 540
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$800(Lcom/sonymobile/android/media/internal/AudioTrack;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 541
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$300(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 542
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v2, v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$302(Lcom/sonymobile/android/media/internal/AudioTrack;I)I

    :cond_1
    if-gez v1, :cond_2

    const-string p1, "AudioTrack"

    const-string v0, "Read audio data is empty."

    .line 545
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {p0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$900(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v7, v6, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 547
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1000(Lcom/sonymobile/android/media/internal/AudioTrack;)Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1, v8}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 553
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {p0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1000(Lcom/sonymobile/android/media/internal/AudioTrack;)Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;

    move-result-object p0

    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 555
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v2, v2, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v3, Lcom/sonymobile/android/media/internal/Track$States;->STOPPED:Lcom/sonymobile/android/media/internal/Track$States;

    if-eq v2, v3, :cond_9

    if-eqz v0, :cond_9

    .line 556
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$800(Lcom/sonymobile/android/media/internal/AudioTrack;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 557
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$300(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 558
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$302(Lcom/sonymobile/android/media/internal/AudioTrack;I)I

    .line 562
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1100(Lcom/sonymobile/android/media/internal/AudioTrack;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v9, v2

    if-gez v2, :cond_5

    .line 563
    new-array v2, v1, [B

    .line 564
    invoke-static {v2, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 565
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 567
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v2, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v2}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$100(Lcom/sonymobile/android/media/internal/AudioTrack;)J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$102(Lcom/sonymobile/android/media/internal/AudioTrack;J)J

    .line 569
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    sget-object v2, Lcom/sonymobile/android/media/internal/Track$States;->STOPPING:Lcom/sonymobile/android/media/internal/Track$States;

    if-ne v0, v2, :cond_7

    .line 574
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v0, v7}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$802(Lcom/sonymobile/android/media/internal/AudioTrack;Z)Z

    if-gez v1, :cond_6

    goto :goto_0

    :cond_6
    move v8, v1

    :goto_0
    move v11, v6

    goto :goto_1

    :cond_7
    if-gez v1, :cond_8

    const-string p1, "AudioTrack"

    const-string v0, "Read audio data is empty."

    .line 580
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {p0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$900(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v7, v6, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 582
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_8
    move v11, v8

    move v8, v1

    .line 586
    :goto_1
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v5, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    move v6, p1

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_9
    :goto_2
    return-void
.end method

.method private doReleaseAudioRecorder()V
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$400(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$400(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 626
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$402(Lcom/sonymobile/android/media/internal/AudioTrack;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    :cond_0
    return-void
.end method

.method private doStartAudioRecorder()V
    .locals 4

    .line 595
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$802(Lcom/sonymobile/android/media/internal/AudioTrack;Z)Z

    .line 596
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$1202(Lcom/sonymobile/android/media/internal/AudioTrack;Z)Z

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$400(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AudioTrack"

    const-string v2, "Could not start audio recorder, illegal state"

    .line 600
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$900(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 604
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    iget-object v0, v0, Lcom/sonymobile/android/media/internal/AudioTrack;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 605
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    sget-object v0, Lcom/sonymobile/android/media/internal/Track$States;->STARTED:Lcom/sonymobile/android/media/internal/Track$States;

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack;->mState:Lcom/sonymobile/android/media/internal/Track$States;

    return-void
.end method

.method private doStopAudioRecorder()V
    .locals 4

    .line 610
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$400(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$400(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AudioTrack"

    const-string v1, "Could not stop audio recorder, illegal state"

    .line 614
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->this$0:Lcom/sonymobile/android/media/internal/AudioTrack;

    invoke-static {v0}, Lcom/sonymobile/android/media/internal/AudioTrack;->access$900(Lcom/sonymobile/android/media/internal/AudioTrack;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 619
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

    .line 632
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 641
    :pswitch_0
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->doStartAudioRecorder()V

    .line 643
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    .line 644
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 645
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 646
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 659
    :pswitch_1
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->doReleaseAudioRecorder()V

    .line 661
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    .line 662
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 663
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 664
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 650
    :pswitch_2
    invoke-direct {p0}, Lcom/sonymobile/android/media/internal/AudioTrack$AudioRecordHandler;->doStopAudioRecorder()V

    .line 652
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    .line 653
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 654
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 655
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 635
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
