.class Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$3;
.super Ljava/lang/Object;
.source "MediaEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 273
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$3;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$3;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->-$$Nest$fgetmRequestFinishSignal(Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->-$$Nest$sfgetTRACE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Start finalization of recording."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 293
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder$3;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/MediaEncoder;->stopInputDataSource()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    const-string/jumbo p0, "stopInputDataSource is interrupted"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_0
    return-void

    .line 286
    :catch_1
    const-string p0, "mRequestFinishSignal is interrupted"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method
