.class Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaEventProcedure;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureAreaEventProcedure"
.end annotation


# instance fields
.field protected mIsScaleReady:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 1

    .line 1468
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure-IA;)V

    const/4 p1, 0x0

    .line 1469
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaEventProcedure;->mIsScaleReady:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaEventProcedure-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method


# virtual methods
.method public doCancel()V
    .locals 2

    .line 1473
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CAPTURE_CANCEL:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method setFocusPositionToDeviceAndViewFinder(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .locals 2

    .line 1485
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isTouchFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    .line 1488
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->convertTouchPointToRectInDevicePreviewPositionRatio(Landroid/graphics/Point;)Landroid/graphics/RectF;

    move-result-object v0

    .line 1492
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SET_TOUCHED_POSITION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method setSelectedObjectPositionToDeviceAndViewFinder(Landroid/graphics/Point;)V
    .locals 2

    .line 1479
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SET_SELECTED_OBJECT_POSITION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaEventProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p0

    .line 1480
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getPosition(Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1479
    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method
