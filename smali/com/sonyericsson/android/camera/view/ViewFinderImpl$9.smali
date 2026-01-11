.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 2652
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 2655
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmZoomSwitchButton(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->getCurrentZoomValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    .line 2668
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-lez p1, :cond_0

    .line 2656
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_PERFORM:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-instance v8, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2660
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomUiProxy()Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->getBaseStateNumber()F

    move-result v6

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2661
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomUiProxy()Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->getZoomMagnificationCoefficient()F

    move-result v7

    const/16 v3, 0x3c6

    const/4 v4, 0x0

    const/16 v5, 0xa8

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;-><init>(IIIFF)V

    filled-new-array {v8, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 2656
    invoke-virtual {p1, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2663
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_PERFORM:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-instance v8, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2667
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomUiProxy()Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->getBaseStateNumber()F

    move-result v6

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$9;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2668
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getZoomUiProxy()Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomUiUpdateProxy;->getZoomMagnificationCoefficient()F

    move-result v7

    const/16 v3, 0x3c6

    const/4 v4, 0x0

    const/16 v5, 0x198

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;-><init>(IIIFF)V

    filled-new-array {v8, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 2663
    invoke-virtual {p1, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
