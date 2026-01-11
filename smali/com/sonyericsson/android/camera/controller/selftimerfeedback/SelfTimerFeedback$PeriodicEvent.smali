.class Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;
.super Ljava/lang/Object;
.source "SelfTimerFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeriodicEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;

.field private mCounter:J

.field private final mDuration:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInterval:J

.field private mStartTime:J

.field private final mTickEvent:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCallback:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCounter(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCounter:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmDuration(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mDuration:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterval(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mInterval:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmCounter(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCounter:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleNextTick(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->scheduleNextTick()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;JI)V
    .locals 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;-><init>(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mTickEvent:Ljava/lang/Runnable;

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mHandler:Landroid/os/Handler;

    .line 156
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCallback:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;

    .line 157
    iput-wide p3, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mInterval:J

    .line 158
    iput p5, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mDuration:I

    return-void
.end method

.method private scheduleNextTick()V
    .locals 8

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mTickEvent:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mStartTime:J

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCounter:J

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mInterval:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public start(J)V
    .locals 2

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mStartTime:J

    const-wide/16 p1, 0x0

    .line 163
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCounter:J

    .line 164
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->scheduleNextTick()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mTickEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
