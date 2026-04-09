.class public final Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;
.super Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;
.source "DataReaderStrips.java"


# instance fields
.field private final bitsPerPixel:I

.field private final byteOrder:Ljava/nio/ByteOrder;

.field private final compression:I

.field private final imageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

.field private final rowsPerStrip:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIIILjava/nio/ByteOrder;ILorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;)V
    .locals 9

    move-object v8, p0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 47
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;[IIIII)V

    move v0, p3

    .line 50
    iput v0, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->bitsPerPixel:I

    move/from16 v0, p9

    .line 51
    iput v0, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->compression:I

    move/from16 v0, p11

    .line 52
    iput v0, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    move-object/from16 v0, p12

    .line 53
    iput-object v0, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->imageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    move-object/from16 v0, p10

    .line 54
    iput-object v0, v8, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method private interpretStrip(Lorg/apache/commons/imaging/common/ImageBuilder;[BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    if-lt v0, p4, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 108
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->isHomogenous(I)Z

    move-result v1

    .line 110
    iget v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->predictor:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_4

    iget v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->bitsPerPixel:I

    if-ne v2, v0, :cond_4

    if-eqz v1, :cond_4

    .line 112
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    div-int/2addr p3, v0

    .line 113
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    add-int/2addr v0, p3

    if-le v0, p4, :cond_1

    .line 114
    iget p3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    sub-int p3, p4, p3

    .line 116
    :cond_1
    iget p4, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    .line 117
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    add-int/2addr v0, p3

    .line 118
    iput v4, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->x:I

    .line 119
    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    .line 120
    new-array p3, v5, [I

    move v1, v4

    :goto_0
    if-ge p4, v0, :cond_3

    move v2, v1

    move v1, v4

    .line 122
    :goto_1
    iget v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 123
    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    aput v2, p3, v4

    .line 124
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    invoke-virtual {v2, p1, p3, v1, p4}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_2
    add-int/lit8 p4, p4, 0x1

    move v1, v2

    goto :goto_0

    :cond_3
    return-void

    .line 129
    :cond_4
    iget v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->predictor:I

    if-eq v2, v3, :cond_a

    iget v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->bitsPerPixel:I

    const/16 v6, 0x18

    if-ne v2, v6, :cond_a

    if-eqz v1, :cond_a

    .line 131
    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    div-int/2addr p3, v1

    .line 132
    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    add-int/2addr v1, p3

    if-le v1, p4, :cond_5

    .line 133
    iget p3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    sub-int p3, p4, p3

    .line 135
    :cond_5
    iget p4, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    .line 136
    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    add-int/2addr v1, p3

    .line 137
    iput v4, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->x:I

    .line 138
    iget v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    .line 139
    iget-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    instance-of p3, p3, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterRgb;

    if-eqz p3, :cond_7

    move p3, v4

    :goto_2
    if-ge p4, v1, :cond_9

    move v2, p3

    move p3, v4

    .line 141
    :goto_3
    iget v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    if-ge p3, v3, :cond_6

    const/high16 v3, -0x1000000

    .line 142
    aget-byte v5, p2, v2

    shl-int/2addr v5, v0

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    shl-int/2addr v5, v0

    or-int/2addr v3, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    .line 145
    invoke-virtual {p1, p3, p4, v3}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v2, v2, 0x3

    goto :goto_3

    :cond_6
    add-int/lit8 p4, p4, 0x1

    move p3, v2

    goto :goto_2

    :cond_7
    const/4 p3, 0x3

    .line 149
    new-array p3, p3, [I

    move v0, v4

    :goto_4
    if-ge p4, v1, :cond_9

    move v2, v0

    move v0, v4

    .line 151
    :goto_5
    iget v6, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    if-ge v0, v6, :cond_8

    add-int/lit8 v6, v2, 0x1

    .line 152
    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    aput v2, p3, v4

    add-int/lit8 v2, v6, 0x1

    .line 153
    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, p3, v5

    add-int/lit8 v6, v2, 0x1

    .line 154
    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    aput v2, p3, v3

    .line 155
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    invoke-virtual {v2, p1, p3, v0, p4}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V

    add-int/lit8 v0, v0, 0x1

    move v2, v6

    goto :goto_5

    :cond_8
    add-int/lit8 p4, p4, 0x1

    move v0, v2

    goto :goto_4

    :cond_9
    return-void

    .line 169
    :cond_a
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 170
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {p2, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 172
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->bitsPerSampleLength:I

    new-array v0, v0, [I

    .line 173
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->resetPredictor()V

    move-object v1, v0

    move v0, v4

    :goto_6
    if-ge v0, p3, :cond_d

    .line 175
    invoke-virtual {p0, p2, v1}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->getSamplesAsBytes(Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;[I)V

    .line 177
    iget v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->x:I

    iget v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    if-ge v2, v3, :cond_b

    .line 178
    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->applyPredictor([I)[I

    move-result-object v1

    .line 180
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    iget v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->x:I

    iget v6, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    invoke-virtual {v2, p1, v1, v3, v6}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V

    .line 184
    :cond_b
    iget v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->x:I

    add-int/2addr v2, v5

    iput v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->x:I

    .line 185
    iget v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->x:I

    iget v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    if-lt v2, v3, :cond_c

    .line 186
    iput v4, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->x:I

    .line 187
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->resetPredictor()V

    .line 188
    iget v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    add-int/2addr v2, v5

    iput v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    .line 189
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->flushCache()V

    .line 190
    iget v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    if-lt v2, p4, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    return-void
.end method


# virtual methods
.method public readImageData(Ljava/awt/Rectangle;)Ljava/awt/image/BufferedImage;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 235
    iget v0, v7, Ljava/awt/Rectangle;->y:I

    iget v1, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    div-int/2addr v0, v1

    .line 236
    iget v1, v7, Ljava/awt/Rectangle;->y:I

    iget v2, v7, Ljava/awt/Rectangle;->height:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    div-int v8, v1, v2

    sub-int v1, v8, v0

    add-int/lit8 v1, v1, 0x1

    .line 237
    iget v2, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    mul-int v9, v1, v2

    .line 246
    iget v1, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    mul-int v10, v0, v1

    .line 247
    iget v1, v7, Ljava/awt/Rectangle;->y:I

    sub-int/2addr v1, v10

    iget v2, v7, Ljava/awt/Rectangle;->height:I

    add-int v11, v1, v2

    .line 252
    new-instance v12, Lorg/apache/commons/imaging/common/ImageBuilder;

    iget v1, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    const/4 v2, 0x0

    invoke-direct {v12, v1, v9, v2}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZ)V

    move v13, v0

    :goto_0
    if-gt v13, v8, :cond_0

    const-wide v0, 0xffffffffL

    .line 256
    iget v2, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    .line 257
    iget v2, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->height:I

    int-to-long v2, v2

    int-to-long v4, v13

    mul-long/2addr v4, v0

    sub-long/2addr v2, v4

    .line 258
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 259
    iget v2, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->bitsPerPixel:I

    iget v3, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    mul-long/2addr v2, v0

    .line 261
    iget v4, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    int-to-long v4, v4

    mul-long v14, v0, v4

    .line 263
    iget-object v4, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->imageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    invoke-virtual {v4, v13}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->getImageData(I)Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v4

    .line 265
    iget v5, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->compression:I

    long-to-int v3, v2

    iget v2, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    long-to-int v1, v0

    move-object v0, v6

    move/from16 v16, v1

    move-object v1, v4

    move v4, v2

    move v2, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->decompress([BIIII)[B

    move-result-object v0

    long-to-int v1, v14

    .line 268
    invoke-direct {v6, v12, v0, v1, v11}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->interpretStrip(Lorg/apache/commons/imaging/common/ImageBuilder;[BII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 276
    :cond_0
    iget v0, v7, Ljava/awt/Rectangle;->x:I

    if-nez v0, :cond_1

    iget v0, v7, Ljava/awt/Rectangle;->y:I

    if-ne v0, v10, :cond_1

    iget v0, v7, Ljava/awt/Rectangle;->width:I

    iget v1, v6, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    if-ne v0, v1, :cond_1

    iget v0, v7, Ljava/awt/Rectangle;->height:I

    if-ne v0, v9, :cond_1

    .line 281
    invoke-virtual {v12}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0

    .line 283
    :cond_1
    iget v0, v7, Ljava/awt/Rectangle;->x:I

    iget v1, v7, Ljava/awt/Rectangle;->y:I

    sub-int/2addr v1, v10

    iget v2, v7, Ljava/awt/Rectangle;->width:I

    iget v3, v7, Ljava/awt/Rectangle;->height:I

    invoke-virtual {v12, v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/ImageBuilder;->getSubimage(IIII)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public readImageData(Lorg/apache/commons/imaging/common/ImageBuilder;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 200
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->imageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->getImageDataLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-wide v1, 0xffffffffL

    .line 201
    iget v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    int-to-long v3, v3

    and-long/2addr v1, v3

    .line 202
    iget v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->height:I

    int-to-long v3, v3

    int-to-long v5, v0

    mul-long/2addr v5, v1

    sub-long/2addr v3, v5

    .line 203
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 204
    iget v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->bitsPerPixel:I

    iget v4, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    int-to-long v3, v3

    mul-long/2addr v3, v1

    .line 206
    iget v5, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    int-to-long v5, v5

    mul-long/2addr v5, v1

    .line 208
    iget-object v7, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->imageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    invoke-virtual {v7, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->getImageData(I)Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v9

    .line 210
    iget v10, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->compression:I

    long-to-int v11, v3

    iget v12, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    long-to-int v13, v1

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->decompress([BIIII)[B

    move-result-object v1

    long-to-int v2, v5

    .line 213
    iget v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->height:I

    invoke-direct {p0, p1, v1, v2, v3}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->interpretStrip(Lorg/apache/commons/imaging/common/ImageBuilder;[BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
