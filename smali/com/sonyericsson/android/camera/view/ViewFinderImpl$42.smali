.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->updateZoomLineView(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
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

    .line 11647
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(F)V
    .locals 2

    .line 11650
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDial()Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setmZoomLineSetRatio(F)V

    .line 11651
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$42;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmZoomUiEventListener(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object p0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p1, v0

    int-to-float p1, p1

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    return-void
.end method
