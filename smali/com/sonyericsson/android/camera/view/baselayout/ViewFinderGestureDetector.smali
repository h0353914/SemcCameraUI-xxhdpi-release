.class public Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;
.super Ljava/lang/Object;
.source "ViewFinderGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;,
        Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;,
        Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewFinderGestureDetector"

.field private static final TRACE:Z = false


# instance fields
.field private mAcceptedDragDirectionFlags:I

.field private mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

.field private mDragStartEvent:Landroid/view/MotionEvent;

.field private final mExclusiveViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mIsExclusive:Z

.field private mIsStartDraggingSlopEnabled:Z

.field private mListener:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;

.field private final mModeSwitchDragFinishDistanceForFling:I

.field private final mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private final mStartDraggingMovementSlop:F

.field private final mStartDraggingTimeSlop:F

.field private mTriggerEvent:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mGlobalVisibleRect:Landroid/graphics/Rect;

    .line 310
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 130
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mExclusiveViews:Ljava/util/List;

    .line 132
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->NONE:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mIsExclusive:Z

    .line 134
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->NONE:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->flag:I

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mAcceptedDragDirectionFlags:I

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mStartDraggingTimeSlop:F

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070227

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mStartDraggingMovementSlop:F

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mIsStartDraggingSlopEnabled:Z

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070092

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mModeSwitchDragFinishDistanceForFling:I

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Z
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->isDragging()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->notifyOnDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mModeSwitchDragFinishDistanceForFling:I

    return p0
.end method

