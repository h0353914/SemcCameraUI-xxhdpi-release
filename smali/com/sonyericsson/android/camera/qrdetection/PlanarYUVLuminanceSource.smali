.class public final Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "PlanarYUVLuminanceSource.java"


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final top:I

.field private final yuvData:[B


# direct methods
.method public constructor <init>([BIIIIIIZ)V
    .locals 1

    .line 48
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    add-int v0, p4, p6

    if-gt v0, p2, :cond_1

    add-int v0, p5, p7

    if-gt v0, p3, :cond_1

    .line 54
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->yuvData:[B

    .line 55
    iput p2, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->dataWidth:I

    .line 56
    iput p3, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->dataHeight:I

    .line 57
    iput p4, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->left:I

    .line 58
    iput p5, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->top:I

    if-eqz p8, :cond_0

    .line 60
    invoke-direct {p0, p6, p7}, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->reverseHorizontal(II)V

    :cond_0
    return-void

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Crop rectangle does not fit within image data."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private reverseHorizontal(II)V
    .locals 8

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->yuvData:[B

    .line 138
    iget v1, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->top:I

    iget v2, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 139
    div-int/lit8 v3, p1, 0x2

    add-int/2addr v3, v1

    add-int v4, v1, p1

    add-int/lit8 v4, v4, -0x1

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_0

    .line 141
    aget-byte v6, v0, v5

    .line 142
    aget-byte v7, v0, v4

    aput-byte v7, v0, v5

    .line 143
    aput-byte v6, v0, v4

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 138
    iget v3, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getMatrix()[B
    .locals 7

    .line 81
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->getHeight()I

    move-result v1

    .line 86
    iget v2, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v0, v2, :cond_0

    iget v3, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->dataHeight:I

    if-ne v1, v3, :cond_0

    .line 87
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->yuvData:[B

    return-object p0

    :cond_0
    mul-int v3, v0, v1

    .line 91
    new-array v4, v3, [B

    .line 92
    iget v5, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->top:I

    mul-int/2addr v5, v2

    iget v6, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v5, v6

    const/4 v6, 0x0

    if-ne v0, v2, :cond_1

    .line 96
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->yuvData:[B

    invoke-static {p0, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->yuvData:[B

    :goto_0
    if-ge v6, v1, :cond_2

    mul-int v3, v6, v0

    .line 104
    invoke-static {v2, v5, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget v3, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v5, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public getRow(I[B)[B
    .locals 2

    if-ltz p1, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    if-eqz p2, :cond_0

    .line 71
    array-length v1, p2

    if-ge v1, v0, :cond_1

    .line 72
    :cond_0
    new-array p2, v0, [B

    .line 74
    :cond_1
    iget v1, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->top:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr p1, v1

    iget v1, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->left:I

    add-int/2addr p1, v1

    .line 75
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 67
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Requested row is outside the image: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isCropSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;
    .locals 12

    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->getWidth()I

    move-result v6

    .line 117
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->getHeight()I

    move-result v7

    mul-int v0, v6, v7

    .line 118
    new-array v1, v0, [I

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->yuvData:[B

    .line 120
    iget v2, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->top:I

    iget v3, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v7, :cond_1

    mul-int v5, v4, v6

    move v8, v3

    :goto_1
    if-ge v8, v6, :cond_0

    add-int v9, v2, v8

    .line 125
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    add-int v10, v5, v8

    const v11, 0x10101

    mul-int/2addr v9, v11

    const/high16 v11, -0x1000000

    or-int/2addr v9, v11

    .line 126
    aput v9, v1, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 128
    :cond_0
    iget v5, p0, Lcom/sonyericsson/android/camera/qrdetection/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 131
    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, v6

    .line 132
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p0
.end method
