.class Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;
.super Ljava/lang/Object;
.source "SelfTimerFeedback.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTick(J)V
    .locals 6

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->-$$Nest$fgetmDuration(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, p1

    .line 95
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remain time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const-wide/16 v2, 0x3e8

    .line 97
    rem-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const-wide/16 v2, 0xfa0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    cmp-long p1, p1, v4

    if-lez p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;->onSoundTypeChange(J)V

    :cond_1
    cmp-long p1, v0, v4

    if-gtz p1, :cond_2

    .line 102
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;->onCountDownFinished()V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 107
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->-$$Nest$sfgetSELF_TIMER_LEVEL_THRESHOLDS()[I

    move-result-object p2

    array-length p2, p2

    if-ge p1, p2, :cond_4

    .line 108
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->-$$Nest$sfgetSELF_TIMER_LEVEL_THRESHOLDS()[I

    move-result-object p2

    aget p2, p2, p1

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-gtz p2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 114
    :cond_4
    :goto_1
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->-$$Nest$sfgetSELF_TIMER_LEVEL_THRESHOLDS()[I

    move-result-object p2

    array-length p2, p2

    const/4 v2, 0x1

    if-lt p1, p2, :cond_5

    .line 115
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->-$$Nest$sfgetSELF_TIMER_LEVEL_THRESHOLDS()[I

    move-result-object p1

    array-length p1, p1

    sub-int/2addr p1, v2

    .line 118
    :cond_5
    iget-object p2, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->-$$Nest$fgetmIsBlinkNeeded(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)Z

    move-result p2

    if-eqz p2, :cond_7

    if-nez p1, :cond_6

    .line 121
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->-$$Nest$fgetmIsOnBlinkFinishedCalled(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 122
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$SelfTimerFeedbackListener;->onBlinkFinished()V

    .line 123
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->-$$Nest$fputmIsOnBlinkFinishedCalled(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;Z)V

    goto :goto_2

    .line 125
    :cond_6
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->-$$Nest$sfgetSELF_TIMER_LEVEL_THRESHOLDS()[I

    move-result-object p2

    aget p2, p2, p1

    int-to-long v2, p2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->-$$Nest$sfgetSELF_TIMER_INTERVALS()[I

    move-result-object p2

    aget p1, p2, p1

    int-to-long p1, p1

    rem-long/2addr v0, p1

    cmp-long p1, v0, v4

    if-nez p1, :cond_7

    .line 127
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;->-$$Nest$mblink(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback;)V

    :cond_7
    :goto_2
    return-void
.end method
