.class public Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenImageQualityControlButtonListener;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnScreenImageQualityControlButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 7078
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenImageQualityControlButtonListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onDown(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onLongPress(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;)V
    .locals 0

    return-void
.end method

.method public onMove(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onUp(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0

    .line 7085
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenImageQualityControlButtonListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getImageQualityControl()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7086
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenImageQualityControlButtonListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenImageQualityControlButtonListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getImageQualityControl()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$7100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;)V

    goto :goto_0

    .line 7088
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenImageQualityControlButtonListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OnScreenImageQualityControlButtonListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getImageQualityControl()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$7200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;)V

    :goto_0
    return-void
.end method
