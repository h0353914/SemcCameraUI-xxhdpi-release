.class Lcom/sonyericsson/android/camera/view/blur/BlurViewController$1;
.super Ljava/lang/Object;
.source "BlurViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$1;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$1;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->-$$Nest$fgetmImageRetriever(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)Lcom/sonyericsson/android/camera/device/ImageRetriever;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$1;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->-$$Nest$fgetmImageCallback(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$1;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->-$$Nest$fgetmWorker(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object p0

    .line 42
    invoke-interface {v0, v1, p0}, Lcom/sonyericsson/android/camera/device/ImageRetriever;->registerBlurPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V

    .line 44
    const-string p0, "BlurViewController"

    const-string v0, "Get frame requested"

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/utility/BlurLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
