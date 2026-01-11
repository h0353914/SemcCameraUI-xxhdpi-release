.class Lcom/sonyericsson/android/camera/view/AutoReviewController$PreviewTimerHandler;
.super Landroid/os/Handler;
.source "AutoReviewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/AutoReviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewTimerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/AutoReviewController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/AutoReviewController;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController$PreviewTimerHandler;->this$0:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/AutoReviewController;Lcom/sonyericsson/android/camera/view/AutoReviewController$PreviewTimerHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/AutoReviewController$PreviewTimerHandler;-><init>(Lcom/sonyericsson/android/camera/view/AutoReviewController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 188
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController$PreviewTimerHandler;->this$0:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->hide()V

    .line 195
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController$PreviewTimerHandler;->this$0:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/view/AutoReviewController;)Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 196
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/AutoReviewController$PreviewTimerHandler;->this$0:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/view/AutoReviewController;)Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController$OnAutoReviewEventListener;->onAutoReviewClosed()V

    :cond_1
    :goto_0
    return-void
.end method
