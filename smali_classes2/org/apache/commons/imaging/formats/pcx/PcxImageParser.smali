.class public Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "PcxImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;
    }
.end annotation


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".pcx"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    const-string v0, ".pcx"

    const-string v1, ".pcc"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    .line 72
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private read256ColorPalette(Ljava/io/InputStream;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x301

    .line 346
    const-string v0, "Error reading palette"

    const-string v1, "Palette"

    invoke-static {v1, p1, p0, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x0

    .line 348
    aget-byte v0, p0, p1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x100

    .line 351
    new-array v1, v0, [I

    :goto_0
    if-ge p1, v0, :cond_1

    mul-int/lit8 v2, p1, 0x3

    add-int/lit8 v3, v2, 0x1

    .line 353
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private read256ColorPaletteFromEndOfFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 365
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 366
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v3

    const-wide/16 v5, 0x301

    sub-long/2addr v3, v5

    long-to-int p1, v3

    int-to-long v3, p1

    .line 367
    invoke-static {v2, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 368
    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->read256ColorPalette(Ljava/io/InputStream;)[I

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v2, p1, v1

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 v2, 0x0

    :goto_0
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v2, p1, v1

    invoke-static {v1, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method private readImage(Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;Ljava/io/InputStream;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/awt/image/BufferedImage;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 378
    iget v3, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->xMax:I

    iget v4, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->xMin:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    if-ltz v3, :cond_16

    .line 382
    iget v5, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->yMax:I

    iget v6, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->yMin:I

    sub-int/2addr v5, v6

    add-int/lit8 v11, v5, 0x1

    if-ltz v11, :cond_15

    .line 387
    iget v5, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bytesPerLine:I

    iget v6, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    mul-int/2addr v5, v6

    .line 388
    new-array v12, v5, [B

    .line 389
    iget v5, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/4 v6, 0x4

    const/16 v13, 0x8

    const/4 v7, 0x2

    const/4 v14, 0x0

    if-eq v5, v4, :cond_0

    iget v5, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    if-eq v5, v7, :cond_0

    iget v5, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    if-eq v5, v6, :cond_0

    iget v5, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    if-ne v5, v13, :cond_7

    :cond_0
    iget v5, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    if-ne v5, v4, :cond_7

    .line 392
    iget v5, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    mul-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v8, v5, 0x8

    mul-int v5, v11, v8

    .line 393
    new-array v6, v5, [B

    move v7, v14

    :goto_0
    if-ge v7, v11, :cond_1

    .line 395
    invoke-direct {v0, v1, v2, v12}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readScanLine(Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;Ljava/io/InputStream;[B)V

    mul-int v9, v7, v8

    .line 396
    invoke-static {v12, v14, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 399
    :cond_1
    new-instance v7, Ljava/awt/image/DataBufferByte;

    invoke-direct {v7, v6, v5}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    .line 401
    iget v5, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    if-ne v5, v4, :cond_2

    const v0, 0xffffff

    .line 402
    filled-new-array {v14, v0}, [I

    move-result-object v0

    :goto_1
    move-object/from16 v18, v0

    goto :goto_3

    .line 403
    :cond_2
    iget v5, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    if-ne v5, v13, :cond_5

    .line 410
    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->read256ColorPalette(Ljava/io/InputStream;)[I

    move-result-object v2

    if-nez v2, :cond_3

    move-object/from16 v5, p3

    .line 412
    invoke-direct {v0, v5}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->read256ColorPaletteFromEndOfFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)[I

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_1

    .line 415
    :cond_4
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "No 256 color palette found in image that needs it"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_5
    iget-object v0, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->colormap:[I

    goto :goto_1

    .line 422
    :goto_3
    iget v0, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    if-ne v0, v13, :cond_6

    .line 423
    filled-new-array {v14}, [I

    move-result-object v10

    const/4 v0, 0x0

    const/4 v9, 0x1

    move-object v5, v7

    move v6, v3

    move v7, v11

    move-object v11, v0

    invoke-static/range {v5 .. v11}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    goto :goto_4

    .line 427
    :cond_6
    iget v0, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/4 v2, 0x0

    invoke-static {v7, v3, v11, v0, v2}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;IIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    .line 430
    :goto_4
    new-instance v2, Ljava/awt/image/IndexColorModel;

    iget v3, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    iget v1, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    shl-int v17, v4, v1

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v2

    move/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    .line 433
    new-instance v1, Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/IndexColorModel;->isAlphaPremultiplied()Z

    move-result v3

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    invoke-direct {v1, v2, v0, v3, v4}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v1

    .line 435
    :cond_7
    iget v5, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    if-ne v5, v4, :cond_c

    iget v5, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    if-gt v7, v5, :cond_c

    iget v5, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    if-gt v5, v6, :cond_c

    .line 437
    new-instance v5, Ljava/awt/image/IndexColorModel;

    iget v6, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    iget v7, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    shl-int v17, v4, v7

    iget-object v7, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->colormap:[I

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v5

    move/from16 v16, v6

    move-object/from16 v18, v7

    invoke-direct/range {v15 .. v22}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    .line 440
    new-instance v15, Ljava/awt/image/BufferedImage;

    const/16 v6, 0xc

    invoke-direct {v15, v3, v11, v6, v5}, Ljava/awt/image/BufferedImage;-><init>(IIILjava/awt/image/IndexColorModel;)V

    .line 442
    new-array v10, v3, [B

    move v9, v14

    :goto_5
    if-ge v9, v11, :cond_b

    .line 444
    invoke-direct {v0, v1, v2, v12}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readScanLine(Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;Ljava/io/InputStream;[B)V

    .line 446
    invoke-static {v10, v14}, Ljava/util/Arrays;->fill([BB)V

    move v5, v14

    move v6, v5

    .line 447
    :goto_6
    iget v7, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    if-ge v5, v7, :cond_a

    move v7, v14

    .line 448
    :goto_7
    iget v8, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bytesPerLine:I

    if-ge v7, v8, :cond_9

    add-int/lit8 v8, v6, 0x1

    .line 449
    aget-byte v6, v12, v6

    and-int/lit16 v6, v6, 0xff

    :goto_8
    if-ge v14, v13, :cond_8

    mul-int/lit8 v17, v7, 0x8

    add-int v13, v17, v14

    if-ge v13, v3, :cond_8

    .line 451
    aget-byte v17, v10, v13

    rsub-int/lit8 v19, v14, 0x7

    shr-int v19, v6, v19

    and-int/lit8 v19, v19, 0x1

    shl-int v4, v19, v5

    int-to-byte v4, v4

    or-int v4, v17, v4

    int-to-byte v4, v4

    aput-byte v4, v10, v13

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    const/16 v13, 0x8

    goto :goto_8

    :cond_8
    add-int/lit8 v7, v7, 0x1

    move v6, v8

    const/4 v4, 0x1

    const/16 v13, 0x8

    const/4 v14, 0x0

    goto :goto_7

    :cond_9
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x1

    const/16 v13, 0x8

    const/4 v14, 0x0

    goto :goto_6

    .line 455
    :cond_a
    invoke-virtual {v15}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v4, 0x1

    move v7, v9

    move v8, v3

    move v14, v9

    move v9, v4

    move-object v4, v10

    invoke-virtual/range {v5 .. v10}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v9, v14, 0x1

    const/4 v4, 0x1

    const/16 v13, 0x8

    const/4 v14, 0x0

    goto :goto_5

    :cond_b
    return-object v15

    .line 458
    :cond_c
    iget v4, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/16 v13, 0x3e8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_e

    iget v4, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_e

    mul-int v4, v3, v11

    .line 460
    new-array v5, v4, [B

    .line 461
    new-array v6, v4, [B

    .line 462
    new-array v4, v4, [B

    filled-new-array {v5, v6, v4}, [[B

    move-result-object v4

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v11, :cond_d

    .line 464
    invoke-direct {v0, v1, v2, v12}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readScanLine(Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;Ljava/io/InputStream;[B)V

    const/4 v6, 0x0

    .line 465
    aget-object v8, v4, v6

    mul-int v9, v5, v3

    invoke-static {v12, v6, v8, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 466
    iget v6, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bytesPerLine:I

    const/4 v8, 0x1

    aget-object v10, v4, v8

    invoke-static {v12, v6, v10, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 468
    iget v6, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bytesPerLine:I

    mul-int/2addr v6, v7

    aget-object v8, v4, v7

    invoke-static {v12, v6, v8, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 471
    :cond_d
    new-instance v5, Ljava/awt/image/DataBufferByte;

    const/4 v0, 0x0

    aget-object v1, v4, v0

    array-length v1, v1

    invoke-direct {v5, v4, v1}, Ljava/awt/image/DataBufferByte;-><init>([[BI)V

    const/4 v1, 0x1

    .line 473
    filled-new-array {v0, v1, v7}, [I

    move-result-object v9

    filled-new-array {v0, v0, v0}, [I

    move-result-object v10

    const/4 v0, 0x0

    move v6, v3

    move v7, v11

    move v8, v3

    move-object v11, v0

    invoke-static/range {v5 .. v11}, Ljava/awt/image/Raster;->createBandedRaster(Ljava/awt/image/DataBuffer;III[I[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    .line 476
    new-instance v7, Ljava/awt/image/ComponentColorModel;

    invoke-static {v13}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    .line 479
    new-instance v1, Ljava/awt/image/BufferedImage;

    invoke-virtual {v7}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v2

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    invoke-direct {v1, v7, v0, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v1

    .line 481
    :cond_e
    iget v4, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/16 v5, 0x18

    if-ne v4, v5, :cond_f

    iget v4, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_10

    goto :goto_a

    :cond_f
    const/4 v6, 0x1

    :goto_a
    iget v4, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/16 v8, 0x20

    if-ne v4, v8, :cond_14

    iget v4, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    if-ne v4, v6, :cond_14

    :cond_10
    mul-int/lit8 v8, v3, 0x3

    mul-int v4, v8, v11

    .line 484
    new-array v6, v4, [B

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v11, :cond_13

    .line 486
    invoke-direct {v0, v1, v2, v12}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readScanLine(Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;Ljava/io/InputStream;[B)V

    .line 487
    iget v10, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    if-ne v10, v5, :cond_11

    mul-int v10, v9, v8

    const/4 v14, 0x0

    .line 488
    invoke-static {v12, v14, v6, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d

    :cond_11
    const/4 v10, 0x0

    :goto_c
    if-ge v10, v3, :cond_12

    mul-int v14, v9, v8

    mul-int/lit8 v15, v10, 0x3

    add-int/2addr v14, v15

    mul-int/lit8 v15, v10, 0x4

    .line 492
    aget-byte v17, v12, v15

    aput-byte v17, v6, v14

    add-int/lit8 v17, v14, 0x1

    add-int/lit8 v18, v15, 0x1

    .line 493
    aget-byte v18, v12, v18

    aput-byte v18, v6, v17

    add-int/2addr v14, v7

    add-int/2addr v15, v7

    .line 494
    aget-byte v15, v12, v15

    aput-byte v15, v6, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_12
    :goto_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 498
    :cond_13
    new-instance v5, Ljava/awt/image/DataBufferByte;

    invoke-direct {v5, v6, v4}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 499
    filled-new-array {v7, v1, v0}, [I

    move-result-object v10

    const/4 v0, 0x0

    const/4 v9, 0x3

    move v6, v3

    move v7, v11

    move-object v11, v0

    invoke-static/range {v5 .. v11}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    .line 502
    new-instance v7, Ljava/awt/image/ComponentColorModel;

    invoke-static {v13}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    .line 505
    new-instance v1, Ljava/awt/image/BufferedImage;

    invoke-virtual {v7}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v2

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    invoke-direct {v1, v7, v0, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v1

    .line 508
    :cond_14
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid/unsupported image with bitsPerPixel "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and planes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_15
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Image height is negative"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_16
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Image width is negative"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readPcxHeader(Ljava/io/InputStream;Z)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    .line 257
    const-string v1, "Not a Valid PCX File"

    const-string v2, "PcxHeader"

    move-object/from16 v3, p1

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 259
    aget-byte v2, v0, v1

    and-int/lit16 v4, v2, 0xff

    const/4 v2, 0x1

    .line 260
    aget-byte v2, v0, v2

    and-int/lit16 v5, v2, 0xff

    const/4 v2, 0x2

    .line 261
    aget-byte v2, v0, v2

    and-int/lit16 v6, v2, 0xff

    const/4 v2, 0x3

    .line 262
    aget-byte v2, v0, v2

    and-int/lit16 v7, v2, 0xff

    const/4 v2, 0x4

    .line 263
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v8

    const/4 v2, 0x6

    .line 264
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v9

    .line 265
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v0, v3, v2}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v10

    .line 266
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    const/16 v11, 0xa

    invoke-static {v0, v11, v2}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v2

    const/16 v12, 0xc

    .line 267
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-static {v0, v12, v13}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v12

    const/16 v13, 0xe

    .line 268
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-static {v0, v13, v14}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v13

    const/16 v14, 0x10

    .line 269
    new-array v15, v14, [I

    :goto_0
    if-ge v1, v14, :cond_0

    mul-int/lit8 v16, v1, 0x3

    add-int/lit8 v17, v16, 0x10

    .line 271
    aget-byte v11, v0, v17

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v14

    const/high16 v17, -0x1000000

    or-int v11, v11, v17

    add-int/lit8 v17, v16, 0x11

    aget-byte v14, v0, v17

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v3

    or-int/2addr v11, v14

    add-int/lit8 v16, v16, 0x12

    aget-byte v14, v0, v16

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v11, v14

    aput v11, v15, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v11, 0xa

    const/16 v14, 0x10

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    .line 276
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x41

    .line 277
    aget-byte v3, v0, v3

    and-int/lit16 v14, v3, 0xff

    const/16 v3, 0x42

    .line 278
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-static {v0, v3, v11}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v17

    const/16 v3, 0x44

    .line 279
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-static {v0, v3, v11}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v18

    const/16 v3, 0x46

    .line 280
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-static {v0, v3, v11}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v19

    const/16 v3, 0x48

    .line 281
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-static {v0, v3, v11}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v20

    const/16 v0, 0xa

    if-ne v4, v0, :cond_3

    if-eqz p2, :cond_2

    .line 290
    rem-int/lit8 v0, v17, 0x2

    if-nez v0, :cond_1

    goto :goto_1

    .line 291
    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Not a Valid PCX File: bytesPerLine is odd"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_2
    :goto_1
    new-instance v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;

    move-object v3, v0

    move v11, v2

    move v2, v14

    move-object v14, v15

    move v15, v1

    move/from16 v16, v2

    invoke-direct/range {v3 .. v20}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;-><init>(IIIIIIIIII[IIIIIII)V

    return-object v0

    .line 284
    :cond_3
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a Valid PCX File: manufacturer is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readPcxHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 246
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 247
    :try_start_1
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readPcxHeader(Ljava/io/InputStream;Z)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    new-array v2, v0, [Ljava/io/Closeable;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object p1, v0, v1

    invoke-static {v1, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method private readScanLine(Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;Ljava/io/InputStream;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 310
    iget p0, p1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->encoding:I

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 312
    :goto_0
    array-length p0, p3

    if-ge v0, p0, :cond_4

    .line 313
    array-length p0, p3

    sub-int/2addr p0, v0

    invoke-virtual {p2, p3, v0, p0}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    if-ltz p0, :cond_0

    add-int/2addr v0, p0

    goto :goto_0

    .line 315
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Premature end of file reading image data"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 320
    :cond_1
    iget p0, p1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->encoding:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_5

    move p0, v0

    .line 321
    :goto_1
    array-length p1, p3

    if-ge p0, p1, :cond_4

    .line 322
    const-string p1, "Pixel"

    const-string v2, "Error reading image data"

    invoke-static {p1, p2, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v3

    and-int/lit16 v4, v3, 0xc0

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_2

    and-int/lit8 v3, v3, 0x3f

    .line 327
    invoke-static {p1, p2, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p1

    goto :goto_2

    :cond_2
    move p1, v3

    move v3, v1

    :goto_2
    move v2, v0

    :goto_3
    if-ge v2, v3, :cond_3

    add-int v4, p0, v2

    .line 333
    array-length v5, p3

    if-ge v4, v5, :cond_3

    .line 334
    aput-byte p1, p3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/2addr p0, v3

    goto :goto_1

    :cond_4
    return-void

    .line 339
    :cond_5
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid PCX encoding "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->encoding:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readPcxHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->dump(Ljava/io/PrintWriter;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 0

    .line 87
    sget-object p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object p0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 2

    const/4 p0, 0x1

    .line 92
    new-array p0, p0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->PCX:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v1, p0, v0

    return-object p0
.end method

.method public final getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 518
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    .line 520
    :goto_0
    const-string v0, "STRICT"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 522
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    const/4 v1, 0x1

    .line 528
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 529
    :try_start_1
    invoke-direct {p0, v2, p2}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readPcxHeader(Ljava/io/InputStream;Z)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;

    move-result-object p2

    .line 530
    invoke-direct {p0, p2, v2, p1}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readImage(Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;Ljava/io/InputStream;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/awt/image/BufferedImage;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    invoke-static {v1, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    const/4 v2, 0x0

    :goto_2
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 0

    .line 82
    const-string p0, ".pcx"

    return-object p0
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/ImageInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readPcxHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;

    move-result-object v0

    .line 106
    invoke-virtual/range {p0 .. p2}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object v1

    .line 107
    new-instance v21, Lorg/apache/commons/imaging/ImageInfo;

    iget v2, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    iget v3, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    mul-int v4, v2, v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lorg/apache/commons/imaging/ImageFormats;->PCX:Lorg/apache/commons/imaging/ImageFormats;

    iget v8, v1, Ljava/awt/Dimension;->height:I

    iget v11, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->vDpi:I

    invoke-virtual {v1}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v2

    iget v7, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->vDpi:I

    int-to-double v9, v7

    div-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-float v12, v2

    iget v13, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->hDpi:I

    invoke-virtual {v1}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v2

    iget v7, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->hDpi:I

    int-to-double v9, v7

    div-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-float v14, v2

    iget v15, v1, Ljava/awt/Dimension;->width:I

    iget v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move/from16 v18, v1

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v18, v3

    :goto_1
    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    iget v0, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->encoding:I

    if-ne v0, v3, :cond_2

    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_2

    :cond_2
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    :goto_2
    move-object/from16 v20, v0

    const-string v3, "PCX"

    const-string v7, "ZSoft PCX Image"

    const-string v9, "image/x-pcx"

    const/4 v10, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, v21

    invoke-direct/range {v2 .. v20}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v21
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/Dimension;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readPcxHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;

    move-result-object p0

    .line 133
    iget p1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->xMax:I

    iget p2, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->xMin:I

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    if-ltz p1, :cond_1

    .line 137
    iget p2, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->yMax:I

    iget p0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->yMin:I

    sub-int/2addr p2, p0

    add-int/lit8 p2, p2, 0x1

    if-ltz p2, :cond_0

    .line 141
    new-instance p0, Ljava/awt/Dimension;

    invoke-direct {p0, p1, p2}, Ljava/awt/Dimension;-><init>(II)V

    return-object p0

    .line 139
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Image height is negative"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 135
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Image width is negative"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/common/ImageMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 77
    const-string p0, "Pcx-Custom"

    return-object p0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    new-instance p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;

    invoke-direct {p0, p3}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;)V

    return-void
.end method
