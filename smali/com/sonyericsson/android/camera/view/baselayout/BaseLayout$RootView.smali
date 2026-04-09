.class Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;
.super Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper$HoverEventInterceptView;
.source "BaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RootView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/app/Activity;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    .line 302
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper$HoverEventInterceptView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 310
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 323
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper$HoverEventInterceptView;->onMeasure(II)V

    .line 326
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$100(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    .line 327
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$100(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    .line 328
    invoke-static {}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$200()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->UNKNOWN:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    if-ne v0, v1, :cond_1

    if-le p1, p2, :cond_2

    .line 330
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$300(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    .line 331
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    .line 332
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 333
    invoke-virtual {p2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 334
    iget p2, v0, Landroid/graphics/Point;->x:I

    if-ge p1, p2, :cond_0

    .line 335
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->TALKBACK_ON:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$202(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    goto :goto_0

    .line 337
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->TALKBACK_OFF:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$202(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    .line 339
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateAppsUiMarginsForTalkBack()V

    goto :goto_1

    :cond_1
    if-ge p1, p2, :cond_2

    .line 343
    sget-object p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->UNKNOWN:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$202(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    :cond_2
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 318
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
