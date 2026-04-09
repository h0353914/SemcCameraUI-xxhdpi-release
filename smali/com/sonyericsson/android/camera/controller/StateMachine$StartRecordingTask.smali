.class Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartRecordingTask"
.end annotation


# instance fields
.field private final mBySideSense:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V
    .locals 0

    .line 7754
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7755
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;->mBySideSense:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 7760
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke StartRecordingTask"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7762
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StartRecordingTask;->mBySideSense:Z

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$14400(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method
