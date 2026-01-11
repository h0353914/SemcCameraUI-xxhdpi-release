.class public Lcom/sonyericsson/cameracommon/focusview/SmileScore;
.super Landroid/widget/ImageView;
.source "SmileScore.java"


# static fields
.field private static final GAUGE_BOTTOM_A:I = 0xb2

.field private static final GAUGE_BOTTOM_B:I = 0xe5

.field private static final GAUGE_BOTTOM_G:I = 0xb5

.field private static final GAUGE_BOTTOM_R:I = 0x33

.field private static final GAUGE_COLORS:[I

.field private static final GAUGE_TOP_A:I = 0xb2

.field private static final GAUGE_TOP_B:I = 0xcc

.field private static final GAUGE_TOP_G:I = 0x99

.field private static final GAUGE_TOP_R:I = 0x0

.field public static final SMILE_MAX:I = 0x64

.field public static final SMILE_MIN:I = 0x0

.field private static final SMILE_UNIT:I = 0x64

.field public static final TAG:Ljava/lang/String; = "SmileScore"

.field private static final sColorPaints:Landroid/graphics/Paint;


# instance fields
.field private mFrameHeight:I

.field private mIndicatorStep:F

.field private mIndicatorWidth:I

.field private mPaddingBottomFrame:I

.field private mPaddingLeft:I

.field private mPaddingLeftFrame:I

.field private mPaddingTopFrame:I

.field private mSmileScore:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x64

    .line 47
    new-array v1, v0, [I

    sput-object v1, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->GAUGE_COLORS:[I

    .line 61
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:Landroid/graphics/Paint;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 63
    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->GAUGE_COLORS:[I

    int-to-float v3, v1

    const/4 v4, 0x0

    mul-float v5, v3, v4

    const/high16 v6, 0x43320000    # 178.0f

    add-float/2addr v5, v6

    float-to-int v5, v5

    const v6, 0x3f028f5c    # 0.51f

    mul-float/2addr v6, v3

    add-float/2addr v6, v4

    float-to-int v4, v6

    const v6, 0x3e8f5c29    # 0.28f

    mul-float/2addr v6, v3

    const/high16 v7, 0x43190000    # 153.0f

    add-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float/2addr v3, v7

    const/high16 v7, 0x434c0000    # 204.0f

    add-float/2addr v3, v7

    float-to-int v3, v3

    invoke-static {v5, v4, v6, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getSmileScoreRect(FFFF)Landroid/graphics/RectF;
    .locals 2

    .line 218
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 220
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->isForLandscape()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 221
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v0, p2, p1, p4, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 226
    iget p0, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float p0, p0, v1

    if-lez p0, :cond_1

    .line 227
    iput p4, v0, Landroid/graphics/RectF;->left:F

    .line 228
    iput p2, v0, Landroid/graphics/RectF;->right:F

    .line 231
    :cond_1
    iget p0, v0, Landroid/graphics/RectF;->top:F

    iget p2, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p2

    if-lez p0, :cond_2

    .line 232
    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 233
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_2
    :goto_0
    return-object v0
.end method

.method private isLayoutOrientationLandscape()Z
    .locals 0

    .line 248
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

    .line 154
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "draw() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->isLayoutOrientationLandscape()Z

    move-result v0

    const-string v1, ")"

    const-string v2, ": drawRect("

    const-string v3, "draw: row: "

    const/16 v4, 0x64

    const/4 v5, 0x0

    const-string v6, ", "

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->isForLandscape()Z

    move-result v0

    if-nez v0, :cond_4

    .line 157
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingLeft:I

    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingLeftFrame:I

    add-int/2addr v0, v7

    int-to-float v0, v0

    .line 158
    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingTopFrame:I

    int-to-float v7, v7

    .line 159
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorWidth:I

    int-to-float v8, v8

    add-float/2addr v8, v0

    :goto_0
    if-ge v5, v4, :cond_8

    .line 163
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    if-ge v9, v5, :cond_1

    goto/16 :goto_2

    .line 168
    :cond_1
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    add-float/2addr v9, v7

    .line 169
    iget v10, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    iget v11, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingLeftFrame:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v10, v9, v10

    if-gez v10, :cond_2

    .line 171
    sget-object v10, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:Landroid/graphics/Paint;

    sget-object v11, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->GAUGE_COLORS:[I

    aget v11, v11, v5

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    invoke-direct {p0, v0, v7, v8, v9}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getSmileScoreRect(FFFF)Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual {p1, v11, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 175
    :cond_2
    sget-boolean v10, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->GAUGE_COLORS:[I

    aget v10, v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 180
    :cond_3
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    add-float/2addr v7, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 184
    :cond_4
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingLeft:I

    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingLeftFrame:I

    add-int/2addr v0, v7

    int-to-float v0, v0

    .line 185
    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingBottomFrame:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 186
    iget v8, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorWidth:I

    int-to-float v8, v8

    add-float/2addr v8, v0

    :goto_1
    if-ge v5, v4, :cond_8

    .line 190
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    if-ge v9, v5, :cond_5

    goto :goto_2

    .line 195
    :cond_5
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    add-float/2addr v9, v7

    .line 196
    iget v10, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingBottomFrame:I

    int-to-float v10, v10

    cmpl-float v10, v7, v10

    if-lez v10, :cond_6

    .line 198
    sget-object v10, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->sColorPaints:Landroid/graphics/Paint;

    sget-object v11, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->GAUGE_COLORS:[I

    aget v11, v11, v5

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    invoke-direct {p0, v0, v7, v8, v9}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getSmileScoreRect(FFFF)Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual {p1, v11, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 202
    :cond_6
    sget-boolean v10, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->GAUGE_COLORS:[I

    aget v10, v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 207
    :cond_7
    iget v9, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    sub-float/2addr v7, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 210
    :cond_8
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 211
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "draw end: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method protected isForLandscape()Z
    .locals 0

    .line 244
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result p0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 140
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 141
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
    .locals 2

    .line 112
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onFinishInflate() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 113
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    .line 117
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070213

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    .line 118
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFinishInflate: Frame :height: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07021a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorWidth:I

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07021b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingLeft:I

    .line 126
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070215

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingLeftFrame:I

    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070214

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingBottomFrame:I

    .line 130
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070216

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingTopFrame:I

    .line 133
    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mFrameHeight:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mPaddingBottomFrame:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    .line 134
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFinishInflate: Indicator step: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mIndicatorStep:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setSmileScore(I)V
    .locals 2

    .line 145
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSmileScore("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    .line 146
    :cond_0
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->mSmileScore:I

    return-void
.end method
