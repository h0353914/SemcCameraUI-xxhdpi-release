.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;
.super Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObjectTrackingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    return-void
.end method


# virtual methods
.method public handleOnAutoFocusDone(Z)V
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmTrackedObjectRectangle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 672
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmTrackedObjectRectangle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getSuccessIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    goto :goto_0

    .line 674
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmTrackedObjectRectangle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFadeOutAnimationObject(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public handleOnAutoFocusStarted()V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$msetAFLocking(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V

    .line 661
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmTrackedObjectRectangle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object v0

    const v1, 0x7f090160

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 663
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .line 665
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getAfFocusingIcon()I

    move-result p0

    .line 663
    invoke-virtual {v1, v0, p0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    return-void
.end method

.method public handleOnFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .locals 1

    .line 697
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mupdateFaceRectanglesData(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V

    return-void
.end method

.method public handleOnObjectLost()V
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectLostState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectLostState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleOnObjectRemoved()V
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleOnTrackedObjectStateUpdated(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmObjectTrackingRectSupported(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmObJectTrackingFocusIconState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->NOT_DISPLAY:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    if-ne v0, v1, :cond_0

    .line 709
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$minitObjectTrackingAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V

    goto :goto_0

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->isAFLocking()Z

    move-result p0

    invoke-static {v0, p1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mplayObjectTrackingAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V

    goto :goto_0

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->isAFLocking()Z

    move-result p0

    invoke-static {v0, p1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$monObjectTrackedInternal(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V

    :goto_0
    return-void
.end method

.method public handleSetFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$msetFocusPositionInternal(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 683
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance p2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState-IA;)V

    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStartAfLock()V
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingInLockedState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingInLockedState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStartFaceDetection()V
    .locals 3

    .line 689
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearExceptTouchFocus()V

    .line 692
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState-IA;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStartObjectTracking()V
    .locals 0

    return-void
.end method

.method public handleStopAfLock()V
    .locals 1

    .line 736
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method protected isAFLocking()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
