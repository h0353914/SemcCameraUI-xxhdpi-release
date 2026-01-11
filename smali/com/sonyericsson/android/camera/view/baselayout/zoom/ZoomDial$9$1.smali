.class Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;
.super Ljava/lang/Object;
.source "ZoomDial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;)V
    .locals 0

    .line 1428
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1434
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomDialButtonTextView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomDialButtonTextView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object v1

    .line 1435
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1436
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomScaleBackgroundLayout2(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1437
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmSliderView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v2

    .line 1438
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1442
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmIsDirectionRtl(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1443
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmSliderViewBase(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v3

    .line 1444
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 1445
    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 1448
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmSliderViewBase(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v3

    .line 1449
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    .line 1451
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1453
    :goto_0
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1455
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmSliderView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1457
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomPoint0TextView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object v1

    .line 1458
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomDialScale0DOT7to1MarginView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/View;

    move-result-object v2

    .line 1459
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fputm0dot7ToFirstPointWidth(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)V

    .line 1460
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomPoint1TextView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object v1

    .line 1461
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomDialScale1to2MarginView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/View;

    move-result-object v2

    .line 1462
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fputmFirstToSecondPointWidth(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)V

    .line 1464
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomPoint2TextView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;

    move-result-object v1

    .line 1465
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmZoomDialScale2to3MarginView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/View;

    move-result-object p0

    .line 1466
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr v1, p0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fputmSecondToThirdPointWidth(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)V

    return-void
.end method
