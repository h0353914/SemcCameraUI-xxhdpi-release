.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$27;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->startHideThumbnail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 6885
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$27;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 6888
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$27;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmCameraDevice(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6889
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$27;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->hide()V

    :cond_0
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
