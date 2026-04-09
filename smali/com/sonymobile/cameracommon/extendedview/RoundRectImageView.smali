.class public Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;
.super Landroid/widget/ImageView;
.source "RoundRectImageView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RoundRectImageView"


# instance fields
.field private mClipPath:Landroid/graphics/Path;

.field private mDstRect:Landroid/graphics/RectF;

.field private mRadiusSet:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mDstRect:Landroid/graphics/RectF;

    const/16 p1, 0x8

    .line 29
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    .line 32
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mClipPath:Landroid/graphics/Path;

    .line 41
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mDstRect:Landroid/graphics/RectF;

    const/16 p1, 0x8

    .line 29
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    .line 32
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mClipPath:Landroid/graphics/Path;

    .line 52
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 1

    .line 56
    iget-object p0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mClipPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {p0, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    return-void
.end method

.method private updateClipPath()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mDstRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, p0, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 109
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 110
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 91
    iget-object p3, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mDstRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 93
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->updateClipPath()V

    return-void
.end method

.method public setRadius(F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->updateClipPath()V

    return-void
.end method

.method public setRadius(FFFF)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 75
    iget-object v0, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 76
    iget-object p1, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    const/4 v0, 0x2

    aput p2, p1, v0

    .line 77
    iget-object p1, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    const/4 v0, 0x3

    aput p2, p1, v0

    .line 78
    iget-object p1, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    const/4 p2, 0x4

    aput p3, p1, p2

    .line 79
    iget-object p1, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    const/4 p2, 0x5

    aput p3, p1, p2

    .line 80
    iget-object p1, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    const/4 p2, 0x6

    aput p4, p1, p2

    .line 81
    iget-object p1, p0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->mRadiusSet:[F

    const/4 p2, 0x7

    aput p4, p1, p2

    .line 83
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->updateClipPath()V

    return-void
.end method
