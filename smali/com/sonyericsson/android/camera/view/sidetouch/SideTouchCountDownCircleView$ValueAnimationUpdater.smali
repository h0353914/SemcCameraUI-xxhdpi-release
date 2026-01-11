.class Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$ValueAnimationUpdater;
.super Ljava/lang/Object;
.source "SideTouchCountDownCircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueAnimationUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$ValueAnimationUpdater;->this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$ValueAnimationUpdater-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$ValueAnimationUpdater;-><init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView$ValueAnimationUpdater;->this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchCountDownCircleView;->invalidate()V

    return-void
.end method
