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

    const-string p0, "Matrix to convert rect is null. Surface has not been created."

    .line 270
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 271
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0

    .line 273
    :cond_0
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 274
    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 275
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/RectF;->left:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Landroid/graphics/RectF;->right:F

    .line 276
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

    .line 132
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 136
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    .line 137
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_2

    .line 139
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 141
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mActiveArrayHeight:I

    int-to-float v3, v3

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 143
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMirror:Z

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 145
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mActiveArrayWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 148
    :cond_0
    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 149
    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    .line 151
    :cond_1
    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 153
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 154
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 155
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    iget-object v10, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 156
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v2

    sub-float/2addr v9, v10

    .line 154
    invoke-virtual {v3, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 158
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 159
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMirror:Z

    if-eqz v2, :cond_3

    .line 160
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 161
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mActiveArrayWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 164
    :cond_3
    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    .line 165
    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_1

    .line 167
    :cond_4
    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 169
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 170
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 171
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    iget-object v10, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 172
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v2

    sub-float/2addr v9, v10

    .line 170
    invoke-virtual {v3, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 176
    :goto_2
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    .line 177
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v2, :cond_8

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 180
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMirror:Z

    if-eqz v0, :cond_5

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 183
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

    .line 186
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_7

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_3

    .line 189
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 191
    :goto_3
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 192
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 193
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 194
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget p0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    div-float/2addr p0, v7

    sub-float/2addr v3, p0

    .line 192
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5

    .line 196
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 197
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMirror:Z

    if-eqz v0, :cond_9

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 203
    :cond_9
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_a

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_4

    .line 206
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 208
    :goto_4
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 209
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 210
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 211
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget p0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    div-float/2addr p0, v7

    sub-float/2addr v3, p0

    .line 209
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_5
    return-void
.end method


# virtual methods
.method public convertFromActiveArrayToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromActiveArrayToSurface:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object p0

    .line 241
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertFromActiveArrayToView ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") to ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public convertFromViewToActiveArray(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToActiveArray:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 263
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertFromViewToActiveArray ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") to ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getPreviewSize()Landroid/graphics/Rect;
    .locals 3

    .line 280
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    iget p0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public init(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    .line 73
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare: mirror: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", preview: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMirror:Z

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    .line 77
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    .line 78
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 79
    :cond_1
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPrepared:Z

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
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mActiveArrayRect:Landroid/graphics/Rect;

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

    .line 91
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPrepared:Z

    return-void
.end method

.method public setCropRegion(Landroid/graphics/Rect;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mCropRegion:Landroid/graphics/Rect;

    .line 124
    iget p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    if-eqz p1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->updateMatrix()V

    :cond_0
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 4

    .line 223
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewSize ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") to ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 226
    :cond_0
    iput p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    .line 227
    iput p2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    return-void
.end method

.method public setSurfaceSize(II)V
    .locals 4

    .line 101
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSurfaceSize ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") to ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

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
