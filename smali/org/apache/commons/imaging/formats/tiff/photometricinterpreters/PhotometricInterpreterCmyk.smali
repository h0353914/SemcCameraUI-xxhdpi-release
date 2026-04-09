.class public Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterCmyk;
.super Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterCmyk.java"


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    return-void
.end method


# virtual methods
.method public interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 35
    aget p0, p2, p0

    const/4 v0, 0x1

    .line 36
    aget v0, p2, v0

    const/4 v1, 0x2

    .line 37
    aget v1, p2, v1

    const/4 v2, 0x3

    .line 38
    aget p2, p2, v2

    .line 40
    invoke-static {p0, v0, v1, p2}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCMYKtoRGB(IIII)I

    move-result p0

    .line 41
    invoke-virtual {p1, p3, p4, p0}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    return-void
.end method
