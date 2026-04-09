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
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleStop;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleDown;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$NullInteractionListener;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;
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
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$NullInteractionListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$NullInteractionListener;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->NULL_LISTENER:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    .line 202
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;-><init>(Landroid/content/Context;Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;II)V
    .locals 2

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mIsAllTouchEventInTargetArea:Z

    .line 62
    sget-object v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->NULL_LISTENER:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    .line 250
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    .line 211
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mContext:Landroid/content/Context;

    .line 212
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTargetView:Landroid/view/View;

    .line 213
    iput p3, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mMargin:I

    .line 214
    iput p4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTouchSlop:I

    .line 217
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V

    .line 220
    new-instance p1, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    invoke-direct {p1}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    .line 221
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->setScaleAndRotateDetectorListener(Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->changeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized changeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V
    .locals 0

    monitor-enter p0

    .line 253
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 252
    monitor-exit p0

    throw p1
.end method

.method private getAndroidGestureDetector()Landroid/view/GestureDetector;
    .locals 4

    .line 791
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mAndroidGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 792
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v0, v1, p0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mAndroidGestureDetector:Landroid/view/GestureDetector;

    .line 798
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mAndroidGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method private getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;
    .locals 2

    .line 782
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    if-nez v0, :cond_0

    .line 783
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    iget v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTouchSlop:I

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .line 784
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->setTouchStopDetectorListener(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;)V

    .line 786
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    return-object p0
.end method

.method private hitTest(Landroid/view/View;III)Z
    .locals 1

    .line 707
    new-instance p0, Landroid/graphics/Rect;

    .line 710
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-direct {p0, p2, p2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 713
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 802
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->changeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    return-void
.end method

.method public declared-synchronized onDoubleTouchRotateDetected(FF)V
    .locals 1

    monitor-enter p0

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleTouchRotateEvent(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 739
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDoubleTouchScaleDetected(FFF)V
    .locals 1

    monitor-enter p0

    .line 733
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleTouchScaleEvent(FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 732
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    monitor-enter p0

    .line 747
    monitor-exit p0

    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    monitor-enter p0

    .line 753
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 754
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 752
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    monitor-enter p0

    .line 759
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onLongPress(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 758
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    monitor-enter p0

    .line 766
    monitor-exit p0

    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized onShowPress(Landroid/view/MotionEvent;)V
    .locals 1

    monitor-enter p0

    .line 771
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onShowPress(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 770
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    monitor-enter p0

    .line 776
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onSingleTapUp(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 777
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 775
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSingleTouchMoveDetected(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    monitor-enter p0

    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleSingleTouchMoveEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 718
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSingleTouchStopDetected(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    monitor-enter p0

    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleSingleTouchStopEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 725
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    monitor-enter p0

    .line 651
    :try_start_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent() getActionMasked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", getPointerCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 651
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_2

    move v0, v1

    .line 657
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 658
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTargetView:Landroid/view/View;

    iget v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mMargin:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->hitTest(Landroid/view/View;III)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 659
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mIsAllTouchEventInTargetArea:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
    :cond_1
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mIsAllTouchEventInTargetArea:Z

    .line 669
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 677
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 679
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    move-result-object v0

    .line 680
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 679
    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->updateCurrentPosition(II)V

    goto :goto_1

    .line 688
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->stopTouchStopDetection()V

    goto :goto_1

    .line 672
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    move-result-object v0

    .line 673
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 672
    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->startTouchStopDetection(II)V

    .line 692
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mIsAllTouchEventInTargetArea:Z

    if-eqz v0, :cond_4

    goto :goto_2

    .line 696
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->cancel()V

    goto :goto_3

    .line 694
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleMotionEvent(Landroid/view/MotionEvent;)V

    .line 700
    :goto_3
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getAndroidGestureDetector()Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 702
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mIsAllTouchEventInTargetArea:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 650
    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 225
    :try_start_0
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mContext:Landroid/content/Context;

    .line 226
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTargetView:Landroid/view/View;

    .line 228
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->release()V

    .line 230
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->release()V

    .line 233
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    .line 234
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mAndroidGestureDetector:Landroid/view/GestureDetector;

    .line 236
    sget-object v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->NULL_LISTENER:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 224
    monitor-exit p0

    throw v0
.end method

.method public setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    goto :goto_0

    .line 68
    :cond_0
    sget-object p1, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->NULL_LISTENER:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    :goto_0
    return-void
.end method
