.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$2;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->onClickSlowMotionDescription(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;)V
    .locals 0

    .line 10189
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$2;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 2

    .line 10197
    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 10198
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$2;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$2;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmLaunchCondition(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/LaunchCondition;->isOneShot()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$msetApplicationNavigatorEnabled(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 10199
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$2;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onOpened()V
    .locals 0

    .line 10192
    const-string p0, "invoke"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method
