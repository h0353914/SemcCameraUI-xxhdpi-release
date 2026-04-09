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
.field private mIsAutoFocusStarted:Z

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    const/4 p1, 0x0

    .line 529
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mIsAutoFocusStarted:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V
    .locals 0

    .line 528
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    return-void
.end method


# virtual methods
.method public handleClearExceptTouchFocus()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 615
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->stopFocusAnimation(Landroid/view/View;)V

    .line 616
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->handleClearExceptTouchFocus()V

    return-void
.end method

.method public handleOnAutoFocusCanceled()V
    .locals 2

    const/4 v0, 0x0

    .line 562
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mIsAutoFocusStarted:Z

    .line 563
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .line 564
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object p0

    const v1, 0x7f09005b

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 566
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public handleOnAutoFocusDone(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 544
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mIsAutoFocusStarted:Z

    .line 546
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$400(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V

    .line 547
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .line 548
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const v2, 0x7f09005b

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 549
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 551
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getTouchAfSuccessIcon()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 552
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getTouchAfSuccessIcon()I

    move-result p0

    invoke-virtual {p1, v1, p0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFocusInAnimationTouch(Landroid/view/View;I)V

    goto :goto_0

    .line 554
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 555
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFadeOutAnimationTouch(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleOnAutoFocusStarted()V
    .locals 3

    const/4 v0, 0x1

    .line 533
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mIsAutoFocusStarted:Z

    .line 534
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V

    .line 536
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 537
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    .line 539
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getTouchAfFocusingIcon()I

    move-result p0

    .line 537
    invoke-virtual {v1, v0, p0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    return-void
.end method

.method public handleOnFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mIsAutoFocusStarted:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p0, 0x1

    invoke-static {v0, p1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V

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

    .line 622
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 623
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 626
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$1100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    return-void
.end method

.method public handleSetFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .locals 1

    const/4 v0, 0x0

    .line 571
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->mIsAutoFocusStarted:Z

    .line 573
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    return-void
.end method

.method public handleStartAfLock()V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStartFaceDetection()V
    .locals 3

    .line 580
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearSingleAutoFocus()V

    .line 581
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearObjectTracking()V

    .line 584
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStartObjectTracking()V
    .locals 3

    .line 595
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearExceptTouchFocus()V

    .line 598
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStopAfLock()V
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method
