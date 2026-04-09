.class abstract Lcom/sonyericsson/android/camera/controller/GestureShutter$State;
.super Ljava/lang/Object;
.source "GestureShutter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/GestureShutter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "State"
.end annotation


# instance fields
.field final mCanStartDetection:Z

.field final mCanStopDetection:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;ZZ)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->mCanStartDetection:Z

    .line 365
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->mCanStopDetection:Z

    return-void
.end method


# virtual methods
.method entry()V
    .locals 0

    return-void
.end method

.method handleConfirmingFinished()V
    .locals 0

    return-void
.end method

.method handleDetectResult(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;)V
    .locals 0

    return-void
.end method

.method handleProceedFinished()V
    .locals 0

    return-void
.end method

.method handleRewindFinished()V
    .locals 0

    return-void
.end method

.method setWindowHost(Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 400
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method updateDetectionStatus()V
    .locals 3

    .line 369
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->mCanStartDetection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$300(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startHandSignLostNumCounting()V

    .line 371
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStandBy;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$400(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->mCanStopDetection:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$300(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->resetHandSignLostNum()V

    .line 374
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateStopped;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;Z)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$400(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/controller/GestureShutter$State;)V

    :cond_1
    :goto_0
    return-void
.end method
