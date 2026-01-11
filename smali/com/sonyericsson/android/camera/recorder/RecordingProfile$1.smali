.class Lcom/sonyericsson/android/camera/recorder/RecordingProfile$1;
.super Landroid/media/MediaCodec$Callback;
.source "RecordingProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->setupEncoder(Landroid/media/MediaFormat;Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 741
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 748
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->-$$Nest$sfgetmEncoderLock()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    .line 749
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->-$$Nest$sfgetsEncoder()Landroid/media/MediaCodec;

    move-result-object p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 750
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 752
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method
