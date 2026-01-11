.class public Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;
.super Landroid/widget/FrameLayout;
.source "ContentsContainer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ContentsContainer"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public cancelRequestHide()V
    .locals 2

    const/4 v0, 0x0

    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 89
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 90
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->cancelRequestHide()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public disableClick()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 78
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 79
    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->setPressed(Z)V

    .line 80
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->disableClick()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public enableClick()V
    .locals 2

    const/4 v0, 0x0

    .line 70
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 71
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 72
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->enableClick()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x0

    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 63
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 64
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->removeAllViews()V

    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 3

    .line 44
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSensorOrientation() has been called. orientation = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentsContainer"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    const/16 p1, -0x5a

    goto :goto_0

    :cond_1
    move p1, v1

    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 54
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    int-to-float v2, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
