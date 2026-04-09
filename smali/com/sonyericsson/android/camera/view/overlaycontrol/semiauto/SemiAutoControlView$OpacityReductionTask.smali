.class final Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;
.super Ljava/lang/Object;
.source "SemiAutoControlView.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OpacityReductionTask"
.end annotation


# static fields
.field private static final DELAY:J = 0xbb8L

.field private static final DELTA:F = -0.5f

.field private static final DURATION:J = 0x12cL

.field private static final SOURCE_ALPHA:F = 1.0f

.field private static final TARGET_ALPHA:F = 0.5f


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private mStarted:Z

.field private mStartedTime:J

.field private final mTargetView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;->mTargetView:Ljava/lang/ref/WeakReference;

    .line 393
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 6

    .line 398
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;->mTargetView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 399
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;->mStarted:Z

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 405
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;->mStartedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long p2, v0, v2

    const-wide/16 v4, 0x12c

    if-gtz p2, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    sub-long/2addr v0, v2

    cmp-long p2, v0, v4

    if-lez p2, :cond_2

    move-wide v0, v4

    :cond_2
    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    const/high16 v2, -0x41000000    # -0.5f

    long-to-float v3, v0

    mul-float/2addr v2, v3

    const/high16 v3, 0x43960000    # 300.0f

    div-float/2addr v2, v3

    add-float/2addr p2, v2

    .line 415
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    cmp-long p1, v0, v4

    if-gez p1, :cond_3

    .line 418
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public start()V
    .locals 3

    .line 423
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;->mStarted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;->stop(Z)V

    .line 427
    :cond_0
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;->mStarted:Z

    .line 428
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;->mStartedTime:J

    .line 429
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;->mChoreographer:Landroid/view/Choreographer;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public stop(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 433
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;->mStarted:Z

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_0

    .line 436
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OpacityReductionTask;->mTargetView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 438
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
