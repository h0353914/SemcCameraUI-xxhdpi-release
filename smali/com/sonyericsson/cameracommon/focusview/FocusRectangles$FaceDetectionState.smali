.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;
.super Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceDetectionState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .locals 0

    .line 762
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    return-void
.end method

.method private isFaceRectAvailable()Z
    .locals 1

    .line 804
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 805
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public handleOnAutoFocusDone(Z)V
    .locals 3

    .line 777
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->isFaceRectAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;->handleOnAutoFocusDone(Z)V

    return-void

    .line 783
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmLatestSelectedFaceUuid(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 787
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 788
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 789
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmLatestSelectedFaceUuid(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f080096

    .line 792
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 793
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 794
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    .line 798
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public handleOnAutoFocusStarted()V
    .locals 3

    .line 765
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->isFaceRectAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    .line 768
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onAutoFocusStarted()V

    return-void

    .line 772
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$msetAFLocking(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V

    return-void
.end method

.method public handleOnFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .locals 1

    .line 832
    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 834
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearFaceDetection()V

    .line 836
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void

    .line 840
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mupdateFaceRectanglesData(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V

    return-void
.end method

.method public handleOnObjectRemoved()V
    .locals 0

    return-void
.end method

.method public handleOnTrackedObjectStateUpdated(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .locals 2

    .line 857
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmSingleAfRect(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 858
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mhideFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V

    .line 860
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$monObjectTrackedInternal(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V

    .line 863
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState-IA;)V

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleSetFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .locals 1

    .line 815
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    if-eq p2, v0, :cond_0

    return-void

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$msetFocusPositionInternal(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 822
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance p2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState-IA;)V

    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStartAfLock()V
    .locals 2

    .line 873
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionInLockedState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionInLockedState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStartFaceDetection()V
    .locals 0

    return-void
.end method

.method public handleStartObjectTracking()V
    .locals 3

    .line 846
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearSingleAutoFocus()V

    .line 847
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearTouchFocus()V

    .line 848
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearFaceDetection()V

    .line 851
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState-IA;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleStopAfLock()V
    .locals 2

    .line 878
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmLatestSelectedFaceUuid(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 879
    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    .line 878
    :goto_0
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method
