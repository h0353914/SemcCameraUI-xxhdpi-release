.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;
.super Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchFocusState"
.end annotation


# instance fields
.field private mAutoFocusStatus:Z

.field private mIsAutoFocusStarted:Z

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    const/4 p1, 0x0

    .line 541
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mIsAutoFocusStarted:Z

    .line 542
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mAutoFocusStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    return-void
.end method


# virtual methods
.method public handleClearExceptTouchFocus()V
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmTouchAfRect(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f090088

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 629
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->stopFocusAnimation(Landroid/view/View;)V

    .line 630
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->handleClearExceptTouchFocus()V

    return-void
.end method

.method public handleOnAutoFocusCanceled()V
    .locals 2

    const/4 v0, 0x0

    .line 576
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mIsAutoFocusStarted:Z

    .line 577
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmTouchAfRect(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object p0

    const v1, 0x7f090088

    .line 578
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 580
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public handleOnAutoFocusDone(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 557
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mIsAutoFocusStarted:Z

    .line 558
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mAutoFocusStatus:Z

    .line 560
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$msetAFLocking(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V

    .line 561
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmTouchAfRect(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const v2, 0x7f090088

    .line 562
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 563
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 565
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getTouchAfSuccessIcon()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getTouchAfSuccessIcon()I

    move-result p0

    invoke-virtual {p1, v1, p0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFocusInAnimationTouch(Landroid/view/View;I)V

    goto :goto_0

    .line 568
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmIsManualFocus(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 569
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFadeOutAnimationTouch(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleOnAutoFocusStarted()V
    .locals 3

    const/4 v0, 0x1

    .line 546
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mIsAutoFocusStarted:Z

    .line 547
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mupdateFaceRectanglesData(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V

    .line 549
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmTouchAfRect(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f090088

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 550
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .line 552
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getTouchAfFocusingIcon()I

    move-result p0

    .line 550
    invoke-virtual {v1, v0, p0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    return-void
.end method

.method public handleOnFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mIsAutoFocusStarted:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p0, 0x1

    invoke-static {v0, p1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mupdateFaceRectanglesData(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V

    return-void
.end method

.method public handleOnObjectRemoved()V
    .locals 0

    return-void
.end method

.method public handleOnTrackedObjectStateUpdated(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .locals 0

    return-void
.end method

.method public handleOnUiComponentRemoved()V
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmTouchAfRect(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmSingleAfRect(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 640
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mresetRectanglesColor(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    return-void
.end method

.method public handleSetFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .locals 1

    const/4 v0, 0x0

    .line 585
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mIsAutoFocusStarted:Z

    .line 587
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$msetFocusPositionInternal(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    return-void
.end method

.method public handleStartAfLock()V
    .locals 3

    .line 645
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mAutoFocusStatus:Z

    invoke-direct {v1, v2, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStartFaceDetection()V
    .locals 3

    .line 594
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearSingleAutoFocus()V

    .line 595
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearObjectTracking()V

    .line 598
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState-IA;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStartObjectTracking()V
    .locals 3

    .line 609
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearExceptTouchFocus()V

    .line 612
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState-IA;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStopAfLock()V
    .locals 1

    .line 650
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method
