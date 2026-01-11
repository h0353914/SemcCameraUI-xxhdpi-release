.class Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;
.super Ljava/lang/Object;
.source "SideTouchEventDetector.java"

# interfaces
.implements Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;
.implements Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/SideTouchEventDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraSideTouchGestureListener"
.end annotation


# instance fields
.field private mCurrentGestureId:I

.field private mCurrentSide:I

.field private mCurrentState:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/SideTouchEventDetector;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/SideTouchEventDetector;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->this$0:Lcom/sonyericsson/android/camera/SideTouchEventDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 175
    iput p1, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentGestureId:I

    const/4 p1, 0x0

    .line 176
    iput p1, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentSide:I

    .line 177
    sget-object p1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->IDLING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentState:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/SideTouchEventDetector;Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;-><init>(Lcom/sonyericsson/android/camera/SideTouchEventDetector;)V

    return-void
.end method

.method private finishGestureTracking(I)Z
    .locals 2

    .line 324
    iget v0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentGestureId:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/4 p1, -0x1

    .line 327
    iput p1, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentGestureId:I

    .line 328
    iput v1, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentSide:I

    .line 329
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentState:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    sget-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->SCROLLING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    if-ne p1, v0, :cond_1

    .line 330
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->this$0:Lcom/sonyericsson/android/camera/SideTouchEventDetector;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->-$$Nest$fgetmOnSideTouchGestureListener(Lcom/sonyericsson/android/camera/SideTouchEventDetector;)Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;->onScrollEnd()V

    .line 332
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->this$0:Lcom/sonyericsson/android/camera/SideTouchEventDetector;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->-$$Nest$fgetmOnSideTouchGestureListener(Lcom/sonyericsson/android/camera/SideTouchEventDetector;)Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;->onGestureFinished()V

    const/4 p0, 0x1

    return p0
.end method

.method private startGestureTracking(ILandroid/view/MotionEvent;)Z
    .locals 3

    .line 310
    iget v0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentGestureId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->this$0:Lcom/sonyericsson/android/camera/SideTouchEventDetector;

    invoke-static {v0, p2}, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->-$$Nest$misInSideTouchValidArea(Lcom/sonyericsson/android/camera/SideTouchEventDetector;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 314
    :cond_0
    iput p1, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentGestureId:I

    .line 316
    invoke-static {p2}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchUtils;->getLogicalScreenSide(Landroid/view/MotionEvent;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentSide:I

    .line 317
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->this$0:Lcom/sonyericsson/android/camera/SideTouchEventDetector;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->-$$Nest$fgetmOnSideTouchGestureListener(Lcom/sonyericsson/android/camera/SideTouchEventDetector;)Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;->onGestureStart()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method


# virtual methods
.method public onCancel(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onDoubleTap(ILandroid/view/MotionEvent;)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentState:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    sget-object v1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->IDLING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    if-ne v0, v1, :cond_0

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->startGestureTracking(ILandroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 222
    sget-object p1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->DOUBLE_TAPPING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentState:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    :cond_0
    return-void
.end method

.method public onDoubleTapForLearning(Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;)V
    .locals 0

    return-void
.end method

.method public onDown(ILandroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onFling(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    .line 293
    iget-object p2, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentState:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    sget-object p3, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->DOUBLE_TAPPING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    if-ne p2, p3, :cond_0

    .line 294
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->finishGestureTracking(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 295
    sget-object p1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->IDLING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentState:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    :cond_0
    return-void
.end method

.method public onGestureFinished(I)V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentState:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    sget-object v1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->IDLING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    if-eq v0, v1, :cond_0

    .line 303
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->finishGestureTracking(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 304
    sget-object p1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->IDLING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentState:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    :cond_0
    return-void
.end method

.method public onLongPress(ILandroid/view/MotionEvent;)V
    .locals 1

    .line 211
    iget-object p2, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentState:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    sget-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->DOUBLE_TAPPING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    if-ne p2, v0, :cond_0

    .line 212
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->finishGestureTracking(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 213
    sget-object p1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->IDLING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentState:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    :cond_0
    return-void
.end method

.method public onScroll(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 1

    .line 241
    invoke-static {p2}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchUtils;->getLogicalScreenSide(Landroid/view/MotionEvent;)I

    move-result p4

    const/4 p5, 0x1

    const/4 v0, 0x2

    if-eq p4, p5, :cond_0

    if-eq p4, v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p4

    .line 255
    invoke-virtual {p2, p4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    .line 257
    sget-object p4, Lcom/sonyericsson/android/camera/SideTouchEventDetector$1;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$State:[I

    iget-object p5, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentState:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    invoke-virtual {p5}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->ordinal()I

    move-result p5

    aget p4, p4, p5

    if-eq p4, v0, :cond_2

    const/4 p2, 0x3

    if-eq p4, p2, :cond_1

    goto :goto_0

    .line 282
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->finishGestureTracking(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 284
    sget-object p1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->IDLING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentState:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    goto :goto_0

    .line 273
    :cond_2
    iget p4, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentGestureId:I

    if-ne p4, p1, :cond_3

    .line 274
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->this$0:Lcom/sonyericsson/android/camera/SideTouchEventDetector;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->-$$Nest$fgetmOnSideTouchGestureListener(Lcom/sonyericsson/android/camera/SideTouchEventDetector;)Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;

    move-result-object p1

    iget p0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentSide:I

    .line 275
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->-$$Nest$smfromCode(I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    move-result-object p0

    .line 276
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p4

    float-to-int p4, p4

    .line 277
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    float-to-int p2, p2

    .line 274
    invoke-static {p0, p4, p2}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->-$$Nest$smmake(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;II)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;->onScroll(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSingleTapConfirmed(ILandroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onUp(ILandroid/view/MotionEvent;)V
    .locals 3

    .line 186
    iget v0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentGestureId:I

    if-eq v0, p1, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentState:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    sget-object v1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->DOUBLE_TAPPING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    if-ne v0, v1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->this$0:Lcom/sonyericsson/android/camera/SideTouchEventDetector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->-$$Nest$fgetmOnSideTouchGestureListener(Lcom/sonyericsson/android/camera/SideTouchEventDetector;)Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;

    move-result-object v0

    .line 191
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-static {p2, v1}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->-$$Nest$smmake(Landroid/view/MotionEvent;I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

    move-result-object v1

    .line 192
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 190
    invoke-interface {v0, v1, v2, p2}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;->onDoubleTap(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;II)V

    .line 193
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->finishGestureTracking(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 194
    sget-object p1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->IDLING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;->mCurrentState:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    :cond_1
    return-void
.end method
