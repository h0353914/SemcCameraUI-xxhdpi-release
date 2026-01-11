.class Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;
.super Ljava/lang/Object;
.source "SelfTimerFeedback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->-$$Nest$fgetmCounter(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->-$$Nest$fgetmInterval(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)J

    move-result-wide v3

    mul-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;->onTick(J)V

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->-$$Nest$fgetmCounter(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->-$$Nest$fputmCounter(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;J)V

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->-$$Nest$fgetmCounter(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->-$$Nest$fgetmInterval(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)J

    move-result-wide v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->-$$Nest$fgetmDuration(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 181
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;->this$0:Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->-$$Nest$mscheduleNextTick(Lcom/sonyericsson/android/camera/controller/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)V

    :cond_0
    return-void
.end method
