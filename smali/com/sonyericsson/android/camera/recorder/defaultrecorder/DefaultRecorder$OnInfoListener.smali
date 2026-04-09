.class Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;
.super Ljava/lang/Object;
.source "DefaultRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnInfoListener"
.end annotation


# static fields
.field private static final MEDIA_RECORDER_INFO_KIND_MASK:I = 0xf

.field private static final MEDIA_RECORDER_INFO_KIND_SHIFT:I = 0x1c

.field private static final MEDIA_RECORDER_INFO_KIND_VIDEO:I = 0x1

.field private static final MEDIA_RECORDER_INFO_KIND_VIDEO_AUDIO:I = 0x2

.field private static final MEDIA_RECORDER_INFO_MASK:I = 0xfffffff


# instance fields
.field private final mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

.field private mIsAudioTrackStarted:Z

.field private mIsVideoTrackStarted:Z

.field private final mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

.field private final mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    .line 481
    iput-object p3, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    .line 482
    iput-object p4, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    const/4 p1, 0x0

    .line 483
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mIsAudioTrackStarted:Z

    .line 484
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mIsVideoTrackStarted:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$1;)V
    .locals 0

    .line 463
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;-><init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;)V

    return-void
.end method

.method private onCompleted(I)V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$300(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 529
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;->onCompleted()V

    goto :goto_0

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$300(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 532
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;->onCompleted()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onInfo(Lcom/sonymobile/android/media/MediaRecorder;II)V
    .locals 0

    const p1, 0xfffffff

    and-int/2addr p1, p2

    shr-int/lit8 p2, p2, 0x1c

    and-int/lit8 p2, p2, 0xf

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 502
    :sswitch_0
    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->onProgress(II)V

    goto :goto_0

    .line 497
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->onCompleted(I)V

    goto :goto_0

    .line 512
    :sswitch_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;->onMaxFileSizeReached()V

    goto :goto_0

    .line 507
    :sswitch_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mOnMaxReachedListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnMaxReachedListener;->onMaxDurationReached()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x320 -> :sswitch_3
        0x321 -> :sswitch_2
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method

.method private onProgress(II)V
    .locals 4

    .line 537
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$300(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 541
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mIsAudioTrackStarted:Z

    if-nez p2, :cond_0

    .line 542
    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;->onStarted()V

    .line 543
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mIsAudioTrackStarted:Z

    .line 545
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$400(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;)J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {p2, v0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$402(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;J)J

    .line 546
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mAudioTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$400(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;->onProgress(J)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_4

    .line 550
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mIsVideoTrackStarted:Z

    if-nez p1, :cond_4

    .line 551
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;->onStarted()V

    .line 552
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mIsVideoTrackStarted:Z

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_4

    .line 559
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mIsVideoTrackStarted:Z

    if-nez p2, :cond_3

    .line 560
    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    invoke-interface {p2}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;->onStarted()V

    .line 561
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mIsVideoTrackStarted:Z

    .line 563
    :cond_3
    iget-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$400(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;)J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {p2, v0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$402(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;J)J

    .line 564
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->mVideoTrackListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$400(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;->onProgress(J)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    const/4 p1, 0x0

    .line 523
    check-cast p1, Lcom/sonymobile/android/media/MediaRecorder;

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnInfoListener;->onInfo(Lcom/sonymobile/android/media/MediaRecorder;II)V

    return-void
.end method
