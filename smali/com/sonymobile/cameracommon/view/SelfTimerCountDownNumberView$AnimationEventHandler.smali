.class Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;
.super Ljava/lang/Object;
.source "SelfTimerCountDownNumberView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageAlpha(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageAlpha(I)V

    return-void
.end method
