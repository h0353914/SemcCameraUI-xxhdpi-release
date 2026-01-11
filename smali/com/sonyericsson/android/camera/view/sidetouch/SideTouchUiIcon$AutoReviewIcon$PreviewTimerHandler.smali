.class Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$PreviewTimerHandler;
.super Landroid/os/Handler;
.source "SideTouchUiIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewTimerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$PreviewTimerHandler;->this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$PreviewTimerHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$PreviewTimerHandler;-><init>(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 479
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$PreviewTimerHandler;->this$0:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;->-$$Nest$mstartHideAnimation(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;)V

    :goto_0
    return-void
.end method
