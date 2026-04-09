.class public abstract Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;
.super Ljava/lang/Object;
.source "SideTouchUiIcon.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingPauseIcon;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RestrictedRecordingIcon;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingPauseIcon;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$RecordingIcon;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$SelfTimerCancelIcon;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ScreenButtonIcon;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$ZoomIcon;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$CountDownIcon;,
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$TransparentCoverIcon;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mOnDetachedListener:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->mContext:Landroid/content/Context;

    return-void
.end method

.method private adjustSidePosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 6

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->getIconView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-lez v2, :cond_7

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-gtz v2, :cond_1

    goto :goto_1

    .line 114
    :cond_1
    iget v2, p2, Landroid/graphics/Point;->y:I

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 116
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v3, 0x0

    if-gez v2, :cond_2

    .line 117
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 119
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_3

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 123
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget p2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p2

    iget p2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    div-int/lit8 p2, p2, 0x2

    sub-int p2, v2, p2

    .line 125
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ge p2, v2, :cond_4

    move p1, v3

    goto :goto_0

    .line 127
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v2, v4

    if-le p2, v2, :cond_5

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget p2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_5
    move p1, p2

    .line 132
    :goto_0
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p1, :cond_6

    const/4 v3, 0x1

    .line 135
    :cond_6
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->onSidePositionAttached(Z)V

    return-void

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public attach(Landroid/view/ViewGroup;Landroid/graphics/Point;)Landroid/view/View;
    .locals 1

    .line 74
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->attachView(Landroid/view/ViewGroup;)V

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 77
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->adjustSidePosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->getIconView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected abstract attachView(Landroid/view/ViewGroup;)V
.end method

.method public detach(Landroid/view/ViewGroup;)V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->getIconView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->mOnDetachedListener:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->mOnDetachedListener:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;->onDetached(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;)V

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->mOnDetachedListener:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;

    :cond_0
    return-void
.end method

.method getDimensionPixelSize(I)I
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected abstract getIconView()Landroid/view/View;
.end method

.method getStringResource(I)Ljava/lang/String;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onFocusChanged(Z)V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->getIconView()Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onSidePositionAttached(Z)V
    .locals 0

    return-void
.end method

.method public setOnDetachedListener(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon;->mOnDetachedListener:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;

    return-void
.end method
