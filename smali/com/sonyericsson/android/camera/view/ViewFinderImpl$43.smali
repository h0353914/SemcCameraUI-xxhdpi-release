.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$43;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 11972
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$43;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeModeRequested()V
    .locals 5

    .line 11997
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 11999
    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$43;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 12010
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_0

    .line 12001
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_0

    .line 12004
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_0

    .line 12007
    :cond_3
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 12015
    :goto_0
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v1, :cond_4

    .line 12016
    new-instance v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_ICON:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$43;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 12020
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetCapturingMode(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 12022
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$43;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mrequestAnimation(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12023
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$43;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public onZoomChanged(F)V
    .locals 0

    .line 11980
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$43;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmZoomEventDispatcher(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->zoomChangeEvent(F)Z

    return-void
.end method

.method public onZoomEnd()V
    .locals 1

    .line 11985
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$43;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmZoomEventDispatcher(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->zoomEndEvent()Z

    .line 11986
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$43;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fputmIsZoomRatioDesignation(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    return-void
.end method

.method public onZoomRatioDesignation(F)V
    .locals 2

    .line 11991
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$43;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fputmIsZoomRatioDesignation(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 11992
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$43;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmZoomEventDispatcher(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->zoomRatioDesignation(F)Z

    return-void
.end method

.method public onZoomStarted()V
    .locals 0

    .line 11975
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$43;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmZoomEventDispatcher(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEventDispatcher;->zoomStartEvent()Z

    return-void
.end method
