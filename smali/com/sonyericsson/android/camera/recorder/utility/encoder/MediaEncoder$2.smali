.class Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$2;
.super Ljava/lang/Object;
.source "MediaEncoder.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/utility/encoder/EncodedDataWriteTask$EncoderStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$2;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncoderFinished()V
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$2;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->-$$Nest$fgetmEncoderFinishSignal(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onEncoderFormatChanged(Landroid/media/MediaFormat;)V
    .locals 0

    .line 258
    iget-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$2;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->-$$Nest$fgetmEncoderFormatChangedSignal(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 261
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$2;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->-$$Nest$fgetmMuxerStartedSignal(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    const-string p0, "mMuxerStartedSignal is interrupted."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_0
    return-void
.end method
