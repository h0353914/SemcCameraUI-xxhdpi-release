.class public abstract Lcom/sonymobile/android/media/internal/Track;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/media/internal/Track$MuxerState;,
        Lcom/sonymobile/android/media/internal/Track$EventHandler;,
        Lcom/sonymobile/android/media/internal/Track$MuxerHandler;,
        Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;,
        Lcom/sonymobile/android/media/internal/Track$States;
    }
.end annotation


# static fields
.field public static final AUDIO_CODEC_MUXER_TRACK_ADDED:I = 0xb

.field public static final CODEC_ERROR:I = 0x4

.field public static final CODEC_ERROR_ON_START:I = 0xf4240

.field public static final CODEC_FORMAT_UNSUPPORTED:I = 0x2

.field public static final CODEC_ILLEGAL_STATE:I = 0x3

.field public static final CODEC_UNSUPPORTED:I = 0x1

.field protected static final MSG_AUDIO_CODEC_STOPPED:I = 0x67

.field protected static final MSG_FLUSH_OUTPUT_BUFFERS:I = 0x6e

.field protected static final MSG_HANDLE_INPUT_BUFFER:I = 0x66

.field protected static final MSG_PAUSE:I = 0x5

.field protected static final MSG_PREPARE:I = 0x3

.field protected static final MSG_QUEUE_OUTPUT_BUFFER:I = 0x69

.field protected static final MSG_RELEASE:I = 0x4

.field protected static final MSG_RELEASE_AUDIO_RECORDER:I = 0x6c

.field protected static final MSG_RESET:I = 0x7

.field protected static final MSG_RESUME:I = 0x6

.field protected static final MSG_START:I = 0x1

.field protected static final MSG_START_AUDIO_RECORDER:I = 0x6d

.field protected static final MSG_STOP:I = 0x2

.field protected static final MSG_STOP_AUDIO_RECORDER:I = 0x6b

.field protected static final MSG_TIME_OUT_OUTPUT_BUFFER_RECEIVE:I = 0x6f

.field protected static final MSG_VIDEO_CODEC_STOPPED:I = 0x65

.field protected static final MSG_WRITE_OUTPUT_BUFFER:I = 0x68

.field private static final TAG:Ljava/lang/String; = "Track"

.field public static final UNKNOWN:I = 0x0

.field public static final VIDEO_CODEC_MUXER_TRACK_ADDED:I = 0xa


# instance fields
.field protected mBufferList:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

.field protected mEncoder:Landroid/media/MediaCodec;

.field protected mEncodingBitRate:I

.field protected mEventHandler:Lcom/sonymobile/android/media/internal/Track$EventHandler;

.field protected mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

.field protected mIsPauseLatchDown:Z

.field protected mMuxerState:Lcom/sonymobile/android/media/internal/Track$MuxerState;

.field protected mMuxerTrackIndex:I

.field protected mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

.field protected mOperatingRate:I

.field protected mPauseLatch:Ljava/util/concurrent/CountDownLatch;

.field protected mState:Lcom/sonymobile/android/media/internal/Track$States;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1e8480

    .line 77
    iput v0, p0, Lcom/sonymobile/android/media/internal/Track;->mEncodingBitRate:I

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/sonymobile/android/media/internal/Track;->mOperatingRate:I

    .line 89
    sget-object v0, Lcom/sonymobile/android/media/internal/Track$MuxerState;->IDLE:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/Track;->mMuxerState:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lcom/sonymobile/android/media/internal/Track;->mMuxerTrackIndex:I

    return-void
.end method


