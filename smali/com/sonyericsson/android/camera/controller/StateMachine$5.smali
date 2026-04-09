.class Lcom/sonyericsson/android/camera/controller/StateMachine$5;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mVideoSavingRequestBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 0

    .line 7847
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 7848
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->mVideoSavingRequestBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    return-void
.end method

.method static synthetic access$14700(Lcom/sonyericsson/android/camera/controller/StateMachine$5;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;
    .locals 0

    .line 7847
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->mVideoSavingRequestBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    return-object p0
.end method


# virtual methods
.method public onRecordError(II)V
    .locals 3

    const/4 v0, 0x1

    .line 7870
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR:MediaRecorder ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 7872
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/sonyericsson/android/camera/controller/StateMachine$5$2;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$5$2;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$5;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRecordFinished(Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
    .locals 4

    .line 7892
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7898
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$5;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRecordProgress(J)V
    .locals 4

    .line 7858
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke progressMillis:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    long-to-int p1, p1

    .line 7860
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$5$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$5;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSavingRequestBuilder(Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V
    .locals 1

    .line 7852
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7853
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->mVideoSavingRequestBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    return-void
.end method
