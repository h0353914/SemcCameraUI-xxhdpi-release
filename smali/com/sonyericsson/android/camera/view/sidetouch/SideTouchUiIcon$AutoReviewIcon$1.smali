.class Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$1;
.super Ljava/lang/Object;
.source "SideTouchUiIcon.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->startHideAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$1;->this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$1;->this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->-$$Nest$mdetachFromParent(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
