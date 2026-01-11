.class Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LazyInitializationTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 1807
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private retry()V
    .locals 3

    .line 1844
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1811
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    .line 1814
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->canHandleAsynchronizedTask()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1824
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->retry()V

    return-void

    .line 1831
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$mrequestFinishCameraActivity(Lcom/sonyericsson/android/camera/CameraActivity;)V

    .line 1833
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    .line 1836
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fputmIsLazyInitializationRunning(Lcom/sonyericsson/android/camera/CameraActivity;Z)V

    .line 1837
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_SETTING_CHANGE_ACCEPTABILITY:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 1839
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isSettingChangeAcceptable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1837
    invoke-interface {v0, v1, p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void

    .line 1816
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity$LazyInitializationTask;->retry()V

    return-void
.end method
