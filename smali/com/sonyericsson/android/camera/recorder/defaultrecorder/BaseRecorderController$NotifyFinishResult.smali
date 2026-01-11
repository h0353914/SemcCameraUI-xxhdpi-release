.class Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;
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
    name = "NotifyFinishResult"
.end annotation


# instance fields
.field private final mResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
    .locals 0

    .line 1099
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1100
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;->mResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyFinishResult() E result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;->mResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    .line 1109
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$8;->$SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;->mResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;->mResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;->onRecordFinished(Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    goto :goto_0

    .line 1112
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1119
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    new-array v1, v1, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v5, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->STOPPING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    const/4 v6, 0x0

    aput-object v5, v1, v6

    sget-object v5, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v5, v1, v3

    sget-object v5, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v5, v1, v2

    .line 1120
    invoke-virtual {v4, v1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v1

    .line 1121
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 1123
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;->mResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;->onRecordFinished(Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    .line 1125
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1126
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$fgetmReferenceClock(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$fgetmReferenceClock(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    move-result-object v4

    .line 1127
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->elapsedTimeMillis()J

    move-result-wide v4

    iget-object v7, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    invoke-static {v7}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$fgetmLastNotifyDurationMillis(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;)J

    move-result-wide v7

    .line 1126
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->reset(J)V

    .line 1128
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    new-array v2, v2, [Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    sget-object v4, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASING:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v4, v2, v6

    sget-object v4, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->RELEASED:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->verifyState([Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1131
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$NotifyFinishResult;->this$0:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;

    sget-object v0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;->IDLE:Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->changeTo(Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController$State;)V

    .line 1133
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1143
    :goto_0
    const-string p0, "notifyFinishResult() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/BaseRecorderController;->-$$Nest$smtrace(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1133
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 1121
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
