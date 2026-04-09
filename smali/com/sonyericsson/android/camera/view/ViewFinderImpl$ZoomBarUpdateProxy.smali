.class public Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomBarUpdateProxy;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoomBarUpdateProxy"
.end annotation


# instance fields
.field private mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindZoomBar(Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;)V
    .locals 0

    .line 10138
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomBarUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    return-void
.end method

.method protected update(Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .line 10142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomBarUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->setZoomRatios(Ljava/util/List;)V

    .line 10143
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ZoomBarUpdateProxy;->mZoomBar:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->zoom(I)I

    move-result p0

    return p0
.end method
