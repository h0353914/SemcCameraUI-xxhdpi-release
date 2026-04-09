.class public Lcom/sonyericsson/cameracommon/focusview/SmileScore;
.super Landroid/widget/ImageView;
.source "SmileScore.java"


# static fields
.field private static final GAUGE_BOTTOM_A:I = 0xb2

.field private static final GAUGE_BOTTOM_B:I = 0xe5

.field private static final GAUGE_BOTTOM_G:I = 0xb5

.field private static final GAUGE_BOTTOM_R:I = 0x33

.field private static final GAUGE_TOP_A:I = 0xb2

.field private static final GAUGE_TOP_B:I = 0xcc

.field private static final GAUGE_TOP_G:I = 0x99

.field private static final GAUGE_TOP_R:I = 0x0

.field public static final SMILE_MAX:I = 0x64

.field public static final SMILE_MIN:I = 0x0

.field private static final SMILE_UNIT:I = 0x64

.field public static final TAG:Ljava/lang/String; = "SmileScore"

.field private static final sColorPaints:[Landroid/graphics/Paint;


# instance fields
.field private mFrameHeight:I

.field private mIndicatorStep:F

.field private mIndicatorWidth:I

.field private mSmileScore:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x64

    .line 61
    new-array v1, v0, [Landroid/graphics/Paint;

    sput-object v1, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 63
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/high16 v3, 0x43320000    # 178.0f

    int-to-float v4, v1

    const/4 v5, 0x0

    mul-float v6, v5, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    const v6, 0x3f028f5c    # 0.51f

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x43190000    # 153.0f

    const v7, 0x3e8f5c29    # 0.28f

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v7, 0x434c0000    # 204.0f

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    float-to-int v4, v7

    .line 64
    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 69
    sget-object v3, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:[Landroid/graphics/Paint;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getSmileScoreRect(FFFF)Landroid/graphics/RectF;
    .locals 2

    .line 210
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 212
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->isForLandscape()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 213
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v0, p2, p1, p4, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 218
    iget p0, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float p0, p0, v1

    if-lez p0, :cond_1

    .line 219
    iput p4, v0, Landroid/graphics/RectF;->left:F

    .line 220
    iput p2, v0, Landroid/graphics/RectF;->right:F

    .line 223
    :cond_1
    iget p0, v0, Landroid/graphics/RectF;->top:F

    iget p2, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p2

    if-lez p0, :cond_2

    .line 224
    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 225
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_2
    :goto_0
    return-object v0
.end method

.method private isLayoutOrientationLandscape()Z
    .locals 0

    .line 240
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isLayoutOrientationLandscape()Z

    move-result p0

    return p0
.end method

.method public static final preload()V
    .locals 0

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 140
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "draw() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 143
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 145
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 147
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 150
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->isLayoutOrientationLandscape()Z

    move-result v4

    const/16 v5, 0x64

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->isForLandscape()Z

    move-result v4

    if-nez v4, :cond_4

    add-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v3

    .line 153
    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorWidth:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    move v4, v1

    move v1, v7

    :goto_0
    if-ge v1, v5, :cond_8

    .line 157
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    if-ge v8, v1, :cond_1

    goto/16 :goto_2

    .line 162
    :cond_1
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    add-float/2addr v8, v4

    .line 163
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    sub-int/2addr v9, v3

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gez v9, :cond_2

    .line 165
    invoke-direct {p0, v0, v4, v2, v8}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getSmileScoreRect(FFFF)Landroid/graphics/RectF;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:[Landroid/graphics/Paint;

    aget-object v10, v10, v1

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 168
    :cond_2
    sget-boolean v9, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v9, :cond_3

    new-array v9, v6, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "draw: row: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": drawRect("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:[Landroid/graphics/Paint;

    aget-object v8, v8, v1

    .line 171
    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v7

    .line 168
    invoke-static {v9}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 173
    :cond_3
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    add-float/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 178
    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 179
    iget v3, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorWidth:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    move v4, v1

    move v1, v7

    :goto_1
    if-ge v1, v5, :cond_8

    .line 183
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    if-ge v8, v1, :cond_5

    goto :goto_2

    .line 188
    :cond_5
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    add-float/2addr v8, v4

    int-to-float v9, v2

    cmpl-float v9, v4, v9

    if-lez v9, :cond_6

    .line 191
    invoke-direct {p0, v0, v4, v3, v8}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getSmileScoreRect(FFFF)Landroid/graphics/RectF;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:[Landroid/graphics/Paint;

    aget-object v10, v10, v1

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 194
    :cond_6
    sget-boolean v9, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v9, :cond_7

    new-array v9, v6, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "draw: row: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": drawRect("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:[Landroid/graphics/Paint;

    aget-object v8, v8, v1

    .line 197
    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v7

    .line 194
    invoke-static {v9}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 199
    :cond_7
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    sub-float/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 202
    :cond_8
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 203
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_9

    new-array p1, v6, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "draw end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v7

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method protected isForLandscape()Z
    .locals 0

    .line 236
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result p0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 127
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "onDraw() is called."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    .line 107
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onFinishInflate() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 108
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    .line 113
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-array v1, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFinishInflate: Frame :height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0701c9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorWidth:I

    .line 119
    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    .line 120
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_2

    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFinishInflate: Indicator step: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setSmileScore(I)V
    .locals 4

    .line 131
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSmileScore("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 132
    :cond_0
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    return-void
.end method
