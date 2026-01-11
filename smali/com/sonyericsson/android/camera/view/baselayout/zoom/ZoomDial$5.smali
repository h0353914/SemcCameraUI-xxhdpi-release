.class Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;
.super Ljava/lang/Object;
.source "ZoomDial.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTouchZoomPointView:Landroid/view/View;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;


# direct methods
.method static bridge synthetic -$$Nest$mcalcMovedRatio(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->calcMovedRatio(F)F

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calcMoveStep(FF)F
    .locals 1

    div-float/2addr p1, p2

    .line 558
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomRatios(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmCurrentStep(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    const v0, 0x3f1d70a4    # 0.615f

    mul-float/2addr p2, v0

    .line 560
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomRatioMax(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F

    move-result v0

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide p1

    double-to-float p1, p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmCurrentStep(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    return p1
.end method

.method private calcMovedRatio(F)F
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmCurrentStep(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    const/high16 v1, 0x43cc0000    # 408.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 567
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmMovedX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F

    move-result p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmSliderViewWidth(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_0

    .line 570
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmMaxZoomStep(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    const p0, 0x3fa66666    # 1.3f

    mul-float/2addr p1, p0

    :goto_0
    return p1
.end method

.method private cancelClickZoomPoint()V
    .locals 1

    const/4 v0, 0x0

    .line 510
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->mTouchZoomPointView:Landroid/view/View;

    .line 511
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->postZoomStarted()V

    return-void
.end method

.method private doClickZoomPoint()V
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 519
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->LENS_BUTTON_TAP:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 520
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->mTouchZoomPointView:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomScaleBackgroundLayout0(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x43280000    # 168.0f

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmIsBokehMode(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    goto :goto_0

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    .line 526
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmDialbarArea(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 527
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    goto/16 :goto_3

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->mTouchZoomPointView:Landroid/view/View;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomScaleBackgroundLayout1(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    .line 531
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmDialbarArea(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 532
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    goto/16 :goto_3

    .line 535
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->mTouchZoomPointView:Landroid/view/View;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomScaleBackgroundLayout2(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 536
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmIsBokehMode(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 537
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    goto :goto_1

    .line 539
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v0

    const/high16 v1, 0x43cc0000    # 408.0f

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    .line 541
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmDialbarArea(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 542
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    goto :goto_3

    .line 544
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->mTouchZoomPointView:Landroid/view/View;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomScaleBackgroundLayout3(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 545
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmIsBokehMode(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 546
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    goto :goto_2

    .line 548
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object v0

    const v1, 0x44718000    # 966.0f

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    .line 550
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmDialbarArea(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 551
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    :cond_7
    :goto_3
    return-void
.end method

.method private finishZoomUI()V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->mTouchZoomPointView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmDialbarArea(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->doClickZoomPoint()V

    :cond_0
    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->zoomEnd()V

    .line 451
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    return-void
.end method

.method private getTouchZoomPointView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomScaleBackgroundLayout0(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->isTouchZoomPoint(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomScaleBackgroundLayout0(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object p0

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomScaleBackgroundLayout1(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->isTouchZoomPoint(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomScaleBackgroundLayout1(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object p0

    goto :goto_0

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomScaleBackgroundLayout2(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->isTouchZoomPoint(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomScaleBackgroundLayout2(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object p0

    goto :goto_0

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomScaleBackgroundLayout3(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->isTouchZoomPoint(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 463
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomScaleBackgroundLayout3(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private isChangeRatio(ILandroid/view/MotionEvent;)Z
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmCurrentStep(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result v0

    add-int/2addr v0, p1

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-static {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fputmPrevX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)V

    move v0, v1

    goto :goto_0

    .line 580
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomRatios(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 581
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomRatios(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    .line 582
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-static {v2, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fputmPrevX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)V

    .line 585
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomRatios(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/util/List;

    move-result-object p2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmCurrentStep(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result v2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomRatios(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/util/List;

    move-result-object p0

    .line 586
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p2, p0, :cond_2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    return p1
.end method

.method private isTouchZoomPoint(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 477
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    .line 481
    new-array v0, v0, [I

    .line 482
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x1

    .line 487
    aget v3, v0, v2

    .line 489
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iget v4, v4, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->recordingOrientation:I

    if-eq v4, v2, :cond_2

    instance-of v4, p1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_1

    goto :goto_0

    .line 499
    :cond_1
    aget p0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr p0, v4

    .line 500
    aget v1, v0, v1

    goto :goto_1

    .line 490
    :cond_2
    :goto_0
    instance-of v4, p1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_3

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isMirroringRequired(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 492
    aget p0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr p0, v4

    .line 493
    aget v1, v0, v1

    goto :goto_1

    .line 495
    :cond_3
    aget p0, v0, v1

    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, p0

    .line 502
    :goto_1
    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    .line 503
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p0, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 506
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private isWithinDialbarHeight(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmDialbarArea(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private postZoomStarted()V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5$2;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 322
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iget-boolean p1, p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->eventEnable:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmIsGray(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->requestDisallowInterceptTouchEvent(Z)V

    .line 326
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmDialbarArea(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz p1, :cond_4

    .line 327
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomCenterLayout(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v2, :cond_4

    .line 328
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomDialButtonTextViewLeft(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->isTouchZoomPoint(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    .line 329
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomDialButtonTextViewCenter(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->isTouchZoomPoint(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 330
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomDialButtonTextViewRight(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->isTouchZoomPoint(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz p1, :cond_1

    .line 332
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomDialButtonCircleLeft(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->getCircleStyle()Landroid/graphics/Paint$Style;

    move-result-object p1

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne p1, v5, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomDialButtonTextViewLeft(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 333
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fputbt(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)V

    .line 334
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomButtonGestureDetector(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/GestureDetector;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0

    :cond_1
    if-eqz v3, :cond_2

    .line 340
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomDialButtonCircleCenter(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->getCircleStyle()Landroid/graphics/Paint$Style;

    move-result-object p1

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomDialButtonTextViewCenter(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 341
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fputbt(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)V

    .line 342
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomButtonGestureDetector(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/GestureDetector;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0

    :cond_2
    if-eqz v4, :cond_3

    .line 348
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomDialButtonCircleRight(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->getCircleStyle()Landroid/graphics/Paint$Style;

    move-result-object p1

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomDialButtonTextViewRight(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 349
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fputbt(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)V

    .line 350
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomButtonGestureDetector(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/GestureDetector;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0

    .line 354
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomCenterLayout(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->isTouchZoomPoint(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 355
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomButtonGestureDetector(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 360
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 361
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_d

    if-eq p1, v0, :cond_c

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_c

    const/4 v1, 0x5

    if-eq p1, v1, :cond_d

    const/4 p2, 0x6

    if-eq p1, p2, :cond_c

    goto/16 :goto_1

    .line 375
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmIsZooming(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 376
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fputmIsZooming(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V

    .line 377
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fputmPrevX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)V

    .line 378
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmPrevX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F

    move-result v1

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fputmMovedX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)V

    .line 381
    :cond_6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmIsDirectionRtl(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 382
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmPrevX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fputmMovedX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)V

    goto :goto_0

    .line 384
    :cond_7
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmPrevX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fputmMovedX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)V

    .line 386
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmMovedX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmSliderViewWidth(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->calcMoveStep(FF)F

    move-result p1

    float-to-int v1, p1

    .line 387
    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->isChangeRatio(ILandroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_2

    .line 392
    :cond_8
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->mTouchZoomPointView:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 393
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->cancelClickZoomPoint()V

    .line 396
    :cond_9
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmIsWideMode(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isShown()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 397
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmDialbarArea(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmMovedX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    .line 398
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showFullView()V

    .line 399
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    .line 402
    :cond_a
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmDialbarArea(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    .line 403
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5$1;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;F)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 411
    :cond_b
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fputmPrevX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)V

    goto :goto_2

    .line 418
    :cond_c
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->finishZoomUI()V

    goto :goto_2

    .line 364
    :cond_d
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fputmIsZooming(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V

    .line 365
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fputmPrevX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)V

    .line 366
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmPrevX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F

    move-result v1

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fputmMovedX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)V

    .line 368
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->getTouchZoomPointView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->mTouchZoomPointView:Landroid/view/View;

    if-nez p1, :cond_f

    .line 369
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetbt(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result p1

    if-nez p1, :cond_f

    .line 370
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;->postZoomStarted()V

    goto :goto_2

    :cond_e
    :goto_1
    const/4 v0, 0x0

    :cond_f
    :goto_2
    return v0
.end method
