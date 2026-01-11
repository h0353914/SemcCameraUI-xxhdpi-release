.class Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;
.super Landroid/os/Handler;
.source "HintTextViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutHandler"
.end annotation


# static fields
.field private static final MSG_START_FADE_OUT:I = 0x2

.field private static final MSG_TIMEOUT:I = 0x1


# instance fields
.field public attachedContent:Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)V

    return-void
.end method


# virtual methods
.method public cancelCount()V
    .locals 1

    const/4 v0, 0x1

    .line 615
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->removeMessages(I)V

    const/4 v0, 0x2

    .line 616
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->removeMessages(I)V

    .line 617
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->-$$Nest$fgetmHintTextFadeOutAnimator(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 618
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;->onStateChanged()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 623
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->-$$Nest$fgetmHintTextFadeOutAnimator(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 631
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->-$$Nest$fgetmHintTextFadeOutAnimator(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 632
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->-$$Nest$fgetmHintTextFadeOutAnimator(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 625
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->attachedContent:Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    if-eqz p1, :cond_2

    .line 626
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->-$$Nest$mcancelFromContentStack(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public startFadeOut(JILcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .locals 2

    .line 606
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->cancelCount()V

    .line 607
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 608
    iput v1, v0, Landroid/os/Message;->what:I

    .line 609
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 610
    invoke-virtual {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 611
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->attachedContent:Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    return-void
.end method

.method public startTimeoutCount(JLcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .locals 1

    const/4 v0, 0x1

    .line 600
    invoke-virtual {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 601
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->attachedContent:Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    return-void
.end method
