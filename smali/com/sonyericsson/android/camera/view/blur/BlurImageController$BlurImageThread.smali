.class Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;
.super Ljava/lang/Thread;
.source "BlurImageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/blur/BlurImageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlurImageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 136
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->-$$Nest$fgetmRunning(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->-$$Nest$mpauseThread(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)V

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->-$$Nest$fgetmIsProcessing(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->-$$Nest$mgenerateBlurImage(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)[Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->-$$Nest$mpauseThread(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)V

    .line 141
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->-$$Nest$misBlurViewShowing(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->-$$Nest$fgetmPreviewData(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;)Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$PreviewData;->getAspect()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->-$$Nest$msetBlurImageData(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;[Landroid/graphics/Bitmap;I)V

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->setFirstBlurBitmapReady(Z)V

    goto :goto_1

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->-$$Nest$mrecycleBitmap(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;[Landroid/graphics/Bitmap;)V

    .line 147
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurImageController$BlurImageThread;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurImageController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/blur/BlurImageController;->-$$Nest$fputmIsProcessing(Lcom/sonyericsson/android/camera/view/blur/BlurImageController;Z)V

    goto :goto_0

    .line 150
    :cond_2
    const-string p0, "BlurImageController"

    const-string v0, "BlurImageThread.run x"

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