# virtual methods
.method protected checkFormat(Landroid/media/MediaCodecList;Landroid/media/MediaFormat;Ljava/lang/String;)Z
    .locals 5

    .line 252
    invoke-virtual {p1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    .line 254
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    if-nez v1, :cond_2

    .line 255
    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v2

    move v3, p1

    .line 256
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    if-nez v1, :cond_1

    .line 257
    aget-object v4, v2, v3

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    aget-object v1, p0, v0

    .line 259
    invoke-virtual {v1, p3}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    .line 260
    invoke-virtual {v1, p2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFormatSupported(Landroid/media/MediaFormat;)Z

    move-result v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method protected abstract doPause()V
.end method

.method protected abstract doPrepare()V
.end method

.method protected abstract doRelease()V
.end method

.method protected abstract doReset()V
.end method

.method protected abstract doResume(Ljava/util/concurrent/CountDownLatch;)V
.end method

.method protected abstract doStart()V
.end method

.method protected abstract doStop()V
.end method

.method protected abstract doWriteOutputBuffer()V
.end method

.method protected isMuxerStarted()Z
    .locals 1

    .line 228
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/Track;->mMuxerState:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    sget-object v0, Lcom/sonymobile/android/media/internal/Track$MuxerState;->STARTED:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pause(Ljava/util/concurrent/CountDownLatch;Z)V
    .locals 1

    .line 133
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/Track;->mPauseLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x0

    .line 134
    iput-boolean p1, p0, Lcom/sonymobile/android/media/internal/Track;->mIsPauseLatchDown:Z

    .line 135
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/Track;->mMuxerState:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    sget-object v0, Lcom/sonymobile/android/media/internal/Track$MuxerState;->IDLE:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 138
    iget-object p1, p0, Lcom/sonymobile/android/media/internal/Track;->mPauseLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lcom/sonymobile/android/media/internal/Track;->mIsPauseLatchDown:Z

    .line 141
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/Track;->mEventHandler:Lcom/sonymobile/android/media/internal/Track$EventHandler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/internal/Track$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public prepare()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/Track;->mEventHandler:Lcom/sonymobile/android/media/internal/Track$EventHandler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/media/internal/Track$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonymobile/android/media/internal/HandlerHelper;->sendMessageAndAwaitResponse(Landroid/os/Message;)Ljava/lang/Object;

    return-void
.end method

.method public release()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    iget-object v1, p0, Lcom/sonymobile/android/media/internal/Track;->mEventHandler:Lcom/sonymobile/android/media/internal/Track$EventHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/media/internal/Track$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/media/internal/HandlerHelper;->sendMessageAndAwaitResponse(Landroid/os/Message;)Ljava/lang/Object;

    .line 172
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/Track;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/internal/HandlerHelper;->releaseAllLocks()V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/Track;->mEventHandler:Lcom/sonymobile/android/media/internal/Track$EventHandler;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/media/internal/Track$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonymobile/android/media/internal/HandlerHelper;->sendMessageAndAwaitResponse(Landroid/os/Message;)Ljava/lang/Object;

    return-void
.end method

.method public resume(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 179
    iget-object p0, p0, Lcom/sonymobile/android/media/internal/Track;->mEventHandler:Lcom/sonymobile/android/media/internal/Track$EventHandler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/android/media/internal/Track$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setClock(Lcom/sonymobile/android/media/internal/ClockInterface;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/Track;->mClock:Lcom/sonymobile/android/media/internal/ClockInterface;

    return-void
.end method

.method public setEncodingBitrate(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/sonymobile/android/media/internal/Track;->mEncodingBitRate:I

    return-void
.end method

.method public setMediaMuxer(Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/Track;->mMuxerWrapper:Lcom/sonymobile/android/media/internal/MediaMuxerWrapper;

    return-void
.end method

.method public setMediaMuxerStarted()V
    .locals 1

    .line 203
    sget-object v0, Lcom/sonymobile/android/media/internal/Track$MuxerState;->STARTED:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/Track;->mMuxerState:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    return-void
.end method

.method public setMediaMuxerStopped()V
    .locals 1

    .line 220
    sget-object v0, Lcom/sonymobile/android/media/internal/Track$MuxerState;->STOPPED:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    iput-object v0, p0, Lcom/sonymobile/android/media/internal/Track;->mMuxerState:Lcom/sonymobile/android/media/internal/Track$MuxerState;

    return-void
.end method

.method public setOperatingRate(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/sonymobile/android/media/internal/Track;->mOperatingRate:I

    return-void
.end method

.method public start()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/Track;->mEventHandler:Lcom/sonymobile/android/media/internal/Track$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/media/internal/Track$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonymobile/android/media/internal/HandlerHelper;->sendMessageAndAwaitResponse(Landroid/os/Message;)Ljava/lang/Object;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/sonymobile/android/media/internal/Track;->mHandlerHelper:Lcom/sonymobile/android/media/internal/HandlerHelper;

    iget-object p0, p0, Lcom/sonymobile/android/media/internal/Track;->mEventHandler:Lcom/sonymobile/android/media/internal/Track$EventHandler;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/media/internal/Track$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonymobile/android/media/internal/HandlerHelper;->sendMessageAndAwaitResponse(Landroid/os/Message;)Ljava/lang/Object;

    return-void
.end method
