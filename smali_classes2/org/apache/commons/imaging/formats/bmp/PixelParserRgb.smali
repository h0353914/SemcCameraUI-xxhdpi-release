.class Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;
.super Lorg/apache/commons/imaging/formats/bmp/PixelParserSimple;
.source "PixelParserRgb.java"


# instance fields
.field private bytecount:I

.field private cachedBitCount:I

.field private cachedByte:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/bmp/PixelParserSimple;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V

    return-void
.end method


# virtual methods
.method public getNextRGB()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto/16 :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-ne v0, v1, :cond_1

    .line 58
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 60
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->getColorTableRGB(I)I

    move-result v0

    .line 62
    iget v1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    return v0

    .line 65
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/high16 v4, -0x1000000

    const/16 v5, 0x10

    if-ne v0, v5, :cond_2

    .line 66
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->is:Ljava/io/InputStream;

    const-string v1, "BMP Image Data"

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const-string v3, "Pixel"

    invoke-static {v3, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    and-int/lit8 v1, v0, 0x1f

    shl-int/lit8 v1, v1, 0x3

    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0x1f

    shr-int/lit8 v0, v0, 0xa

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x13

    or-int/2addr v0, v4

    shl-int/lit8 v2, v2, 0xb

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    .line 75
    iget v1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    return v0

    .line 78
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v6, 0x18

    if-ne v0, v6, :cond_3

    .line 79
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v3, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 80
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v6, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/2addr v6, v2

    aget-byte v2, v3, v6

    and-int/lit16 v2, v2, 0xff

    .line 81
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v6, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v7, v6, 0x2

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v5

    or-int/2addr v3, v4

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v1, v3

    or-int/2addr v0, v1

    add-int/lit8 v6, v6, 0x3

    .line 86
    iput v6, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    return v0

    .line 89
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v6, 0x20

    if-ne v0, v6, :cond_4

    .line 90
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v6, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    .line 91
    iget-object v6, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v7, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/2addr v7, v2

    aget-byte v2, v6, v7

    and-int/lit16 v2, v2, 0xff

    .line 92
    iget-object v6, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v7, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v8, v7, 0x2

    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v5, v6, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v1, v4

    or-int/2addr v0, v1

    add-int/2addr v7, v3

    .line 97
    iput v7, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    return v0

    .line 102
    :cond_4
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown BitsPerPixel: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget p0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_5
    :goto_0
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v3, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-ge v0, v3, :cond_7

    .line 42
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    if-nez v0, :cond_6

    add-int/2addr v0, v1

    .line 47
    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    .line 48
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v3, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedByte:I

    add-int/2addr v3, v2

    .line 49
    iput v3, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    goto :goto_1

    .line 43
    :cond_6
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected leftover bits: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget p0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_7
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    shl-int v0, v2, v0

    sub-int/2addr v0, v2

    .line 52
    iget v2, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedByte:I

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v3, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    sub-int/2addr v1, v3

    shr-int v1, v2, v1

    and-int/2addr v0, v1

    .line 53
    iget v1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedByte:I

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v2, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    shl-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedByte:I

    .line 54
    iget v1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v2, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    .line 56
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->getColorTableRGB(I)I

    move-result p0

    return p0
.end method

.method public newline()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    .line 110
    :goto_0
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->is:Ljava/io/InputStream;

    const-string v1, "BMP Image Data"

    const-string v2, "Pixel"

    invoke-static {v2, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 112
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    goto :goto_0

    :cond_0
    return-void
.end method
