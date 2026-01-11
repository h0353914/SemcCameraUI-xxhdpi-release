.class Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;
.super Ljava/lang/Object;
.source "ViewFinderGestureDetector.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-static {v1, p3, p4}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$mcomputeDraggingDirection(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;FF)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    move-result-object p3

    .line 362
    iget-object p4, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-static {p4, p3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$misDraggingAccepted(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 364
    new-instance p4, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p4, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 365
    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 367
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$2;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$ViewFinderGestureDetector$Direction:[I

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 369
    :cond_1
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-static {p3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$fgetmModeSwitchDragFinishDistanceForFling(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)I

    move-result p3

    .line 370
    invoke-static {p1, p4}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$smcomputeDistance(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result p1

    if-le p3, p1, :cond_2

    goto :goto_1

    .line 380
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$misDragging(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 381
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$fgetmTriggerEvent(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Landroid/view/MotionEvent;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$mnotifyOnStartDragging(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 383
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$fgetmTriggerEvent(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Landroid/view/MotionEvent;

    move-result-object p1

    sget-object p3, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->FLING:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$mnotifyOnFinishDragging(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)V

    :cond_4
    :goto_1
    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 328
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$misDragging(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 329
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-static {p1, p3, p4}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$mcomputeDraggingDirection(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;FF)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    move-result-object p1

    .line 330
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-static {p3, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$misStartDraggingAccepted(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;Landroid/view/MotionEvent;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 331
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-static {p3, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$mresetDragStartEvent(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Landroid/view/MotionEvent;)V

    .line 332
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$fputmDragDirection(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)V

    .line 333
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$fgetmDragDirection(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$misDraggingAccepted(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 335
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$fgetmTriggerEvent(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Landroid/view/MotionEvent;

    move-result-object p2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$fgetmDragStartEvent(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Landroid/view/MotionEvent;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$mnotifyOnStartDragging(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return v0

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$fgetmDragDirection(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$misDraggingAccepted(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 342
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$fgetmDragStartEvent(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->-$$Nest$mnotifyOnDragging(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
