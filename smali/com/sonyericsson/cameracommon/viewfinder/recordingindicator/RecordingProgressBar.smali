.class public Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;
.super Landroid/widget/ImageView;
.source "RecordingProgressBar.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RecordingProgressBar"


# instance fields
.field private mProgressBarWidth:I

.field private mProgressIcon:Landroid/graphics/drawable/Drawable;

.field private mProgressRatio:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    .line 31
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    .line 31
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    .line 31
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 0

    .line 74
    iget p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 79
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 81
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isMirroringRequired(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    sub-int/2addr v1, v2

    .line 85
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressIcon:Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 85
    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    add-int/2addr v1, v2

    .line 90
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 92
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 48
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080316

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressIcon:Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070176

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    return-void
.end method

.method public setProgress(II)V
    .locals 2

    if-eqz p2, :cond_0

    int-to-double v0, p1

    int-to-double p1, p2

    div-double/2addr v0, p1

    .line 66
    iget p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-double p1, p1

    mul-double/2addr v0, p1

    double-to-int p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 69
    :goto_0
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->invalidate()V

    return-void
.end method
