.class Lorg/apache/commons/imaging/formats/bmp/ImageContents;
.super Ljava/lang/Object;
.source "ImageContents.java"


# instance fields
.field final bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

.field final colorTable:[B

.field final imageData:[B

.field final pixelParser:Lorg/apache/commons/imaging/formats/bmp/PixelParser;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[BLorg/apache/commons/imaging/formats/bmp/PixelParser;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/bmp/ImageContents;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    .line 28
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/bmp/ImageContents;->colorTable:[B

    .line 29
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/bmp/ImageContents;->imageData:[B

    .line 30
    iput-object p4, p0, Lorg/apache/commons/imaging/formats/bmp/ImageContents;->pixelParser:Lorg/apache/commons/imaging/formats/bmp/PixelParser;

    return-void
.end method
