.class Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;
.super Ljava/lang/Object;
.source "ManualIqControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFactory"
.end annotation


# static fields
.field private static final VIEW_TAG:Ljava/lang/String; = "ManualIqControl-view"


# instance fields
.field private final mContainerRect:Landroid/graphics/Rect;

.field private final mParent:Landroid/view/ViewGroup;

.field private final mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Landroid/view/ViewGroup;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->mParent:Landroid/view/ViewGroup;

    .line 91
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->mContainerRect:Landroid/graphics/Rect;

    .line 92
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    return-void
.end method


# virtual methods
.method public create()Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->mParent:Landroid/view/ViewGroup;

    const-string v1, "ManualIqControl-view"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->mParent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->mContainerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->create(Landroid/view/ViewGroup;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setTag(Ljava/lang/Object;)V

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->-$$Nest$mcreateAdapter(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setAdapter(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;)V

    .line 105
    new-instance v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory$1;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setOnDialogTabSelectListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnDialogTabSelectListener;)V

    return-object v0
.end method
