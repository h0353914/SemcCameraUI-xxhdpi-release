.class Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;
.super Lorg/apache/commons/imaging/formats/bmp/PixelParser;
.source "PixelParserRle.java"


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/bmp/PixelParser;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V

    return-void
.end method

.method private convertDataToSamples(I)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->getColorTableRGB(I)I

    move-result p0

    filled-new-array {p0}, [I

    move-result-object p0

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    .line 53
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->getColorTableRGB(I)I

    move-result v0

    .line 54
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->getColorTableRGB(I)I

    move-result p0

    filled-new-array {v0, p0}, [I

    move-result-object p0

    :goto_0
    return-object p0

    .line 57
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BMP RLE: bad BitsPerPixel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget p0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getSamplesPerByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 35
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 p0, 0x2

    return p0

    .line 38
    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BMP RLE: bad BitsPerPixel: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget p0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processByteOfData([IIIIIILorg/apache/commons/imaging/common/ImageBuilder;)I
    .locals 4

    const/4 p0, 0x0

    move v0, p3

    move p3, p0

    :goto_0
    if-ge p0, p2, :cond_1

    if-ltz v0, :cond_0

    if-ge v0, p5, :cond_0

    if-ltz p4, :cond_0

    if-ge p4, p6, :cond_0

    .line 73
    array-length v1, p1

    rem-int v1, p0, v1

    aget v1, p1, v1

    .line 75
    invoke-virtual {p7, v0, p4, v1}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    goto :goto_1

    .line 78
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "skipping bad pixel ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return p3
.end method


# virtual methods
.method public processImage(Lorg/apache/commons/imaging/common/ImageBuilder;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    .line 91
    iget-object v0, v8, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v9, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    .line 92
    iget-object v0, v8, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v10, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    add-int/lit8 v0, v10, -0x1

    const/4 v11, 0x0

    move v12, v0

    move v13, v11

    move v14, v13

    :goto_0
    if-nez v13, :cond_7

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RLE ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v8, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->is:Ljava/io/InputStream;

    const-string v4, "BMP: Bad RLE"

    invoke-static {v0, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v3, v0, 0xff

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->is:Ljava/io/InputStream;

    invoke-static {v0, v1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v3, :cond_6

    if-eqz v0, :cond_5

    const/4 v15, 0x1

    if-eq v0, v15, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 121
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->getSamplesPerByte()I

    move-result v7

    .line 122
    div-int v1, v0, v7

    .line 123
    rem-int v2, v0, v7

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 126
    :cond_0
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 134
    :cond_1
    iget-object v2, v8, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->is:Ljava/io/InputStream;

    const-string v3, "RLE: Absolute Mode"

    const-string v4, "bytes"

    invoke-static {v4, v2, v1, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v16

    move/from16 v18, v11

    move/from16 v17, v14

    move v14, v0

    :goto_1
    if-lez v14, :cond_2

    .line 140
    aget-byte v0, v16, v18

    and-int/lit16 v0, v0, 0xff

    invoke-direct {v8, v0}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->convertDataToSamples(I)[I

    move-result-object v1

    .line 141
    invoke-static {v14, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v3, v17

    move v4, v12

    move v5, v9

    move v6, v10

    move/from16 v19, v7

    move-object/from16 v7, p1

    .line 146
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->processByteOfData([IIIIIILorg/apache/commons/imaging/common/ImageBuilder;)I

    move-result v0

    add-int v17, v17, v0

    sub-int/2addr v14, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v7, v19

    goto :goto_1

    :cond_2
    move/from16 v14, v17

    goto/16 :goto_0

    .line 114
    :cond_3
    const-string v0, "RLE deltaX"

    iget-object v1, v8, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->is:Ljava/io/InputStream;

    invoke-static {v0, v1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 115
    const-string v1, "RLE deltaY"

    iget-object v2, v8, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->is:Ljava/io/InputStream;

    invoke-static {v1, v2, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v14, v0

    sub-int/2addr v12, v1

    goto/16 :goto_0

    :cond_4
    move v13, v15

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v12, v12, -0x1

    move v14, v11

    goto/16 :goto_0

    .line 157
    :cond_6
    invoke-direct {v8, v0}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->convertDataToSamples(I)[I

    move-result-object v1

    move-object/from16 v0, p0

    move v2, v3

    move v3, v14

    move v4, v12

    move v5, v9

    move v6, v10

    move-object/from16 v7, p1

    .line 159
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->processByteOfData([IIIIIILorg/apache/commons/imaging/common/ImageBuilder;)I

    move-result v0

    add-int/2addr v14, v0

    goto/16 :goto_0

    :cond_7
    return-void
.end method
