.class public Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
.super Ljava/lang/Object;
.source "TouchActionTranslator.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;
.implements Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$NullInteractionListener;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleStop;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleDown;
    }
.end annotation


# static fields
.field private static final NULL_LISTENER:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

.field public static final TAG:Ljava/lang/String; = "TouchActionTranslator"


# instance fields
.field private mAndroidGestureDetector:Landroid/view/GestureDetector;

.field private mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

.field private mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

.field private mIsAllTouchEventInTargetArea:Z

.field private final mMargin:I

.field private mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

.field private mTargetView:Landroid/view/View;

.field private final mTouchSlop:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmClientListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDoubleTouchScaleAndRotateDetector(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mchangeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->changeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSingleTouchMoveAndStopDetector(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$NullInteractionListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$NullInteractionListener;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$NullInteractionListener-IA;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->NULL_LISTENER:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    .line 203
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;-><init>(Landroid/content/Context;Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;II)V
    .locals 2

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mIsAllTouchEventInTargetArea:Z

    .line 63
    sget-object v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->NULL_LISTENER:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    .line 251
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    .line 212
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mContext:Landroid/content/Context;

    .line 213
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTargetView:Landroid/view/View;

    .line 214
    iput p3, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mMargin:I

    .line 215
    iput p4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTouchSlop:I

    .line 218
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V

    .line 221
    new-instance p1, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    invoke-direct {p1}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    .line 222
    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->setScaleAndRotateDetectorListener(Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;)V

    return-void
.end method

.method private declared-synchronized changeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V
    .locals 0

    monitor-enter p0

    .line 254
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getAndroidGestureDetector()Landroid/view/GestureDetector;
    .locals 4

    .line 792
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mAndroidGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 793
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    .line 796
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, p0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mAndroidGestureDetector:Landroid/view/GestureDetector;

    .line 799
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mAndroidGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method private getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    iget v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTouchSlop:I

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .line 785
    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->setTouchStopDetectorListener(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;)V

    .line 787
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    return-object p0
.end method

.method private hitTest(Landroid/view/View;III)Z
    .locals 1

    .line 708
    new-instance p0, Landroid/graphics/Rect;

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    .line 712
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-direct {p0, p2, p2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 714
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 803
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle-IA;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->changeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    return-void
.end method

.method public declared-synchronized onDoubleTouchRotateDetected(FF)V
    .locals 1

    monitor-enter p0

    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleTouchRotateEvent(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDoubleTouchScaleDetected(FFF)V
    .locals 1

    monitor-enter p0

    .line 734
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleTouchScaleEvent(FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    monitor-enter p0

    .line 748
    monitor-exit p0

    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    monitor-enter p0

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    monitor-enter p0

    .line 760
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onLongPress(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    monitor-enter p0

    .line 767
    monitor-exit p0

    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized onShowPress(Landroid/view/MotionEvent;)V
    .locals 1

    monitor-enter p0

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onShowPress(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    monitor-enter p0

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onSingleTapUp(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSingleTouchMoveDetected(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    monitor-enter p0

    .line 720
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleSingleTouchMoveEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSingleTouchStopDetected(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    monitor-enter p0

    .line 727
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleSingleTouchStopEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const-string v0, "onTouchEvent() getActionMasked:"

    monitor-enter p0

    .line 652
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", getPointerCount:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 654
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 652
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_2

    move v0, v2

    .line 658
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 659
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTargetView:Landroid/view/View;

    iget v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mMargin:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {p0, v1, v4, v5, v6}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->hitTest(Landroid/view/View;III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 660
    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mIsAllTouchEventInTargetArea:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    :cond_1
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mIsAllTouchEventInTargetArea:Z

    .line 670
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto :goto_1

    .line 678
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v3, v0, :cond_6

    .line 680
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    move-result-object v0

    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 680
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->updateCurrentPosition(II)V

    goto :goto_1

    .line 689
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->stopTouchStopDetection()V

    goto :goto_1

    .line 673
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    move-result-object v0

    .line 674
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 673
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->startTouchStopDetection(II)V

    .line 693
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_8

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mIsAllTouchEventInTargetArea:Z

    if-eqz v0, :cond_7

    goto :goto_2

    .line 697
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->cancel()V

    goto :goto_3

    .line 695
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleMotionEvent(Landroid/view/MotionEvent;)V

    .line 701
    :goto_3
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getAndroidGestureDetector()Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 703
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mIsAllTouchEventInTargetArea:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 226
    :try_start_0
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mContext:Landroid/content/Context;

    .line 227
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTargetView:Landroid/view/View;

    .line 229
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->release()V

    .line 231
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->release()V

    .line 234
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    .line 235
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mAndroidGestureDetector:Landroid/view/GestureDetector;

    .line 237
    sget-object v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->NULL_LISTENER:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    goto :goto_0

    .line 69
    :cond_0
    sget-object p1, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->NULL_LISTENER:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    :goto_0
    return-void
.end method
