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

    .line 1878
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State$ReTrySetupHeadUpDisplayTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1879
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State$ReTrySetupHeadUpDisplayTask;->mApplySettingsForFastCapture:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1885
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State$ReTrySetupHeadUpDisplayTask;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$State;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$State;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$State$ReTrySetupHeadUpDisplayTask;->mApplySettingsForFastCapture:Z

    .line 1886
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 1885
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method
