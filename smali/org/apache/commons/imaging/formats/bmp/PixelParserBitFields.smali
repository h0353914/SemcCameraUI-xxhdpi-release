.class Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;
.super Lorg/apache/commons/imaging/formats/bmp/PixelParserSimple;
.source "PixelParserBitFields.java"


# instance fields
.field private final alphaMask:I

.field private final alphaShift:I

.field private final blueMask:I

.field private final blueShift:I

.field private bytecount:I

.field private final greenMask:I

.field private final greenShift:I

.field private final redMask:I

.field private final redShift:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/bmp/PixelParserSimple;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V

    .line 43
    iget p2, p1, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->redMask:I

    iput p2, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->redMask:I

    .line 44
    iget p2, p1, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->greenMask:I

    iput p2, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->greenMask:I

    .line 45
    iget p2, p1, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->blueMask:I

    iput p2, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->blueMask:I

    .line 46
    iget p1, p1, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->alphaMask:I

    iput p1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->alphaMask:I

    .line 48
    iget p1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->redMask:I

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->getMaskShift(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->redShift:I

    .line 49
    iget p1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->greenMask:I

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->getMaskShift(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->greenShift:I

    .line 50
    iget p1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->blueMask:I

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->getMaskShift(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->blueShift:I

    .line 51
    iget p1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->alphaMask:I

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->alphaMask:I

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->getMaskShift(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->alphaShift:I

    return-void
.end method

.method private getMaskShift(I)I
    .locals 4

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    const/4 v1, 0x1

    and-int v2, v1, p1

    const v3, 0x7fffffff

    if-nez v2, :cond_0

    shr-int/lit8 p1, p1, 0x1

    and-int/2addr p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    and-int v2, v1, p1

    if-ne v2, v1, :cond_1

    shr-int/lit8 p1, p1, 0x1

    and-int/2addr p1, v3

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    rsub-int/lit8 p0, p0, 0x8

    sub-int/2addr v0, p0

    return v0
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

    .line 76
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v1, 0x10

    const/16 v2, 0x18

    const/16 v3, 0xff

    const/16 v4, 0x8

    if-ne v0, v4, :cond_0

    .line 77
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->imageData:[B

    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    add-int/lit8 v5, v5, 0x0

    aget-byte v0, v0, v5

    and-int/2addr v0, v3

    .line 78
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-ne v0, v2, :cond_1

    const-string v0, "Pixel"

    .line 80
    iget-object v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->is:Ljava/io/InputStream;

    const-string v6, "BMP Image Data"

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v5, v6, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read3Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    .line 81
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v5, 0x20

    if-ne v0, v5, :cond_2

    const-string v0, "Pixel"

    .line 83
    iget-object v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->is:Ljava/io/InputStream;

    const-string v6, "BMP Image Data"

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v5, v6, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    .line 84
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-ne v0, v1, :cond_8

    const-string v0, "Pixel"

    .line 86
    iget-object v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->is:Ljava/io/InputStream;

    const-string v6, "BMP Image Data"

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v5, v6, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    .line 87
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    .line 92
    :goto_0
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->redMask:I

    and-int/2addr v5, v0

    .line 93
    iget v6, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->greenMask:I

    and-int/2addr v6, v0

    .line 94
    iget v7, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->blueMask:I

    and-int/2addr v7, v0

    .line 95
    iget v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->alphaMask:I

    if-eqz v8, :cond_3

    iget v3, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->alphaMask:I

    and-int/2addr v3, v0

    .line 97
    :cond_3
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->redShift:I

    if-ltz v0, :cond_4

    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->redShift:I

    shr-int v0, v5, v0

    goto :goto_1

    :cond_4
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->redShift:I

    neg-int v0, v0

    shl-int v0, v5, v0

    .line 98
    :goto_1
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->greenShift:I

    if-ltz v5, :cond_5

    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->greenShift:I

    shr-int v5, v6, v5

    goto :goto_2

    :cond_5
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->greenShift:I

    neg-int v5, v5

    shl-int v5, v6, v5

    .line 99
    :goto_2
    iget v6, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->blueShift:I

    if-ltz v6, :cond_6

    iget v6, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->blueShift:I

    shr-int v6, v7, v6

    goto :goto_3

    :cond_6
    iget v6, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->blueShift:I

    neg-int v6, v6

    shl-int v6, v7, v6

    .line 100
    :goto_3
    iget v7, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->alphaShift:I

    if-ltz v7, :cond_7

    iget p0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->alphaShift:I

    shr-int p0, v3, p0

    goto :goto_4

    :cond_7
    iget p0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->alphaShift:I

    neg-int p0, p0

    shl-int p0, v3, p0

    :goto_4
    shl-int/2addr p0, v2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    shl-int/lit8 v0, v5, 0x8

    or-int/2addr p0, v0

    shl-int/lit8 v0, v6, 0x0

    or-int/2addr p0, v0

    return p0

    .line 89
    :cond_8
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown BitsPerPixel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget p0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newline()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    :goto_0
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const-string v0, "Pixel"

    .line 108
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->is:Ljava/io/InputStream;

    const-string v2, "BMP Image Data"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 109
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    goto :goto_0

    :cond_0
    return-void
.end method
