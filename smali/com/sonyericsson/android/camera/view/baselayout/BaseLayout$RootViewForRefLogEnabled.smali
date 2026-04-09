.class Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootViewForRefLogEnabled;
.super Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;
.source "BaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RootViewForRefLogEnabled"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/app/Activity;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootViewForRefLogEnabled;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/app/Activity;)V

    const/4 p0, 0x0

    .line 355
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$402(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Z)Z

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootViewForRefLogEnabled;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$400(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootViewForRefLogEnabled;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$402(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Z)Z

    .line 361
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->VIEWFINDER_FIRST_DRAW:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 362
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 363
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->VIEWFINDER_FIRST_DRAW:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    goto :goto_0

    .line 365
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method
