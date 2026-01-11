.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/controller/GestureShutter$WindowHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureShutterListener"
.end annotation


# instance fields
.field private mGestureShutterView:Lcom/sonyericsson/android/camera/view/GestureShutterView;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 8954
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 8956
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->mGestureShutterView:Lcom/sonyericsson/android/camera/view/GestureShutterView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method

.method private setupGestureShutterView()V
    .locals 3

    .line 9010
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->mGestureShutterView:Lcom/sonyericsson/android/camera/view/GestureShutterView;

    if-nez v0, :cond_0

    .line 9011
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 9013
    new-instance v1, Lcom/sonyericsson/android/camera/view/GestureShutterView;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetActivity(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/view/GestureShutterView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->mGestureShutterView:Lcom/sonyericsson/android/camera/view/GestureShutterView;

    .line 9014
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/GestureShutterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getGestureShutterView()Lcom/sonyericsson/android/camera/view/GestureShutterView;
    .locals 0

    .line 8960
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->setupGestureShutterView()V

    .line 8961
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->mGestureShutterView:Lcom/sonyericsson/android/camera/view/GestureShutterView;

    return-object p0
.end method

.method public getLeftIconAreaHeight()I
    .locals 2

    .line 9005
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    .line 9006
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f07011a

    .line 9005
    invoke-static {v0, p0, v1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPreviewOffset()Landroid/graphics/Point;
    .locals 2

    .line 8990
    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmEvf(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonymobile/cameracommon/evf/Evf;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonymobile/cameracommon/evf/Evf;->asView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getPreviewSize()Landroid/graphics/Point;
    .locals 3

    .line 8983
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 8984
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreview()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 8985
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreview()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-direct {v1, v2, p0}, Landroid/graphics/Point;-><init>(II)V

    .line 8983
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getPointAccordingToLayoutOrientation(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public getScreenAspect()Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;
    .locals 0

    .line 8995
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmScreenAspect(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object p0

    return-object p0
.end method

.method public getViewFinderSize()Landroid/graphics/Rect;
    .locals 0

    .line 9000
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public hideGestureShutterView()V
    .locals 1

    .line 8975
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->mGestureShutterView:Lcom/sonyericsson/android/camera/view/GestureShutterView;

    if-eqz v0, :cond_0

    .line 8976
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->mGestureShutterView:Lcom/sonyericsson/android/camera/view/GestureShutterView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showGestureShutterView()V
    .locals 2

    .line 8966
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->hideGestureShutterView()V

    .line 8967
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->setupGestureShutterView()V

    .line 8968
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->mGestureShutterView:Lcom/sonyericsson/android/camera/view/GestureShutterView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 8969
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$GestureShutterListener;->mGestureShutterView:Lcom/sonyericsson/android/camera/view/GestureShutterView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method
