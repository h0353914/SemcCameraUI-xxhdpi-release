.class public Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;
.super Ljava/lang/Object;
.source "SideTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;,
        Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;,
        Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$GestureHandler;,
        Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DebugListener;,
        Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;,
        Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_DOUBLE_TAP_TIMEOUT:I = 0x168

.field private static final DOUBLE_TAP_MIN_TIME:I = 0x1e

.field private static final DOUBLE_TAP_SLOP:I = 0x1e

.field public static final INVALID_GESTURE_ID:I = -0x1

.field private static final LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final MAXIMUM_FLING_VELOCITY_IN_DP:I = 0x1f40

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final MINIMUM_FLING_VELOCITY_IN_DP:I = 0x32

.field private static final MSG_LONG_PRESS:I = 0x1

.field private static final MSG_TAP:I = 0x2

.field private static final SETTINGS_KEY_DOUBLE_TAP_TIMEOUT:Ljava/lang/String; = "somc.side_sense_double_tap_timeout"

.field private static final SOURCE_SIDETOUCH:I = 0x20000000

.field private static final TOUCH_SLOP:I = 0x8

.field private static final TOUCH_SLOP_IN_DP:I = 0xe


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDebugListener:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DebugListener;

.field private mDoubleTapInfo:Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;

.field private mDoubleTapListener:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;

.field private mDoubleTapMinTime:I

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTimeout:I

.field private mDoubleTapTimeoutLearning:I

.field private mDoubleTapTimeoutReal:I

.field private mDynamicSettings:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;

.field private mGestureIds:I

.field private mGestures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;",
            ">;"
        }
    .end annotation
.end field

.field private mGesturesWaitingPointer:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsLearningMode:Z

.field private mIsLongpressEnabled:Z

.field private mListener:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;

