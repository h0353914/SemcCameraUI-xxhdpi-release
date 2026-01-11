.class public Lcom/sonyericsson/cameracommon/utility/PositionConverter;
.super Ljava/lang/Object;
.source "PositionConverter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PositionConverter"

.field private static sInstance:Lcom/sonyericsson/cameracommon/utility/PositionConverter;


# instance fields
.field private mActiveArrayHeight:I

.field private mActiveArrayRect:Landroid/graphics/Rect;

.field private mActiveArrayWidth:I

.field private mCropRegion:Landroid/graphics/Rect;

.field private mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

.field private mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mPrepared:Z

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sInstance:Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;
    .locals 2

    if-nez p2, :cond_0

    .line 300
    const-string p0, "Matrix to convert rect is null. Surface has not been created."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 301
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0

    .line 303
    :cond_0
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 304
    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 305
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/RectF;->left:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Landroid/graphics/RectF;->right:F

    .line 306
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-direct {p1, p2, v0, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public static getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;
    .locals 1

    .line 34
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sInstance:Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    return-object v0
.end method

.method private updateMatrix()V
    .locals 11

    .line 162
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 166
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    .line 167
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_2

    .line 169
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 171
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mActiveArrayHeight:I

    int-to-float v3, v3

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 173
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMirror:Z

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 175
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mActiveArrayWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 178
    :cond_0
    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v3, v2

    iget v8, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v9, v8

    div-float/2addr v3, v9

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1

    int-to-float v2, v2

    .line 179
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    goto :goto_0

    :cond_1
    int-to-float v2, v8

    .line 181
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    :goto_0
    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 183
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 184
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 185
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    iget-object v10, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 186
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v2

    sub-float/2addr v9, v10

    .line 184
    invoke-virtual {v3, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 188
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 189
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMirror:Z

    if-eqz v2, :cond_3

    .line 190
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 191
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mActiveArrayWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 194
    :cond_3
    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v3, v2

    iget v8, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v9, v8

    div-float/2addr v3, v9

    cmpg-float v3, v1, v3

    if-gez v3, :cond_4

    int-to-float v2, v2

    .line 195
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    goto :goto_1

    :cond_4
    int-to-float v2, v8

    .line 197
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    :goto_1
    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 199
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 200
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 201
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    iget-object v10, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 202
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v2

    sub-float/2addr v9, v10

    .line 200
    invoke-virtual {v3, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 206
    :goto_2
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    .line 207
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v2, :cond_8

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 210
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMirror:Z

    if-eqz v0, :cond_5

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 213
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMirror:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v6, v2

    :cond_6
    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 216
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_7

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    goto :goto_3

    .line 219
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    :goto_3
    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 221
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 222
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 223
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 224
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget p0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    div-float/2addr p0, v7

    sub-float/2addr v3, p0

    .line 222
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5

    .line 226
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 227
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMirror:Z

    if-eqz v0, :cond_9

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 233
    :cond_9
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_a

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    goto :goto_4

    .line 236
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    :goto_4
    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 238
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 239
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 240
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 241
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget p0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    div-float/2addr p0, v7

    sub-float/2addr v3, p0

    .line 239
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_5
    return-void
.end method


# virtual methods
.method public calculateMatrixCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8

    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "uwCropRegion:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 117
    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v0

    .line 118
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    .line 119
    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    .line 120
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p2

    int-to-float p2, p1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr p2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr p2, v3

    float-to-double v4, p2

    int-to-float p2, v1

    div-float/2addr p2, v2

    mul-float/2addr p2, v3

    float-to-double v2, p2

    int-to-double v6, p1

    div-double/2addr v6, v4

    int-to-double v4, p0

    mul-double/2addr v6, v4

    double-to-int p0, v6

    int-to-double v4, v1

    div-double/2addr v4, v2

    int-to-double v2, v0

    mul-double/2addr v4, v2

    double-to-int p2, v4

    sub-int/2addr p1, p0

    .line 127
    div-int/lit8 p1, p1, 0x2

    iput p1, p3, Landroid/graphics/Rect;->left:I

    .line 128
    iget p1, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p0

    iput p1, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p2

    .line 129
    div-int/lit8 v1, v1, 0x2

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 130
    iget p0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p2

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public convertFromActiveArrayToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object p0

    .line 271
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "convertFromActiveArrayToView ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") to ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public convertFromViewToActiveArray(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 293
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "convertFromViewToActiveArray ("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ") to ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getPreviewSize()Landroid/graphics/Rect;
    .locals 3

    .line 310
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    iget p0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public init(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 73
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prepare: mirror: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preview: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMirror:Z

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    .line 77
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    .line 78
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPrepared:Z

    .line 82
    :cond_2
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMirror:Z

    .line 83
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    .line 84
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    .line 85
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mActiveArrayRect:Landroid/graphics/Rect;

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mActiveArrayWidth:I

    .line 87
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mActiveArrayHeight:I

    .line 89
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setSurfaceSize(II)V

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPrepared:Z

    return-void
.end method

.method public setCropRegion(Landroid/graphics/Rect;)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 141
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cropRegion:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 153
    iget p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    if-eqz p1, :cond_4

    .line 154
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->updateMatrix()V

    goto :goto_1

    .line 142
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 143
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->calculateMatrixCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 144
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 145
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Change crop region as "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 146
    :cond_2
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    if-eqz v0, :cond_3

    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->updateMatrix()V

    .line 149
    :cond_3
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    :cond_4
    :goto_1
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3

    .line 253
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setPreviewSize ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") to ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 256
    :cond_0
    iput p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    .line 257
    iput p2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    return-void
.end method

.method public setSurfaceSize(II)V
    .locals 3

    .line 101
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSurfaceSize ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") to ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 104
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPrepared:Z

    if-eqz v0, :cond_1

    .line 105
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    if-ne v0, p2, :cond_1

    return-void

    .line 109
    :cond_1
    iput p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    .line 110
    iput p2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    .line 111
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mActiveArrayRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 112
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->updateMatrix()V

    return-void
.end method
