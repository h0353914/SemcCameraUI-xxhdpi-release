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

    .line 369
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootViewForRefLogEnabled;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    .line 370
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/app/Activity;)V

    const/4 p0, 0x0

    .line 371
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->-$$Nest$fputmIsFirstDrawn(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootViewForRefLogEnabled;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->-$$Nest$fgetmIsFirstDrawn(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootViewForRefLogEnabled;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->-$$Nest$fputmIsFirstDrawn(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Z)V

    .line 377
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->VIEWFINDER_FIRST_DRAW:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 378
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 379
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->VIEWFINDER_FIRST_DRAW:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    goto :goto_0

    .line 381
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method
