.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->notifyOnEvfPrepared(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

.field final synthetic val$previewRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1369
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->val$previewRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1373
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->val$previewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->val$previewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 1374
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    .line 1375
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getSizeAccordingToLayoutOrientation(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 1376
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 1377
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 1378
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmFocusRectangles(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1379
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmFocusRectangles(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateDevicePreviewSize(II)V

    .line 1381
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fputmCanFocusRectanglesBeUpdated(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 1382
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->updateCaptureAreaSize()V

    .line 1383
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$msetupAutoReview(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 1386
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmScreenAspect(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1388
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mupdateCaptureProgressViewContainerSize(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Landroid/graphics/Rect;)V

    return-void
.end method
