.class Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingCamcordButtonProcedure;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingButtonProcedure;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoRecordingCamcordButtonProcedure"
.end annotation


# instance fields
.field private final mIsPauseButton:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Z)V
    .locals 1

    .line 1211
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingCamcordButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingButtonProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    .line 1212
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingCamcordButtonProcedure;->mIsPauseButton:Z

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 0

    return-void
.end method

.method public doTouchDown()V
    .locals 0

    return-void
.end method

.method public doTouchUp(Landroid/graphics/Point;)V
    .locals 1

    .line 1222
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingCamcordButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingCamcordButtonProcedure;->mIsPauseButton:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_RESUME_RECORDING:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method
