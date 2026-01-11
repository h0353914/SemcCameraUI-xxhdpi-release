.class Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;
.super Ljava/lang/Object;
.source "SelfTimerCountDownNumberView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCountDownNumberTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->-$$Nest$fgetmCurrentCount(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->-$$Nest$fputmCurrentCount(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;I)V

    .line 305
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->-$$Nest$msetImage(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V

    .line 306
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->-$$Nest$fgetmCurrentCount(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)I

    move-result v0

    if-le v0, v2, :cond_0

    .line 307
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$UpdateCountDownNumberTask;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->-$$Nest$mpostNextUpdateEvent(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V

    :cond_0
    return-void
.end method
