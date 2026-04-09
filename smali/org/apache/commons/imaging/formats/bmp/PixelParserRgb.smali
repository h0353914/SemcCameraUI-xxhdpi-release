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

    const/16 v3, 0xff

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    goto/16 :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-ne v0, v1, :cond_1

    .line 58
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v1, v1, 0x0

    aget-byte v0, v0, v1

    and-int/2addr v0, v3

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

    const/high16 v5, -0x1000000

    const/16 v6, 0x10

    if-ne v0, v6, :cond_2

    const-string v0, "Pixel"

    .line 66
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->is:Ljava/io/InputStream;

    const-string v3, "BMP Image Data"

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    shr-int/lit8 v2, v0, 0x0

    const/16 v3, 0x1f

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x3

    shr-int/lit8 v4, v0, 0x5

    and-int/2addr v4, v3

    shl-int/lit8 v4, v4, 0x3

    shr-int/lit8 v0, v0, 0xa

    and-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x3

    shl-int/2addr v0, v6

    or-int/2addr v0, v5

    shl-int/lit8 v1, v4, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x0

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

    const/16 v7, 0x18

    if-ne v0, v7, :cond_3

    .line 79
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v4, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v4, v4, 0x0

    aget-byte v0, v0, v4

    and-int/2addr v0, v3

    .line 80
    iget-object v4, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v7, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/2addr v7, v2

    aget-byte v2, v4, v7

    and-int/2addr v2, v3

    .line 81
    iget-object v4, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v7, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v7, v7, 0x2

    aget-byte v4, v4, v7

    and-int/2addr v3, v4

    shl-int/2addr v3, v6

    or-int/2addr v3, v5

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v1, v3

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr v0, v1

    .line 86
    iget v1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    return v0

    .line 89
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v7, 0x20

    if-ne v0, v7, :cond_4

    .line 90
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v7, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v7, v7, 0x0

    aget-byte v0, v0, v7

    and-int/2addr v0, v3

    .line 91
    iget-object v7, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/2addr v8, v2

    aget-byte v2, v7, v8

    and-int/2addr v2, v3

    .line 92
    iget-object v7, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    and-int/2addr v3, v7

    shl-int/2addr v3, v6

    or-int/2addr v3, v5

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v1, v3

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr v0, v1

    .line 97
    iget v1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    return v0

    .line 102
    :cond_4
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown BitsPerPixel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget p0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_5
    :goto_0
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v4, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-ge v0, v4, :cond_7

    .line 42
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    if-eqz v0, :cond_6

    .line 43
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected leftover bits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget p0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_6
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    .line 48
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v4, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    aget-byte v0, v0, v4

    and-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedByte:I

    .line 49
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    .line 51
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    shl-int v0, v2, v0

    sub-int/2addr v0, v2

    .line 52
    iget v2, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedByte:I

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v4, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    sub-int/2addr v1, v4

    shr-int v1, v2, v1

    and-int/2addr v0, v1

    .line 53
    iget v1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedByte:I

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v2, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    shl-int/2addr v1, v2

    and-int/2addr v1, v3

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

    const-string v0, "Pixel"

    .line 111
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->is:Ljava/io/InputStream;

    const-string v2, "BMP Image Data"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 112
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    goto :goto_0

    :cond_0
    return-void
.end method
