.class Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$2;
.super Ljava/lang/Object;
.source "Zoombar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->onFinishInflate()V
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

    .line 158
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$2;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 161
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$2;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->getAlpha()F

    move-result p1

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$2;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->-$$Nest$fgetmZoomDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 163
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$2;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->-$$Nest$fgetmCurText(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const v0, 0x3f19999a    # 0.6f

    cmpl-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz v0, :cond_0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    const/16 v0, 0xa8

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/16 v0, 0x198

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 172
    :goto_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " current:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",step:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  [ 0,168,408]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 175
    :cond_2
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->TAP:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setZoomTrigger(Ljava/lang/String;)V

    .line 177
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar$2;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->-$$Nest$fgetmZoomDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onValueClick(I)Z

    :cond_3
    return-void
.end method
