.class public Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpParser;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "JpegXmpParser.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    .line 31
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method


# virtual methods
.method public isXmpJpegSegment([B)Z
    .locals 0

    .line 35
    sget-object p0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->XMP_IDENTIFIER:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-static {p1, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->startsWith([BLorg/apache/commons/imaging/common/BinaryConstant;)Z

    move-result p0

    return p0
.end method

.method public parseXmpJpegSegment([B)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpParser;->isXmpJpegSegment([B)Z

    move-result p0

    const-string v0, "Invalid JPEG XMP Segment."

    if-eqz p0, :cond_0

    .line 43
    sget-object p0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->XMP_IDENTIFIER:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryConstant;->size()I

    move-result p0

    .line 47
    :try_start_0
    new-instance v1, Ljava/lang/String;

    array-length v2, p1

    sub-int/2addr v2, p0

    const-string v3, "utf-8"

    invoke-direct {v1, p1, p0, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 49
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 41
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
