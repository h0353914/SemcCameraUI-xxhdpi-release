.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory$OnScreenButtonListenerImpl;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnScreenButtonListenerImpl"
.end annotation


# instance fields
.field private final mButtonType:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;)V
    .locals 0

    .line 1108
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory$OnScreenButtonListenerImpl;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1109
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory$OnScreenButtonListenerImpl;->mButtonType:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1130
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory$OnScreenButtonListenerImpl;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory$OnScreenButtonListenerImpl;->mButtonType:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->sendCancel(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    return-void
.end method

.method public onDown(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1114
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory$OnScreenButtonListenerImpl;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory$OnScreenButtonListenerImpl;->mButtonType:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->sendTouchDown(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    return-void
.end method

.method public onLongPress(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;)V
    .locals 1

    .line 1135
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory$OnScreenButtonListenerImpl;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory$OnScreenButtonListenerImpl;->mButtonType:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->sendLongClick(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V

    return-void
.end method

.method public onMove(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onUp(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 2

    .line 1119
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory$OnScreenButtonListenerImpl;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory$OnScreenButtonListenerImpl;->mButtonType:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    new-instance v0, Landroid/graphics/Point;

    .line 1120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {v0, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 1119
    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->sendTouchUp(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V

    return-void
.end method
