.class Lcom/sonyericsson/android/camera/controller/StateMachine$State$ReTrySetupHeadUpDisplayTask;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReTrySetupHeadUpDisplayTask"
.end annotation


# instance fields
.field private final mApplySettingsForFastCapture:Z

.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$State;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$State;Z)V
    .locals 0

    .line 2398
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State$ReTrySetupHeadUpDisplayTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2399
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State$ReTrySetupHeadUpDisplayTask;->mApplySettingsForFastCapture:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2405
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State$ReTrySetupHeadUpDisplayTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State$ReTrySetupHeadUpDisplayTask;->mApplySettingsForFastCapture:Z

    .line 2406
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 2405
    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method