.field private mLongPressTimeout:I

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;-><init>(Landroid/content/Context;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    .line 109
    iput v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mLongPressTimeout:I

    const/16 v0, 0x168

    .line 110
    iput v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapTimeout:I

    const/16 v0, 0x1e

    .line 111
    iput v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapMinTime:I

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGestures:Ljava/util/Set;

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGesturesWaitingPointer:Ljava/util/Set;

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGestureIds:I

    .line 131
    new-instance v0, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;

    invoke-direct {v0}, Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapInfo:Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;

    const/16 v0, 0x44c

    .line 132
    iput v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapTimeoutLearning:I

    .line 186
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_0

    .line 188
    new-instance v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$GestureHandler;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 190
    :cond_0
    new-instance p3, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$GestureHandler;

    invoke-direct {p3, p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$GestureHandler;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)V

    iput-object p3, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mHandler:Landroid/os/Handler;

    .line 192
    :goto_0
    iput-object p2, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mListener:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;

    .line 193
    instance-of p3, p2, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;

    if-eqz p3, :cond_1

    .line 194
    check-cast p2, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, p2}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->setOnDoubleTapListener(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;)V

    .line 196
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->moveToWaitingList(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->removeFromWaitingList(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->releaseGestureId(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mListener:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->acquireGestureId()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DebugListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDebugListener:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DebugListener;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapListener:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapTimeout:I

    return p0
.end method

.method static synthetic access$2300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mIsLongpressEnabled:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mLongPressTimeout:I

    return p0
.end method

.method static synthetic access$2600(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mTouchSlopSquare:I

    return p0
.end method

.method static synthetic access$3000(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapTimeoutReal:I

    return p0
.end method

.method static synthetic access$3100(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapMinTime:I

    return p0
.end method

.method static synthetic access$3200(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mIsLearningMode:Z

    return p0
.end method

.method static synthetic access$3300(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapInfo:Lcom/sonymobile/sidetouchgesturedetector/DoubleTapInfo;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapSlopSquare:I

    return p0
.end method

.method static synthetic access$3500(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mMaximumFlingVelocity:I

    return p0
.end method

.method static synthetic access$3600(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)Landroid/view/VelocityTracker;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mMinimumFlingVelocity:I

    return p0
.end method

.method private acquireGestureId()I
    .locals 2

    .line 379
    iget v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGestureIds:I

    not-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v0

    .line 380
    iget v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGestureIds:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGestureIds:I

    .line 381
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    return p0
.end method

.method private dp2px(F)I
    .locals 0

    .line 402
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mListener:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;

    if-nez v0, :cond_0

    .line 201
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "OnGestureListener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p1, :cond_1

    .line 204
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Context must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mIsLongpressEnabled:Z

    .line 208
    new-instance v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;

    invoke-direct {v0, p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;)V

    iput-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDynamicSettings:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;

    const/high16 v0, 0x41600000    # 14.0f

    .line 210
    invoke-direct {p0, v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->dp2px(F)I

    move-result v0

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/4 v1, 0x4

    .line 213
    invoke-virtual {p1, v1}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x42340000    # 45.0f

    .line 214
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->dp2px(F)I

    move-result p1

    goto :goto_0

    :cond_2
    const/high16 p1, 0x41f00000    # 30.0f

    .line 216
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->dp2px(F)I

    move-result p1

    :goto_0
    const/high16 v1, 0x42480000    # 50.0f

    .line 218
    invoke-direct {p0, v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->dp2px(F)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mMinimumFlingVelocity:I

    const/high16 v1, 0x45fa0000    # 8000.0f

    .line 219
    invoke-direct {p0, v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->dp2px(F)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mMaximumFlingVelocity:I

    mul-int/2addr v0, v0

    .line 220
    iput v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mTouchSlopSquare:I

    mul-int/2addr p1, p1

    .line 221
    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapSlopSquare:I

    return-void
.end method

.method private moveToWaitingList(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGestures:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGesturesWaitingPointer:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private releaseGestureId(I)V
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 386
    iget v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGestureIds:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGestureIds:I

    return-void
.end method

.method private removeFromWaitingList(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGesturesWaitingPointer:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGestures:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getDoubleTapTimeout()I
    .locals 0

    .line 250
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapTimeout:I

    return p0
.end method

.method public isLongpressEnabled()Z
    .locals 0

    .line 233
    iget-boolean p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mIsLongpressEnabled:Z

    return p0
.end method

.method public onSideTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/high16 v0, 0x20000000

    .line 300
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 304
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 353
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 358
    iput-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 361
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mListener:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;->onCancel(Landroid/view/MotionEvent;)V

    .line 364
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGestures:Ljava/util/Set;

    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGesturesWaitingPointer:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 365
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGesturesWaitingPointer:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 366
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGestures:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    .line 367
    invoke-virtual {p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->cancel()V

    goto :goto_0

    .line 337
    :pswitch_2
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGestures:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    .line 338
    invoke-virtual {v0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->onMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 344
    :pswitch_3
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGestures:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    .line 345
    invoke-virtual {v0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->onUpEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 312
    :pswitch_4
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGesturesWaitingPointer:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    .line 313
    invoke-virtual {v4, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->onDownEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v3

    :cond_4
    if-nez v1, :cond_7

    .line 321
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGestures:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    .line 322
    invoke-virtual {v4, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->onDownEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v3

    :cond_6
    if-nez v1, :cond_7

    .line 329
    new-instance v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;-><init>(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$1;)V

    .line 330
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mGestures:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-virtual {v0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$Gesture;->onDownEvent(Landroid/view/MotionEvent;)Z

    :cond_7
    :goto_2
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public registerSettingsObserver()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDynamicSettings:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;

    if-eqz v0, :cond_0

    .line 238
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDynamicSettings:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;

    invoke-virtual {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->registerObserver()V

    :cond_0
    return-void
.end method

.method public setDebugListener(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DebugListener;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDebugListener:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DebugListener;

    return-void
.end method

.method public setDoubleTapMinTime(I)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapMinTime:I

    return-void
.end method

.method public setDoubleTapSlop(F)V
    .locals 0

    .line 275
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->dp2px(F)I

    move-result p1

    mul-int/2addr p1, p1

    .line 276
    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapSlopSquare:I

    return-void
.end method

.method public setDoubleTapTimeout(I)V
    .locals 0

    .line 262
    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapTimeout:I

    return-void
.end method

.method public setDoubleTapTimeoutLearning(I)V
    .locals 0

    .line 296
    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapTimeoutLearning:I

    return-void
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mIsLongpressEnabled:Z

    return-void
.end method

.method public setLearningMode(Z)V
    .locals 0

    .line 289
    iput-boolean p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mIsLearningMode:Z

    .line 290
    invoke-virtual {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->getDoubleTapTimeout()I

    move-result p1

    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapTimeoutReal:I

    .line 291
    iget p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapTimeoutLearning:I

    invoke-virtual {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->setDoubleTapTimeout(I)V

    return-void
.end method

.method public setLongPressTimeout(I)V
    .locals 0

    .line 258
    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mLongPressTimeout:I

    return-void
.end method

.method public setMaximumFlingVelocity(F)V
    .locals 0

    .line 284
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mMaximumFlingVelocity:I

    return-void
.end method

.method public setMinimumFlingVelocity(F)V
    .locals 0

    .line 280
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mMinimumFlingVelocity:I

    return-void
.end method

.method public setOnDoubleTapListener(Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDoubleTapListener:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnDoubleTapListener;

    return-void
.end method

.method public setTouchSlop(F)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->dp2px(F)I

    move-result p1

    mul-int/2addr p1, p1

    .line 271
    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mTouchSlopSquare:I

    return-void
.end method

.method public unregisterSettingsObserver()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDynamicSettings:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;

    if-eqz v0, :cond_0

    .line 244
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->mDynamicSettings:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;

    invoke-virtual {p0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$DynamicSettings;->unregisterObserver()V

    :cond_0
    return-void
.end method
