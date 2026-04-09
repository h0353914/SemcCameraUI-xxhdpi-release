.class public Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;
.super Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterPalette.java"


# instance fields
.field private final indexColorMap:[I


# direct methods
.method public constructor <init>(I[IIII[I)V
    .locals 2

    .line 35
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->getBitsPerSample(I)I

    move-result p2

    const/4 p3, 0x1

    shl-int p2, p3, p2

    .line 39
    new-array p3, p2, [I

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->indexColorMap:[I

    :goto_0
    if-ge p1, p2, :cond_0

    .line 41
    aget p3, p6, p1

    shr-int/lit8 p3, p3, 0x8

    and-int/lit16 p3, p3, 0xff

    add-int p4, p1, p2

    .line 42
    aget p4, p6, p4

    shr-int/lit8 p4, p4, 0x8

    and-int/lit16 p4, p4, 0xff

    const/4 p5, 0x2

    mul-int/2addr p5, p2

    add-int/2addr p5, p1

    .line 43
    aget p5, p6, p5

    shr-int/lit8 p5, p5, 0x8

    and-int/lit16 p5, p5, 0xff

    .line 44
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->indexColorMap:[I

    const/high16 v1, -0x1000000

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p3, v1

    shl-int/lit8 p4, p4, 0x8

    or-int/2addr p3, p4

    or-int/2addr p3, p5

    aput p3, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->indexColorMap:[I

    const/4 v0, 0x0

    aget p2, p2, v0

    aget p0, p0, p2

    invoke-virtual {p1, p3, p4, p0}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    return-void
.end method
