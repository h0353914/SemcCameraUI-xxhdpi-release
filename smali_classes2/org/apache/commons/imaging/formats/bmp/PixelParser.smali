.class abstract Lorg/apache/commons/imaging/formats/bmp/PixelParser;
.super Ljava/lang/Object;
.source "PixelParser.java"


# instance fields
.field final bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

.field final colorTable:[B

.field final imageData:[B

.field final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParser;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    .line 36
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParser;->colorTable:[B

    .line 37
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParser;->imageData:[B

    .line 39
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParser;->is:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method getColorTableRGB(I)I
    .locals 2

    mul-int/lit8 p1, p1, 0x4

    .line 46
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParser;->colorTable:[B

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 47
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p1, p1, 0x2

    .line 48
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    const/high16 p1, -0x1000000

    or-int/2addr p0, p1

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public abstract processImage(Lorg/apache/commons/imaging/common/ImageBuilder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
