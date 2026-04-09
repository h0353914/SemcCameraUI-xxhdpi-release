.class Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;
.super Ljava/lang/Object;
.source "ImageQualityControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFactory"
.end annotation


# static fields
.field private static final VIEW_TAG:Ljava/lang/String; = "Imagequalitycontrol-view"


# instance fields
.field private final mContainerRect:Landroid/graphics/Rect;

.field private final mParent:Landroid/view/ViewGroup;

.field private final mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;Landroid/view/ViewGroup;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;->mParent:Landroid/view/ViewGroup;

    .line 92
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;->mContainerRect:Landroid/graphics/Rect;

    .line 93
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    return-void
.end method


# virtual methods
.method public create()Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;->mParent:Landroid/view/ViewGroup;

    const-string v1, "Imagequalitycontrol-view"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->access$000(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;->onSlideStopped()V

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;->mContainerRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->create(Landroid/view/ViewGroup;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    move-result-object v0

    const-string v1, "Imagequalitycontrol-view"

    .line 107
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->setTag(Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->access$200(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->setAdapter(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;)V

    .line 109
    new-instance v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory$1;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->setOnImageQualityControlDialogTabSelectListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView$OnImageQualityControlDialogTabSelectListener;)V

    return-object v0
.end method
