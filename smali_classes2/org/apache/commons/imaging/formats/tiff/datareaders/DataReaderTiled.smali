.class public final Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;
.super Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;
.source "DataReaderTiled.java"


# instance fields
.field private final bitsPerPixel:I

.field private final byteOrder:Ljava/nio/ByteOrder;

.field private final compression:I

.field private final imageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;

.field private final tileLength:I

.field private final tileWidth:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;III[IIIIIILjava/nio/ByteOrder;Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    .line 50
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;[IIIII)V

    move v0, p3

    .line 53
    iput v0, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    move v0, p4

    .line 54
    iput v0, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    move v0, p5

    .line 56
    iput v0, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->bitsPerPixel:I

    move/from16 v0, p11

    .line 57
    iput v0, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->compression:I

    move-object/from16 v0, p13

    .line 59
    iput-object v0, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->imageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;

    move-object/from16 v0, p12

    .line 60
    iput-object v0, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method private interpretTile(Lorg/apache/commons/imaging/common/ImageBuilder;[BIIII)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    const/16 v5, 0x8

    .line 74
    invoke-virtual {p0, v5}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->isHomogenous(I)Z

    move-result v6

    .line 76
    iget v7, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->predictor:I

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eq v7, v9, :cond_6

    iget v7, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->bitsPerPixel:I

    const/16 v10, 0x18

    if-ne v7, v10, :cond_6

    if-eqz v6, :cond_6

    .line 79
    iget v6, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    add-int v6, p4, v6

    if-le v6, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    .line 85
    :goto_0
    iget v6, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    add-int v6, p3, v6

    if-le v6, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v6

    .line 90
    :goto_1
    iget-object v6, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    instance-of v6, v6, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterRgb;

    const/4 v7, 0x3

    if-eqz v6, :cond_3

    move/from16 v6, p4

    :goto_2
    if-ge v6, v4, :cond_5

    sub-int v8, v6, p4

    .line 92
    iget v9, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    mul-int/2addr v8, v9

    mul-int/2addr v8, v7

    move/from16 v9, p3

    :goto_3
    if-ge v9, v3, :cond_2

    .line 94
    aget-byte v10, v2, v8

    shl-int/2addr v10, v5

    add-int/lit8 v11, v8, 0x1

    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    shl-int/2addr v10, v5

    const/high16 v11, -0x1000000

    or-int/2addr v10, v11

    add-int/lit8 v11, v8, 0x2

    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    .line 97
    invoke-virtual {v1, v9, v6, v10}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v7

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 101
    :cond_3
    new-array v5, v7, [I

    move/from16 v6, p4

    :goto_4
    if-ge v6, v4, :cond_5

    sub-int v10, v6, p4

    .line 103
    iget v11, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    mul-int/2addr v10, v11

    mul-int/2addr v10, v7

    move/from16 v11, p3

    :goto_5
    if-ge v11, v3, :cond_4

    add-int/lit8 v12, v10, 0x1

    .line 105
    aget-byte v13, v2, v10

    and-int/lit16 v13, v13, 0xff

    aput v13, v5, v8

    add-int/lit8 v13, v10, 0x2

    .line 106
    aget-byte v12, v2, v12

    and-int/lit16 v12, v12, 0xff

    const/4 v14, 0x1

    aput v12, v5, v14

    add-int/2addr v10, v7

    .line 107
    aget-byte v12, v2, v13

    and-int/lit16 v12, v12, 0xff

    aput v12, v5, v9

    .line 108
    iget-object v12, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    invoke-virtual {v12, v1, v5, v11, v6}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    return-void

    .line 118
    :cond_6
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 119
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;

    iget-object v6, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v2, v5, v6}, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 121
    iget v5, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    iget v6, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    mul-int/2addr v5, v6

    .line 126
    iget v6, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->bitsPerSampleLength:I

    new-array v6, v6, [I

    .line 127
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->resetPredictor()V

    move v7, v8

    move v9, v7

    move v10, v9

    :goto_6
    if-ge v7, v5, :cond_a

    add-int v11, v9, p3

    add-int v12, v10, p4

    .line 133
    invoke-virtual {p0, v2, v6}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->getSamplesAsBytes(Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;[I)V

    if-ge v11, v3, :cond_7

    if-ge v12, v4, :cond_7

    .line 136
    invoke-virtual {p0, v6}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->applyPredictor([I)[I

    move-result-object v6

    .line 137
    iget-object v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    invoke-virtual {v13, v1, v6, v11, v12}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V

    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 143
    iget v11, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    if-lt v9, v11, :cond_9

    .line 145
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->resetPredictor()V

    add-int/lit8 v10, v10, 0x1

    .line 147
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->flushCache()V

    .line 148
    iget v9, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    if-lt v10, v9, :cond_8

    goto :goto_7

    :cond_8
    move v9, v8

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    return-void
.end method


# virtual methods
.method public readImageData(Ljava/awt/Rectangle;)Ljava/awt/image/BufferedImage;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 189
    iget v0, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    iget v1, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->bitsPerPixel:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    .line 190
    div-int/lit8 v0, v0, 0x8

    .line 191
    iget v1, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    mul-int v9, v0, v1

    .line 197
    iget v0, v8, Ljava/awt/Rectangle;->x:I

    iget v1, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    div-int v10, v0, v1

    .line 198
    iget v0, v8, Ljava/awt/Rectangle;->x:I

    iget v1, v8, Ljava/awt/Rectangle;->width:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    div-int v11, v0, v1

    .line 199
    iget v0, v8, Ljava/awt/Rectangle;->y:I

    iget v1, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    div-int/2addr v0, v1

    .line 200
    iget v1, v8, Ljava/awt/Rectangle;->y:I

    iget v2, v8, Ljava/awt/Rectangle;->height:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    div-int v12, v1, v2

    sub-int v1, v11, v10

    add-int/lit8 v1, v1, 0x1

    sub-int v3, v12, v0

    add-int/lit8 v3, v3, 0x1

    .line 204
    iget v4, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    mul-int v13, v1, v4

    mul-int v14, v3, v2

    .line 207
    iget v1, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->width:I

    iget v2, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    div-int v15, v1, v2

    mul-int v6, v10, v2

    .line 210
    iget v1, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    mul-int v5, v0, v1

    .line 212
    new-instance v4, Lorg/apache/commons/imaging/common/ImageBuilder;

    const/4 v1, 0x0

    invoke-direct {v4, v13, v14, v1}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZ)V

    move v3, v0

    :goto_0
    if-gt v3, v12, :cond_1

    move v2, v10

    :goto_1
    if-gt v2, v11, :cond_0

    mul-int v0, v3, v15

    add-int/2addr v0, v2

    .line 218
    iget-object v1, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->imageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;

    iget-object v1, v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;->tiles:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v1

    .line 219
    iget v0, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->compression:I

    move-object/from16 v16, v4

    iget v4, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    move/from16 v17, v5

    iget v5, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v19, v2

    move/from16 v2, v18

    move/from16 v18, v3

    move v3, v9

    move-object/from16 v20, v16

    move/from16 v16, v9

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->decompress([BIIII)[B

    move-result-object v2

    .line 221
    iget v0, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    mul-int v0, v0, v19

    sub-int v3, v0, v6

    .line 222
    iget v0, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    mul-int v0, v0, v18

    sub-int v4, v0, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v5, v13

    move v7, v6

    move v6, v14

    .line 223
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->interpretTile(Lorg/apache/commons/imaging/common/ImageBuilder;[BIIII)V

    add-int/lit8 v2, v19, 0x1

    move v6, v7

    move v5, v9

    move/from16 v9, v16

    move/from16 v3, v18

    move-object/from16 v4, v20

    move-object/from16 v7, p0

    goto :goto_1

    :cond_0
    move/from16 v18, v3

    move-object/from16 v20, v4

    move v7, v6

    move/from16 v16, v9

    move v9, v5

    add-int/lit8 v3, v18, 0x1

    move/from16 v9, v16

    move-object/from16 v7, p0

    goto :goto_0

    :cond_1
    move-object/from16 v20, v4

    move v9, v5

    move v7, v6

    .line 227
    iget v0, v8, Ljava/awt/Rectangle;->x:I

    if-ne v0, v7, :cond_2

    iget v0, v8, Ljava/awt/Rectangle;->y:I

    if-ne v0, v9, :cond_2

    iget v0, v8, Ljava/awt/Rectangle;->width:I

    if-ne v0, v13, :cond_2

    iget v0, v8, Ljava/awt/Rectangle;->height:I

    if-ne v0, v14, :cond_2

    .line 231
    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0

    .line 233
    :cond_2
    iget v0, v8, Ljava/awt/Rectangle;->x:I

    sub-int/2addr v0, v7

    iget v1, v8, Ljava/awt/Rectangle;->y:I

    sub-int/2addr v1, v9

    iget v2, v8, Ljava/awt/Rectangle;->width:I

    iget v3, v8, Ljava/awt/Rectangle;->height:I

    move-object/from16 v4, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/ImageBuilder;->getSubimage(IIII)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public readImageData(Lorg/apache/commons/imaging/common/ImageBuilder;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    .line 159
    iget v0, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    iget v1, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->bitsPerPixel:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    .line 160
    div-int/lit8 v0, v0, 0x8

    .line 161
    iget v1, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    mul-int v8, v0, v1

    .line 165
    iget-object v0, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->imageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;

    iget-object v9, v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;->tiles:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    array-length v10, v9

    const/4 v11, 0x0

    move v12, v11

    move v13, v12

    move v14, v13

    :goto_0
    if-ge v12, v10, :cond_2

    aget-object v0, v9, v12

    .line 166
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v1

    .line 168
    iget v2, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->compression:I

    iget v4, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    iget v5, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    move-object v0, p0

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->decompress([BIIII)[B

    move-result-object v2

    .line 171
    iget v5, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->width:I

    iget v6, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->height:I

    move-object/from16 v1, p1

    move v3, v13

    move v4, v14

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->interpretTile(Lorg/apache/commons/imaging/common/ImageBuilder;[BIIII)V

    .line 173
    iget v0, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    add-int/2addr v13, v0

    .line 174
    iget v0, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->width:I

    if-lt v13, v0, :cond_1

    .line 176
    iget v0, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    add-int/2addr v14, v0

    .line 177
    iget v0, v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->height:I

    if-lt v14, v0, :cond_0

    goto :goto_1

    :cond_0
    move v13, v11

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
