.class public Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;
.super Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterLogLuv.java"


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    return-void
.end method

.method private cube(F)F
    .locals 0

    mul-float p0, p1, p1

    mul-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    .line 45
    aget v2, p2, v1

    const/4 v3, 0x1

    .line 46
    aget v3, p2, v3

    int-to-byte v3, v3

    const/4 v4, 0x2

    .line 47
    aget v4, p2, v4

    int-to-byte v4, v4

    int-to-float v2, v2

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v2, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v2, v6

    const/high16 v7, 0x41800000    # 16.0f

    add-float/2addr v2, v7

    const/high16 v7, 0x42e80000    # 116.0f

    div-float/2addr v2, v7

    int-to-float v3, v3

    const/high16 v7, 0x43fa0000    # 500.0f

    div-float/2addr v3, v7

    add-float/2addr v3, v2

    int-to-float v4, v4

    const/high16 v7, 0x43480000    # 200.0f

    div-float/2addr v4, v7

    sub-float v4, v2, v4

    .line 55
    invoke-direct {p0, v3}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;->cube(F)F

    move-result v7

    .line 56
    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;->cube(F)F

    move-result v8

    .line 57
    invoke-direct {p0, v4}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;->cube(F)F

    move-result v0

    const v9, 0x3c1118c2    # 0.008856f

    cmpl-float v10, v8, v9

    const v11, 0x40f92f1b    # 7.787f

    const v12, 0x3e0d3dcb

    if-lez v10, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr v2, v12

    div-float v8, v2, v11

    :goto_0
    cmpl-float v2, v7, v9

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    sub-float/2addr v3, v12

    div-float v7, v3, v11

    :goto_1
    cmpl-float v2, v0, v9

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    sub-float/2addr v4, v12

    div-float v0, v4, v11

    :goto_2
    const v2, 0x42be1810

    mul-float/2addr v7, v2

    mul-float/2addr v8, v5

    const v2, 0x42d9c419

    mul-float/2addr v0, v2

    div-float/2addr v7, v5

    div-float/2addr v8, v5

    div-float/2addr v0, v5

    const v2, 0x404f65fe

    mul-float/2addr v2, v7

    const v3, -0x403b3d08    # -1.5372f

    mul-float/2addr v3, v8

    add-float/2addr v2, v3

    const v3, -0x4100b780    # -0.4986f

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    const v3, -0x4087f62b    # -0.9689f

    mul-float/2addr v3, v7

    const v4, 0x3ff01a37    # 1.8758f

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    const v4, 0x3d29fbe7    # 0.0415f

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    const v4, 0x3d6425af    # 0.0557f

    mul-float/2addr v7, v4

    const v4, -0x41af1aa0    # -0.204f

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    const v4, 0x3f874bc7    # 1.057f

    mul-float/2addr v0, v4

    add-float/2addr v7, v0

    float-to-double v4, v2

    const-wide v8, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v0, v4, v8

    const v10, 0x3d6147ae    # 0.055f

    const-wide v11, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const v13, 0x3f870a3d    # 1.055f

    const v14, 0x414eb852    # 12.92f

    if-lez v0, :cond_3

    .line 102
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v0, v13

    sub-float/2addr v0, v10

    goto :goto_3

    :cond_3
    mul-float v0, v2, v14

    :goto_3
    float-to-double v4, v3

    cmpl-double v2, v4, v8

    if-lez v2, :cond_4

    .line 107
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v13

    sub-float/2addr v2, v10

    goto :goto_4

    :cond_4
    mul-float v2, v3, v14

    :goto_4
    float-to-double v3, v7

    cmpl-double v5, v3, v8

    if-lez v5, :cond_5

    .line 113
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v13

    sub-float/2addr v3, v10

    goto :goto_5

    :cond_5
    mul-float v3, v7, v14

    :goto_5
    mul-float/2addr v0, v6

    float-to-int v0, v0

    mul-float/2addr v2, v6

    float-to-int v2, v2

    mul-float/2addr v3, v6

    float-to-int v3, v3

    .line 144
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v4, 0xff

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 145
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 146
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    shl-int/lit8 v0, v0, 0x10

    const/high16 v3, -0x1000000

    or-int/2addr v0, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    .line 149
    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    return-void
.end method
