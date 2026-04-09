.class public Lcom/sonyericsson/cameracommon/storage/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static final FIRST_REDUCE_RATIO_FULL_IMG:I = 0x2

.field private static final FULL_SIZE_MAX_LENGTH:I = 0x401

.field public static final TAG:Ljava/lang/String; = "ImageLoader"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImageData:[B

.field private final mOption:Landroid/graphics/BitmapFactory$Options;

.field private final mOrientation:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mImageData:[B

    .line 81
    iput p3, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOrientation:I

    .line 82
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[BI)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mUri:Landroid/net/Uri;

    .line 94
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mImageData:[B

    .line 95
    iput p3, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOrientation:I

    .line 96
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method

.method private calcBounds(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 177
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "calcBounds()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    .line 180
    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 182
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 186
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 187
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 189
    :cond_1
    iget p0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_6

    iget p0, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    .line 194
    :cond_2
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    new-array p0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BMP out height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, p1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 195
    :cond_3
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4

    new-array p0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BMP out width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, p1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 196
    :cond_4
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_5

    new-array p0, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scale ratio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    :goto_0
    const-string p0, "Bitmap read error"

    .line 190
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 191
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Failed to calculate bounds of bitmap"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private calcRatio(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 2

    .line 289
    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr p0, p2

    .line 290
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr p1, p2

    add-int p2, p0, p3

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    .line 292
    div-int/2addr p2, p3

    add-int v1, p1, p3

    sub-int/2addr v1, v0

    .line 293
    div-int/2addr v1, p3

    .line 294
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-nez p2, :cond_1

    .line 297
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "Full size image loading ratio: error"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return v0

    :cond_1
    if-le p2, v0, :cond_3

    .line 302
    div-int/2addr p0, p2

    if-gt p0, p3, :cond_2

    div-int/2addr p1, p2

    if-le p1, p3, :cond_3

    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 307
    :cond_3
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4

    new-array p0, v0, [Ljava/lang/String;

    const/4 p1, 0x0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Full size image loading ratio:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p0, p1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return p2
.end method

.method private decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 264
    new-instance p0, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 268
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "Loading full size image started"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 269
    :cond_0
    invoke-static {p1, p0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 270
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    const-string p1, "Loading full size image finished"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method private loadFullSize(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 219
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "loadFullSize()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 223
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 224
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "loadFullSize: Decode read error"

    .line 228
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 229
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Failed to decode full size image"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p2, 0x2

    .line 232
    new-array p2, p2, [Ljava/lang/String;

    const-string v1, "loadFullSize: mOrientation"

    aput-object v1, p2, v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOrientation:I

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->orientationToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 234
    iget p2, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOrientation:I

    if-eqz p2, :cond_2

    .line 236
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 237
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    .line 238
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 239
    iget p0, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOrientation:I

    int-to-float p0, p0

    invoke-virtual {v7, p0, p2, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 244
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 245
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-object p1
.end method


# virtual methods
.method public load()Landroid/graphics/Bitmap;
    .locals 9

    .line 104
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "Loading full size image started"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 109
    :try_start_0
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_1

    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start loading original image:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mImageData:[B

    if-eqz v3, :cond_2

    .line 113
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mImageData:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/storage/ContentResolverUtil;->crOpenInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/InvalidObjectException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    if-eqz v3, :cond_3

    .line 119
    :try_start_1
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->calcBounds(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)V

    .line 122
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    iget v6, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v7, 0x401

    invoke-direct {p0, v5, v6, v7}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->calcRatio(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 125
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto/16 :goto_c

    :catch_0
    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    goto/16 :goto_6

    :catch_1
    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    goto/16 :goto_8

    :catch_2
    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    goto/16 :goto_9

    :catch_3
    move-exception p0

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    goto/16 :goto_a

    .line 128
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mImageData:[B

    if-eqz v4, :cond_4

    .line 129
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mImageData:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_2

    .line 131
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/storage/ContentResolverUtil;->crOpenInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/InvalidObjectException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v4, :cond_5

    .line 135
    :try_start_2
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mOption:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, v4, v3}, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->loadFullSize(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/InvalidObjectException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/InvalidObjectException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v3

    goto :goto_4

    :catch_4
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v0, v4

    goto/16 :goto_c

    :catch_5
    move-object v3, v0

    :catch_6
    move-object v0, v4

    goto :goto_6

    :catch_7
    move-object v3, v0

    :catch_8
    move-object v0, v4

    goto/16 :goto_8

    :catch_9
    move-object v3, v0

    :catch_a
    move-object v0, v4

    goto/16 :goto_9

    :catch_b
    move-exception p0

    move-object v3, v0

    :goto_3
    move-object v0, v4

    goto/16 :goto_a

    .line 139
    :cond_5
    :goto_4
    :try_start_4
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_6

    const-string v3, "Loading full size image finished"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/InvalidObjectException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_6
    if-eqz v4, :cond_7

    .line 151
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c

    goto :goto_5

    :catch_c
    move-exception p0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close stream failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    move-object v3, v0

    goto/16 :goto_b

    :catchall_2
    move-exception p0

    goto/16 :goto_c

    :catch_d
    move-object v3, v0

    :goto_6
    :try_start_6
    const-string p0, "Maybe File access error."

    .line 147
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v0, :cond_8

    .line 151
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e

    goto/16 :goto_b

    :catch_e
    move-exception p0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    const-string v1, "Close stream failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :catch_f
    move-object v3, v0

    .line 145
    :goto_8
    :try_start_8
    new-array v2, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Close failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v0, :cond_8

    .line 151
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_10

    goto :goto_b

    :catch_10
    move-exception p0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :catch_11
    move-object v3, v0

    .line 143
    :goto_9
    :try_start_a
    new-array v2, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File not found:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v0, :cond_8

    .line 151
    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_12

    goto :goto_b

    :catch_12
    move-exception p0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :catch_13
    move-exception p0

    move-object v3, v0

    .line 141
    :goto_a
    :try_start_c
    new-array v2, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load full size error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v0, :cond_8

    .line 151
    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_14

    goto :goto_b

    :catch_14
    move-exception p0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_7

    :cond_8
    :goto_b
    return-object v3

    :goto_c
    if-eqz v0, :cond_9

    .line 151
    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_15

    goto :goto_d

    :catch_15
    move-exception v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close stream failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    :cond_9
    :goto_d
    throw p0
.end method
