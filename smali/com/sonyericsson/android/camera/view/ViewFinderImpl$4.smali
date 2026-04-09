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

    .line 1296
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->val$previewRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1299
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1301
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->val$previewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->val$previewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 1302
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    .line 1303
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getSizeAccordingToLayoutOrientation(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 1304
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 1305
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 1306
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateDevicePreviewSize(II)V

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2502(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)Z

    .line 1309
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->updateCaptureAreaSize()V

    .line 1310
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$4;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method