.method static synthetic access$1200(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->computeDistance(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->notifyOnFinishDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;FF)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->computeDraggingDirection(FF)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->isStartDraggingAccepted(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Landroid/view/MotionEvent;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->resetDragStartEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    return-object p0
.end method

.method static synthetic access$502(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->isDraggingAccepted(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Landroid/view/MotionEvent;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mTriggerEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;)Landroid/view/MotionEvent;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragStartEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->notifyOnStartDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void
.end method

.method private static computeDistance(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 2

    .line 498
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 499
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-le v0, p0, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method private computeDraggingDirection(FF)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;
    .locals 1

    .line 488
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    .line 489
    sget-object p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->HORIZONTAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    return-object p0

    .line 490
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    .line 491
    sget-object p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->VERTICAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    return-object p0

    .line 493
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->NONE:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    return-object p0
.end method

.method private isAccepted(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mTriggerEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 449
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mTriggerEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isDragging()Z
    .locals 1

    .line 399
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->NONE:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDraggingAccepted(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)Z
    .locals 2

    .line 438
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->NONE:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 441
    :cond_0
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mAcceptedDragDirectionFlags:I

    iget v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->flag:I

    and-int/2addr p0, v0

    iget p1, p1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->flag:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isEnabled()Z
    .locals 1

    .line 403
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mAcceptedDragDirectionFlags:I

    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->NONE:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->flag:I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isExclusiveViewEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 456
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mExclusiveViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 457
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isStartDraggingAccepted(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 407
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mTriggerEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 411
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mIsStartDraggingSlopEnabled:Z

    if-eqz v0, :cond_2

    .line 412
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$2;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$ViewFinderGestureDetector$Direction:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    return v1

    .line 420
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mTriggerEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mStartDraggingMovementSlop:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    return v1

    .line 414
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mTriggerEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mStartDraggingMovementSlop:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    return v1

    .line 429
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mTriggerEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr p1, v2

    long-to-float p1, p1

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mStartDraggingTimeSlop:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyOnDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 508
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;

    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;->onDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyOnFinishDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;->onFinishDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyOnStartDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;

    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;->onStartDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private resetDragStartEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragStartEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragStartEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 480
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragStartEvent:Landroid/view/MotionEvent;

    :cond_0
    if-eqz p1, :cond_1

    .line 483
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragStartEvent:Landroid/view/MotionEvent;

    :cond_1
    return-void
.end method

.method private resetTriggerEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mTriggerEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mTriggerEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 470
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mTriggerEvent:Landroid/view/MotionEvent;

    :cond_0
    if-eqz p1, :cond_1

    .line 473
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mTriggerEvent:Landroid/view/MotionEvent;

    :cond_1
    return-void
.end method

.method private trace(Ljava/lang/String;)V
    .locals 1

    const/4 p0, 0x1

    .line 32
    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addExclusiveView(Landroid/view/View;)V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mExclusiveViews:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;->onDown(Landroid/view/MotionEvent;)V

    .line 190
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->NONE:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    .line 191
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->resetTriggerEvent(Landroid/view/MotionEvent;)V

    .line 192
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->isExclusiveViewEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mIsExclusive:Z

    return v2

    .line 200
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mIsExclusive:Z

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v1, :cond_3

    if-eq p1, v3, :cond_3

    return v2

    .line 205
    :cond_3
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mIsExclusive:Z

    .line 206
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->resetTriggerEvent(Landroid/view/MotionEvent;)V

    .line 207
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->resetDragStartEvent(Landroid/view/MotionEvent;)V

    return v2

    .line 217
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 221
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_7

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->isDraggingAccepted(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragStartEvent:Landroid/view/MotionEvent;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->CANCEL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    invoke-direct {p0, v0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->notifyOnFinishDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)V

    .line 225
    :cond_6
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->NONE:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    return v2

    .line 229
    :cond_7
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->isAccepted(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_8

    return v2

    .line 233
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_b

    if-eq v2, v3, :cond_9

    goto :goto_1

    .line 237
    :cond_9
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->isDraggingAccepted(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 238
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mTriggerEvent:Landroid/view/MotionEvent;

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->CANCEL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    invoke-direct {p0, v1, p1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->notifyOnFinishDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)V

    .line 240
    :cond_a
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->NONE:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    .line 241
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->resetTriggerEvent(Landroid/view/MotionEvent;)V

    .line 242
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->resetDragStartEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 246
    :cond_b
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->isDraggingAccepted(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 247
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mTriggerEvent:Landroid/view/MotionEvent;

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->UP:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    invoke-direct {p0, v1, p1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->notifyOnFinishDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)V

    .line 249
    :cond_c
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->NONE:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    .line 250
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->resetTriggerEvent(Landroid/view/MotionEvent;)V

    .line 251
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->resetDragStartEvent(Landroid/view/MotionEvent;)V

    :goto_1
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mIsExclusive:Z

    .line 269
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 270
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->resetTriggerEvent(Landroid/view/MotionEvent;)V

    .line 271
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->resetDragStartEvent(Landroid/view/MotionEvent;)V

    return v0

    .line 275
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->isAccepted(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 279
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 281
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->NONE:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    .line 282
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->resetTriggerEvent(Landroid/view/MotionEvent;)V

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_3

    packed-switch v1, :pswitch_data_0

    move v4, v0

    goto :goto_1

    .line 296
    :cond_3
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->isDraggingAccepted(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mTriggerEvent:Landroid/view/MotionEvent;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->UP:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    invoke-direct {p0, v0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->notifyOnFinishDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)V

    .line 299
    :cond_4
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->NONE:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    .line 300
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->resetTriggerEvent(Landroid/view/MotionEvent;)V

    .line 301
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->resetDragStartEvent(Landroid/view/MotionEvent;)V

    :goto_1
    :pswitch_1
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs setAcceptDragDirection([Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)V
    .locals 4

    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mAcceptedDragDirectionFlags:I

    .line 157
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 158
    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mAcceptedDragDirectionFlags:I

    iget v2, v2, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->flag:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mAcceptedDragDirectionFlags:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mAcceptedDragDirectionFlags:I

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 162
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->NONE:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mDragDirection:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    :cond_1
    return-void
.end method

.method public setOnGestureDetectorListener(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mListener:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;

    return-void
.end method

.method public setStartDraggingSlopEnabled(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->mIsStartDraggingSlopEnabled:Z

    return-void
.end method
