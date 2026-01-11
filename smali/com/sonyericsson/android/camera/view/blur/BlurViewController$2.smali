.class Lcom/sonyericsson/android/camera/view/blur/BlurViewController$2;
.super Ljava/lang/Object;
.source "BlurViewController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/blur/BlurViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$2;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetrieved(Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-lez p2, :cond_1

    .line 100
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$2;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->-$$Nest$fgetmIsFirstFrame(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 101
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$2;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->-$$Nest$fputmIsFirstFrame(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;Z)V

    .line 102
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$2;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p2

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$2;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;

    invoke-static {p3}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->-$$Nest$fgetmHideBlurViewRunnable(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)Ljava/lang/Runnable;

    move-result-object p3

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p3, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    .line 104
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    new-array p2, p2, [B

    .line 105
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 106
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$2;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->-$$Nest$fgetmBlurImageController(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->setData([B)V

    :cond_1
    return-void
.end method
