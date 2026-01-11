.class Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$4;
.super Ljava/lang/Object;
.source "BaseRecorderController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V
    .locals 0

    .line 1035
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$4;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1057
    const-string v0, "onCompleted() E: Audio Track"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    .line 1058
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$4;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$mplayStopSound(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)V

    .line 1059
    const-string p0, "onCompleted() X: Audio Track"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(J)V
    .locals 0

    .line 1051
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$4;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$mnotifyDuration(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;J)V

    return-void
.end method

.method public onStarted()V
    .locals 4

    .line 1039
    const-string v0, "onStarted() E: Audio Track"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$4;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$fgetmWaitUntilWriting(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$4;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$fgetmWaitUntilWriting(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1042
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$4;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$fgetmWaitUntilWriting(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1045
    :cond_0
    const-string p0, "onStarted() X: Audio Track"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    return-void
.end method
