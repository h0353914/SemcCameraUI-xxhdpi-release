.class Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;
.super Ljava/lang/Object;
.source "MediaEncoder.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaMuxerWrapper$MuxerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncodingStateNotifier"
.end annotation


# instance fields
.field private final mStateListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;->mStateListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;

    return-void
.end method


# virtual methods
.method public notifyOnError(I)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;->mStateListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;->onError(I)V

    return-void
.end method

.method public notifyOnFinished(Z)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;->mStateListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;->onFinished(Z)V

    return-void
.end method

.method public notifyOnStarted()V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;->mStateListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;->onStarted()V

    return-void
.end method

.method public onMaxDurationReached()V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;->mStateListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;->onMaxDurationReached()V

    return-void
.end method

.method public onMaxFileSizeReached()V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;->mStateListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;->onMaxFileSizeReached()V

    return-void
.end method

.method public onProgress(J)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;->mStateListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;

    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;->onProgress(J)V

    return-void
.end method

.method public onStorageFull()V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$EncodingStateNotifier;->mStateListener:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$StateListener;->onStorageFull()V

    return-void
.end method
