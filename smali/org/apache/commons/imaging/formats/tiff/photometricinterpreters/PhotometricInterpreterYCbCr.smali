.class public Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;
.super Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterYCbCr.java"


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    return-void
.end method

.method public static convertYCbCrtoRGB(III)I
    .locals 10

    int-to-double v0, p0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    sub-double/2addr v0, v2

    const-wide v2, 0x3ff29fbe76c8b439L    # 1.164

    mul-double/2addr v2, v0

    int-to-double v0, p2

    const-wide/high16 v4, 0x4060000000000000L    # 128.0

    sub-double/2addr v0, v4

    const-wide v6, 0x3ff989374bc6a7f0L    # 1.596

    mul-double/2addr v6, v0

    add-double/2addr v6, v2

    const-wide v8, 0x3fea04189374bc6aL    # 0.813

    mul-double/2addr v8, v0

    sub-double v0, v2, v8

    int-to-double p0, p1

    sub-double/2addr p0, v4

    const-wide v4, 0x3fd916872b020c4aL    # 0.392

    mul-double/2addr v4, p0

    sub-double/2addr v0, v4

    const-wide v4, 0x400022d0e5604189L    # 2.017

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    double-to-int p0, v6

    const/16 p1, 0xff

    const/4 p2, 0x0

    .line 58
    invoke-static {p0, p2, p1}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result p0

    double-to-int v0, v0

    .line 59
    invoke-static {v0, p2, p1}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v0

    double-to-int v1, v2

    .line 60
    invoke-static {v1, p2, p1}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result p1

    shl-int/lit8 p0, p0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr p0, v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    shl-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static limit(III)I
    .locals 0

    .line 33
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 70
    aget v2, p2, v1

    const/4 v3, 0x1

    .line 71
    aget v3, p2, v3

    const/4 v4, 0x2

    .line 72
    aget v0, p2, v4

    int-to-double v4, v2

    int-to-double v6, v0

    const-wide/high16 v8, 0x4060000000000000L    # 128.0

    sub-double/2addr v6, v8

    const-wide v10, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double/2addr v10, v6

    add-double/2addr v10, v4

    int-to-double v2, v3

    sub-double/2addr v2, v8

    const-wide v8, 0x3fd60663c74fb54aL    # 0.34414

    mul-double/2addr v8, v2

    sub-double v8, v4, v8

    const-wide v12, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double/2addr v12, v6

    sub-double/2addr v8, v12

    const-wide v6, 0x3ffc5a1cac083127L    # 1.772

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-int v0, v10

    const/16 v2, 0xff

    .line 77
    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v0

    double-to-int v3, v8

    .line 78
    invoke-static {v3, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v3

    double-to-int v4, v4

    .line 79
    invoke-static {v4, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v2

    shl-int/lit8 v0, v0, 0x10

    const/high16 v4, -0x1000000

    or-int/2addr v0, v4

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    shl-int/lit8 v1, v2, 0x0

    or-int/2addr v0, v1

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    .line 83
    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    return-void
.end method
