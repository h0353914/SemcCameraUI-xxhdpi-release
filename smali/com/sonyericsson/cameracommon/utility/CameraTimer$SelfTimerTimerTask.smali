.class Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;
.super Ljava/util/TimerTask;
.source "CameraTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/CameraTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelfTimerTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/utility/CameraTimer;Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;-><init>(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->-$$Nest$fgetmCurTime(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 114
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->-$$Nest$fgetmCurTime(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    .line 117
    iput v1, v0, Landroid/os/Message;->what:I

    .line 118
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->-$$Nest$fgetmHandler(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->-$$Nest$fgetmCurTime(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    .line 125
    iput v1, v0, Landroid/os/Message;->what:I

    .line 126
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->-$$Nest$fgetmHandler(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->-$$Nest$mterminateInnerTimer(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)V

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->-$$Nest$fgetmCurTime(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)J

    move-result-wide v1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;->this$0:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->-$$Nest$fgetmInterval(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->-$$Nest$fputmCurTime(Lcom/sonyericsson/cameracommon/utility/CameraTimer;J)V

    return-void
.end method
