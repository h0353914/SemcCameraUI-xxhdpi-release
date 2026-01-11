.class Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;
.super Ljava/lang/Object;
.source "BaseRecorderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrepareTask"
.end annotation


# instance fields
.field private final mParameters:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

.field private final mSurface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderParameters;Landroid/view/Surface;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;->mParameters:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    .line 373
    iput-object p3, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "Fail to verify state in PrepareTask. state:"

    .line 378
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v4, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$fgetmState(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    .line 381
    monitor-exit v1

    return-void

    .line 383
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;->mSurface:Landroid/view/Surface;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$fputmRecordingSurface(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Landroid/view/Surface;)V

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;->mParameters:Lcom/sonyericsson/android/camera/recorder/RecorderParameters;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->prepareInternal(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$PrepareTask;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->notifyError()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 383
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
