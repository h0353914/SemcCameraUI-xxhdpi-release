.class public Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;
.super Ljava/lang/Object;
.source "SelfTimerFeedback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;,
        Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;
    }
.end annotation


# static fields
.field private static final SELF_TIMER_BLINK_DURATION:I = 0x64

.field private static final SELF_TIMER_INTERVALS:[I

.field private static final SELF_TIMER_LEVEL_THRESHOLDS:[I

.field private static final SELF_TIMER_LIGHT_MIN_INTERVAL:I = 0xfa

.field public static final TAG:Ljava/lang/String; = "SelfTimerFeedback"


# instance fields
.field private final mDuration:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIsBlinkNeeded:Z

.field private mIsOnBlinkFinishedCalled:Z

.field private final mLedLight:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;

.field private final mLedOffTask:Ljava/lang/Runnable;

.field private final mListener:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;

.field private final mOnTickEvent:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;

.field private final mPeriodicEvent:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDuration(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mDuration:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsBlinkNeeded(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mIsBlinkNeeded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsOnBlinkFinishedCalled(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mIsOnBlinkFinishedCalled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLedLight(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)Lcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mLedLight:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mListener:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsOnBlinkFinishedCalled(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mIsOnBlinkFinishedCalled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mblink(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->blink()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetSELF_TIMER_INTERVALS()[I
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_INTERVALS:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSELF_TIMER_LEVEL_THRESHOLDS()[I
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_LEVEL_THRESHOLDS:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xfa0

    const/16 v1, 0x2710

    const/16 v2, 0x1f4

    const/16 v3, 0x7d0

    .line 31
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_LEVEL_THRESHOLDS:[I

    const/16 v0, 0xfa

    const/16 v1, 0x3e8

    const/4 v3, -0x1

    .line 32
    filled-new-array {v3, v0, v2, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_INTERVALS:[I

    return-void
.end method

.method public constructor <init>(ILcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;ZLcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;)V
    .locals 6

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v2, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;-><init>(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mOnTickEvent:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;

    .line 133
    new-instance v0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$2;-><init>(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mLedOffTask:Ljava/lang/Runnable;

    .line 57
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mDuration:I

    .line 58
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mLedLight:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;

    .line 59
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mIsBlinkNeeded:Z

    .line 60
    iput-object p4, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mListener:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;

    .line 61
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance p2, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    const-wide/16 v3, 0xfa

    move-object v0, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;-><init>(Landroid/os/Handler;Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;JI)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mPeriodicEvent:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    return-void
.end method

.method private blink()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mLedLight:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/LedLight;->turnOn()V

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mLedOffTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public start(I)V
    .locals 2

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mIsOnBlinkFinishedCalled:Z

    .line 68
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mPeriodicEvent:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->start(J)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mPeriodicEvent:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->stop()V

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->mLedOffTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
