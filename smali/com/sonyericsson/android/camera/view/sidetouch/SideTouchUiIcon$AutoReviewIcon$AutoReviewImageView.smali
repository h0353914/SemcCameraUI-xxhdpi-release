.class Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$AutoReviewImageView;
.super Landroid/widget/ImageView;
.source "SideTouchUiIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoReviewImageView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;Landroid/content/Context;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$AutoReviewImageView;->this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;

    .line 459
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 1

    .line 463
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$AutoReviewImageView;->this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->-$$Nest$mstopTimer(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;)V

    .line 465
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$AutoReviewImageView;->this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->-$$Nest$fgetmBitmap(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$AutoReviewImageView;->this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->-$$Nest$fgetmBitmap(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$AutoReviewImageView;->this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->-$$Nest$fgetmBitmap(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$AutoReviewImageView;->this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->-$$Nest$fgetmCloseListener(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;)Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$AutoReviewImageView;->this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->-$$Nest$fgetmCloseListener(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;)Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;->onAutoReviewClosed()V

    .line 470
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$AutoReviewImageView;->this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->-$$Nest$fputmCloseListener(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;)V

    :cond_1
    return-void
.end method
