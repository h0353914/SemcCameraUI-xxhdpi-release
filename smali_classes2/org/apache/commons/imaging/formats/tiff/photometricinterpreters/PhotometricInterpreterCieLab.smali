.class public Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterCieLab;
.super Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterCieLab.java"


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

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

    const/4 p0, 0x0

    .line 34
    aget p0, p2, p0

    const/4 v0, 0x1

    .line 35
    aget v0, p2, v0

    int-to-byte v0, v0

    const/4 v1, 0x2

    .line 36
    aget p2, p2, v1

    int-to-byte p2, p2

    .line 38
    invoke-static {p0, v0, p2}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCIELabtoARGBTest(III)I

    move-result p0

    .line 39
    invoke-virtual {p1, p3, p4, p0}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    return-void
.end method
