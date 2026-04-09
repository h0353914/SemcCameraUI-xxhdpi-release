.class public Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;
.super Ljava/lang/Object;
.source "TouchMoveAndStopDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;,
        Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;
    }
.end annotation


# static fields
.field private static final DIRECTION_TOLERANCE:F = 1.0471976f

.field public static final TAG:Ljava/lang/String; = "TouchMoveAndStopDetector"


# instance fields
.field private TOUCH_STOP_DETECTION_TIMER_INTERVAL:I

.field private mCurrentTouchPos:Landroid/graphics/Point;

.field private mDownPos:Landroid/graphics/Point;

.field private mIsFingerAlreadyMoved:Z

.field private mLatestCheckedPos:Landroid/graphics/Point;

.field private mLatestCheckedTrackVec:Landroid/graphics/Point;

.field private mListener:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;

.field private mPreviousTouchPos:Landroid/graphics/Point;

.field private final mTouchSlop:I

.field private mTouchSlopAreaCenterPos:Landroid/graphics/Point;

.field private mTouchStopDetectorTimer:Ljava/util/Timer;

.field private mTouchStopDetectorTimerTask:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

.field private mUiThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 33
    iput v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->TOUCH_STOP_DETECTION_TIMER_INTERVAL:I

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mUiThreadHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mDownPos:Landroid/graphics/Point;

    .line 46
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    .line 47
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    .line 48
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mPreviousTouchPos:Landroid/graphics/Point;

    .line 49
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedPos:Landroid/graphics/Point;

    .line 50
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedTrackVec:Landroid/graphics/Point;

    .line 56
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mIsFingerAlreadyMoved:Z

    .line 60
    iput p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlop:I

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mDownPos:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedPos:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedTrackVec:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;IILandroid/graphics/Point;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->updateLastCheckedParameters(IILandroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mIsFingerAlreadyMoved:Z

    return p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->onTouchStopDetected()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlop:I

    return p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mPreviousTouchPos:Landroid/graphics/Point;

    return-object p0
.end method

.method private killTimer()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 143
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->cancel()Z

    .line 147
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

    :cond_1
    return-void
.end method

.method private onTouchStopDetected()V
    .locals 3

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mIsFingerAlreadyMoved:Z

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$1;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateLastCheckedParameters(IILandroid/graphics/Point;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedPos:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 197
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedTrackVec:Landroid/graphics/Point;

    iget p1, p3, Landroid/graphics/Point;->x:I

    iget p2, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method


# virtual methods
.method release()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->killTimer()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;

    return-void
.end method

.method public setTouchStopDetectorListener(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;

    return-void
.end method

.method public declared-synchronized startTouchStopDetection(II)V
    .locals 6

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mDownPos:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mPreviousTouchPos:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mIsFingerAlreadyMoved:Z

    .line 91
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->killTimer()V

    .line 92
    new-instance p1, Ljava/util/Timer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/Timer;-><init>(Z)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    .line 93
    new-instance p1, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$1;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

    iget p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->TOUCH_STOP_DETECTION_TIMER_INTERVAL:I

    int-to-long v2, p1

    iget p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->TOUCH_STOP_DETECTION_TIMER_INTERVAL:I

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 80
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopTouchStopDetection()V
    .locals 2

    monitor-enter p0

    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->killTimer()V

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mPreviousTouchPos:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedPos:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedTrackVec:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 128
    monitor-exit p0

    throw v0
.end method

.method public updateCurrentAndLastPosition(II)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mPreviousTouchPos:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 124
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public updateCurrentPosition(II)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mPreviousTouchPos:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 109
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, p2

    .line 110
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, v0

    .line 111
    iget v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlop:I

    iget v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlop:I

    mul-int/2addr v0, v1

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mIsFingerAlreadyMoved:Z

    .line 116
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mPreviousTouchPos:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mDownPos:Landroid/graphics/Point;

    invoke-interface {p1, p2, v0, p0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;->onSingleTouchMoveDetected(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method
