.class Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$PrepareTask;
.super Ljava/lang/Object;
.source "SuperSlowShotRecorderController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrepareTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mParams:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$PrepareTask;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$PrepareTask;->mParams:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "prepareInternal() E"

    .line 198
    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->access$100(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$PrepareTask;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->prepareCallBack()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "prepareCallBack() is failed in PrepareTask."

    .line 201
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 202
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$PrepareTask;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->access$200(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;)V

    .line 203
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$PrepareTask;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$PrepareTask;->mParams:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->access$301(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "prepareInternal() is failed in PrepareTask."

    .line 207
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 208
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$PrepareTask;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->access$400(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;)V

    .line 209
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$PrepareTask;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->access$500(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "startBypassCamera() is failed in PrepareTask."

    .line 215
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 216
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$PrepareTask;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->access$600(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;)V

    .line 217
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "prepareInternal() X"

    .line 220
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController;->access$100(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 221
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowShotRecorderController$PrepareTask;->call()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
