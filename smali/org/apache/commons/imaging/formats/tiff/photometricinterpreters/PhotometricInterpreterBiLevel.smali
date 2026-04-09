.class public Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;
.super Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterBiLevel.java"


# instance fields
.field private final invert:Z


# direct methods
.method public constructor <init>(I[IIIIZ)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    .line 34
    iput-boolean p6, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;->invert:Z

    return-void
.end method


# virtual methods
.method public interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    aget p2, p2, v0

    .line 43
    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;->invert:Z

    if-eqz p0, :cond_0

    rsub-int p2, p2, 0xff

    :cond_0
    const/high16 p0, -0x1000000

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr p0, v1

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr p0, v1

    shl-int/2addr p2, v0

    or-int/2addr p0, p2

    .line 54
    invoke-virtual {p1, p3, p4, p0}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    return-void
.end method
