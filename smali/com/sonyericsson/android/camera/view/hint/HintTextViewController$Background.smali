.class Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;
.super Landroid/widget/FrameLayout;
.source "HintTextViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Background"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Landroid/content/Context;)V
    .locals 0

    .line 774
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    .line 775
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 780
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 785
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTouchEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->-$$Nest$fgetmContentPrioritizedStack(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 788
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    const-class v2, Lcom/sonyericsson/android/camera/view/hint/HintTextAutoPowerOff;

    const-string v2, "HintTextAutoPowerOff"

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->isHintTextDisplayed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 791
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->-$$Nest$fgetmAutoPowerOffExclusiveView(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 792
    new-instance v0, Landroid/graphics/Point;

    .line 793
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 794
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;->getLeft()I

    move-result v3

    add-int/2addr p1, v3

    invoke-direct {v0, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 795
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$Background;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->-$$Nest$fgetmAutoPowerOffExclusiveView(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isEventContainedInView(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method
