.class Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareTask;
.super Ljava/lang/Object;
.source "SuperSlowRecorderController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;
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

.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareTask;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareTask;->mParams:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareTask;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareTask;->mParams:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->access$001(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 195
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 197
    :cond_0
    const-string v0, "prepareInternal() is failed in PrepareTask."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 198
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareTask;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;->access$100(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController;)V

    const/4 p0, 0x0

    .line 199
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

    .line 185
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/SuperSlowRecorderController$PrepareTask;->call()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
