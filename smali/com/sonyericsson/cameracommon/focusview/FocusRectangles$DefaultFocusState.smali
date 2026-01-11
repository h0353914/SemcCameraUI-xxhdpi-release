.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;
.super Ljava/lang/Object;
.source "FocusRectangles.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultFocusState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .locals 0

    .line 883
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleClearAllFocusExceptFace()V
    .locals 2

    .line 989
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    .line 992
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearSingleAutoFocus()V

    .line 993
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearTouchFocus()V

    .line 994
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearObjectTracking()V

    return-void
.end method

.method public handleClearExceptTouchFocus()V
    .locals 1

    .line 982
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearSingleAutoFocus()V

    .line 983
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearObjectTracking()V

    .line 984
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearFaceDetection()V

    return-void
.end method

.method public handleClearObjectTracking()V
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mhideTrackedObjectRecgantle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    .line 1021
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mremoveObjectFocusRectAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    .line 1022
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mresetObjectTrackingRectangleColor(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V

    return-void
.end method

.method public handleOnAutoFocusCanceled()V
    .locals 0

    return-void
.end method

.method public handleOnAutoFocusDone(Z)V
    .locals 2

    .line 902
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmSingleAfRect(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f090088

    .line 903
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 905
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 906
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const p1, 0x7f080091

    .line 908
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 909
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFocusInAnimationSingle(Landroid/view/View;)V

    goto :goto_0

    .line 912
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x4

    .line 913
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public handleOnAutoFocusStarted()V
    .locals 3

    .line 888
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$msetAFLocking(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V

    .line 890
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmSingleAfRect(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 891
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmSingleAfRect(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v2, 0x7f090088

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 892
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 893
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 895
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object p0

    const v1, 0x7f080092

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    return-void
.end method

.method public handleOnFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .locals 2

    .line 944
    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 946
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mupdateFaceRectanglesData(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V

    .line 953
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState-IA;)V

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleOnObjectLost()V
    .locals 0

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

.method public handleOnUiComponentOverlaid()V
    .locals 3

    .line 999
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmSingleAfRect(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1000
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mhideFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V

    .line 1001
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mhideTrackedObjectRecgantle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    .line 1002
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmTouchAfRect(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public handleOnUiComponentRemoved()V
    .locals 2

    .line 1011
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmTouchAfRect(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1012
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmSingleAfRect(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1015
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mresetRectanglesColor(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    return-void
.end method

.method public handleSetFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$msetFocusPositionInternal(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 928
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState-IA;)V

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStartAfLock()V
    .locals 2

    .line 1027
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusInLockedState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusInLockedState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStartFaceDetection()V
    .locals 3

    .line 935
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearSingleAutoFocus()V

    .line 936
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearObjectTracking()V

    .line 939
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState-IA;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStartObjectTracking()V
    .locals 3

    .line 959
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearExceptTouchFocus()V

    .line 962
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState-IA;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStopAfLock()V
    .locals 1

    .line 1032
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method
