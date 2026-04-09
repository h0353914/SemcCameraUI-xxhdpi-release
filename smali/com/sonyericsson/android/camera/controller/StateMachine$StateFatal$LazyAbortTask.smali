.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyAbortTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;)V
    .locals 0

    .line 6592
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .locals 0

    .line 6592
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 6595
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke LazyAbortTask"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 6596
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal$LazyAbortTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateFatal;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    return-void
.end method
