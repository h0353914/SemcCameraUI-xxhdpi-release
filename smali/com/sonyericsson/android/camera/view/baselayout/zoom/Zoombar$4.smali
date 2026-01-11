.class Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$4;
.super Ljava/lang/Object;
.source "Zoombar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->zoomEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$4;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$4;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->-$$Nest$fgetmZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomEnd()V

    return-void
.end method
