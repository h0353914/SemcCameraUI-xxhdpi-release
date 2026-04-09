.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderStateListener;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinderStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 5464
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;)V
    .locals 0

    .line 5464
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderStateListener;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method


# virtual methods
.method public onCaptureAreaCanceled()V
    .locals 1

    .line 5498
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->sendCancel(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    return-void
.end method

.method public onCaptureAreaIsReadyToScale()V
    .locals 2

    .line 5503
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5504
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SELFTIMER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    if-eq v0, v1, :cond_0

    .line 5505
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->notifyZoomOperationRejected()V

    :cond_0
    return-void

    .line 5510
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->sendCaptureAreaScaleReady(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    return-void
.end method

.method public onCaptureAreaLongPressed(Landroid/graphics/Point;)V
    .locals 1

    .line 5478
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->sendLongClick(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V

    return-void
.end method

.method public onCaptureAreaMoved()V
    .locals 0

    return-void
.end method

.method public onCaptureAreaReleased(Landroid/graphics/Point;)V
    .locals 1

    .line 5493
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->sendTouchUp(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V

    return-void
.end method

.method public onCaptureAreaScaled(F)V
    .locals 1

    .line 5515
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5518
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->sendCaptureAreaScaling(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;F)V

    return-void
.end method

.method public onCaptureAreaSingleTapUp(Landroid/graphics/Point;)V
    .locals 1

    .line 5473
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->sendClick(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V

    return-void
.end method

.method public onCaptureAreaStopped()V
    .locals 0

    return-void
.end method

.method public onCaptureAreaTouched()V
    .locals 1

    .line 5468
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->sendTouchDown(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    return-void
.end method
