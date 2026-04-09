.class Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$2;
.super Ljava/lang/Object;
.source "Zoombar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$2;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 266
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar$2;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->access$100(Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;Z)V

    return-void
.end method
