.class Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;
.super Lcom/sonyericsson/android/camera/controller/GestureShutter$State;
.source "GestureShutter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/GestureShutter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateStopped"
.end annotation


# instance fields
.field private final mStopForRelease:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;Z)V
    .locals 2

    .line 454
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 455
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;ZZ)V

    .line 456
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->mStopForRelease:Z

    return-void
.end method

.method private releaseDetectorIfNeeded()V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$200(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$800(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->mStopForRelease:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    .line 463
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$900(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    .line 464
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$1000(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$200(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;->release()V

    .line 466
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$202(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    :cond_1
    return-void
.end method


# virtual methods
.method entry()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$500(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$500(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;->hideGestureShutterView()V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$200(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$200(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$200(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;->stopDetect()V

    .line 480
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->releaseDetectorIfNeeded()V

    .line 482
    :cond_2
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->mStopForRelease:Z

    if-eqz v0, :cond_3

    .line 483
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateReleasing;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateReleasing;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$400(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [mStopForRelease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->mStopForRelease:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method updateDetectionStatus()V
    .locals 0

    .line 489
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;->releaseDetectorIfNeeded()V

    .line 490
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->updateDetectionStatus()V

    return-void
.end method
