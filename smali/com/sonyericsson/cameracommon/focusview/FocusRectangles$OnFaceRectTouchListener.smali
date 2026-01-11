.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;
.super Ljava/lang/Object;
.source "FocusRectangles.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnFaceRectTouchListener"
.end annotation


# instance fields
.field private mIsForceTouchCanceled:Z

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .locals 0

    .line 1396
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1397
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->mIsForceTouchCanceled:Z

    return-void
.end method

.method private isTouchAreaOnTouchCapture(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1501
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmIsFaceTouchCaptureEnabled(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmCaptureArea(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1503
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1504
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1505
    new-instance p1, Landroid/graphics/Point;

    .line 1506
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 1507
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v0

    invoke-direct {p1, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 1508
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmCaptureArea(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isEventContainedInView(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected clearTouched()V
    .locals 1

    const/4 v0, 0x1

    .line 1400
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->mIsForceTouchCanceled:Z

    return-void
.end method

.method public onRectTouchCancel(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .line 1491
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmPressedRectangle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmPressedRectangle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1494
    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 1495
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fputmPressedRectangle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)V

    .line 1496
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->mIsForceTouchCanceled:Z

    .line 1497
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmFocusEventListener(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;->onCanceled()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRectTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 6

    .line 1405
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmPressedRectangle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmFaceReflectChecker(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->isWaitingForCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const v0, 0x7f09015f

    .line 1411
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    .line 1412
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 1413
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1414
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 1415
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    .line 1417
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1419
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p1, v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fputmPressedRectangle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)V

    .line 1422
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->startRectanglePressAnimation()V

    .line 1426
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmLatestSelectedFaceUuid(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1427
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmLatestSelectedFaceUuid(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/lang/String;

    move-result-object p1

    .line 1428
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_3
    move p1, v1

    .line 1432
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmLastFaceDetectionResult(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mfaceResultToRectangles(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V

    .line 1435
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeFacePriority(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Ljava/lang/String;)V

    .line 1439
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->isTouchAreaOnTouchCapture(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 1442
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmFocusEventListener(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;->onTouched()V

    :cond_4
    return-void
.end method

.method public onRectTouchLongPress(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1516
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_0

    const-string p2, "onRectTouchLongPress."

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1518
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmPressedRectangle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmPressedRectangle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 1522
    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 1524
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmFocusEventListener(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;->onLongPressed()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRectTouchUp(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    .line 1452
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmPressedRectangle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmPressedRectangle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1455
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1457
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fputmPressedRectangle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)V

    .line 1459
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->mIsForceTouchCanceled:Z

    if-eqz v1, :cond_1

    .line 1460
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->mIsForceTouchCanceled:Z

    .line 1461
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmFocusEventListener(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;->onCanceled()V

    return-void

    :cond_1
    const v0, 0x7f09015f

    .line 1465
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    .line 1466
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 1467
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 1468
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1471
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->isTouchAreaOnTouchCapture(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1472
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmFaceReflectChecker(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->isWaitingForFaceReflected()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1473
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmFaceReflectChecker(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    move-result-object p1

    new-instance p2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener$1;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;)V

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->setFaceReflectCb(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectedCallback;)V

    goto :goto_0

    .line 1480
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmFocusEventListener(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;->onReleased()V

    :cond_4
    :goto_0
    return-void
.end method
