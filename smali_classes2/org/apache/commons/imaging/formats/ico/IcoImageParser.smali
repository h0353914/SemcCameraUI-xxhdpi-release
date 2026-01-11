.class public Lorg/apache/commons/imaging/formats/ico/IcoImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "IcoImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$PNGIconData;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapIconData;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;
    }
.end annotation


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".ico"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const-string v0, ".ico"

    const-string v1, ".cur"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    .line 57
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private readBitmapIconData([BLorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/io/ByteArrayInputStream;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 323
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    const-string v2, "size"

    const-string v3, "Not a Valid ICO File"

    invoke-static {v2, v0, v3, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    .line 330
    const-string v1, "width"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v1, v0, v3, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    .line 337
    const-string v2, "height"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    .line 348
    const-string v4, "planes"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v4, v0, v3, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v15

    .line 353
    const-string v4, "bitCount"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v4, v0, v3, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v14

    .line 361
    const-string v4, "compression"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v4, v0, v3, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    .line 369
    const-string v6, "sizeImage"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-static {v6, v0, v3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v13

    .line 377
    const-string v6, "xPelsPerMeter"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-static {v6, v0, v3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v12

    .line 380
    const-string v6, "yPelsPerMeter"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-static {v6, v0, v3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v11

    .line 383
    const-string v6, "colorsUsed"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-static {v6, v0, v3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v10

    .line 391
    const-string v6, "ColorsImportant"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-static {v6, v0, v3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    .line 399
    const-string v7, "redMask"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v7, v0, v3, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    .line 400
    const-string v7, "greenMask"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v7, v0, v3, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    .line 401
    const-string v8, "blueMask"

    move/from16 v17, v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v8, v0, v3, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    move v8, v7

    move/from16 p0, v17

    move v7, v6

    goto :goto_0

    :cond_0
    const/16 p0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 403
    :goto_0
    const-string v6, "RestOfFile"

    move/from16 v17, v7

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    invoke-static {v6, v0, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;I)[B

    move-result-object v0

    const/16 v6, 0x28

    if-ne v5, v6, :cond_f

    const/4 v7, 0x1

    if-ne v15, v7, :cond_e

    const/high16 v18, -0x1000000

    const/16 v6, 0x20

    move-object/from16 v19, v3

    if-nez v4, :cond_1

    if-ne v14, v6, :cond_1

    const/high16 v4, 0xff0000

    const v8, 0xff00

    move/from16 p1, v8

    move/from16 v20, v18

    const/4 v8, 0x3

    const/16 v17, 0xff

    goto :goto_1

    :cond_1
    move/from16 p1, v8

    const/16 v20, 0x0

    move v8, v4

    move/from16 v4, p0

    .line 422
    :goto_1
    new-instance v3, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;

    move/from16 v21, v4

    move-object v4, v3

    move-object/from16 v22, v3

    move v3, v6

    move v6, v1

    move v3, v7

    move v7, v2

    move/from16 v16, v8

    move v8, v15

    move/from16 v23, v9

    move v9, v14

    move/from16 v24, v10

    move/from16 v10, v16

    move/from16 v25, v11

    move v11, v13

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v13, v25

    move v3, v14

    move/from16 v14, v24

    move/from16 v28, v15

    move/from16 v15, v23

    invoke-direct/range {v4 .. v15}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;-><init>(IIIIIIIIIII)V

    const/16 v4, 0x8

    move/from16 v5, v24

    if-nez v5, :cond_2

    if-gt v3, v4, :cond_2

    const/4 v6, 0x1

    shl-int v10, v6, v3

    goto :goto_2

    :cond_2
    move v10, v5

    :goto_2
    const/4 v6, 0x4

    mul-int/2addr v10, v6

    const/16 v7, 0x46

    add-int/2addr v10, v7

    .line 428
    array-length v8, v0

    add-int/2addr v8, v7

    .line 430
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v9, 0x0

    .line 434
    :try_start_0
    new-instance v11, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v11, v7, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v12, 0x42

    .line 437
    :try_start_1
    invoke-virtual {v11, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v12, 0x4d

    .line 438
    invoke-virtual {v11, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 439
    invoke-virtual {v11, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v8, 0x0

    .line 440
    :try_start_2
    invoke-virtual {v11, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 441
    invoke-virtual {v11, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/16 v10, 0x38

    .line 443
    invoke-virtual {v11, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 444
    invoke-virtual {v11, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 445
    div-int/lit8 v10, v2, 0x2

    invoke-virtual {v11, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v10, v28

    .line 446
    invoke-virtual {v11, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 447
    invoke-virtual {v11, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    move/from16 v10, v16

    .line 448
    invoke-virtual {v11, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v10, v27

    .line 449
    invoke-virtual {v11, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v10, v26

    .line 450
    invoke-virtual {v11, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v10, v25

    .line 451
    invoke-virtual {v11, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 452
    invoke-virtual {v11, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v5, v23

    .line 453
    invoke-virtual {v11, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v5, v21

    .line 454
    invoke-virtual {v11, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v5, p1

    .line 455
    invoke-virtual {v11, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v5, v17

    .line 456
    invoke-virtual {v11, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move/from16 v5, v20

    .line 457
    invoke-virtual {v11, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 458
    invoke-virtual {v11, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 459
    invoke-virtual {v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x1

    .line 462
    new-array v0, v5, [Ljava/io/Closeable;

    aput-object v11, v0, v8

    invoke-static {v5, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    .line 465
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 466
    new-instance v5, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;

    invoke-direct {v5}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;-><init>()V

    invoke-virtual {v5, v0, v9}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getBufferedImage(Ljava/io/InputStream;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v5

    add-int/lit8 v1, v1, 0x7

    .line 475
    div-int/2addr v1, v4

    .line 476
    rem-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_3

    sub-int/2addr v6, v4

    add-int/2addr v1, v6

    :cond_3
    const/4 v4, 0x2

    .line 480
    div-int/2addr v2, v4

    mul-int/2addr v2, v1

    .line 483
    :try_start_3
    const-string v6, "transparency_map"

    move-object/from16 v7, v19

    invoke-static {v6, v0, v2, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v2, 0x20

    goto :goto_3

    :catch_0
    move-exception v0

    const/16 v2, 0x20

    if-ne v3, v2, :cond_d

    :goto_3
    if-ne v3, v2, :cond_7

    move v2, v8

    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_6

    .line 494
    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_6

    move v3, v8

    .line 495
    :goto_5
    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 496
    invoke-virtual {v5, v3, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v6

    and-int v6, v6, v18

    if-eqz v6, :cond_4

    move v0, v8

    goto :goto_6

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_c

    .line 505
    :cond_7
    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3, v4}, Ljava/awt/image/BufferedImage;-><init>(III)V

    move v2, v8

    .line 507
    :goto_7
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_b

    move v3, v8

    .line 508
    :goto_8
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_a

    if-eqz v9, :cond_9

    .line 511
    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    mul-int/2addr v4, v1

    div-int/lit8 v7, v3, 0x8

    add-int/2addr v4, v7

    aget-byte v4, v9, v4

    const/16 v7, 0xff

    and-int/2addr v4, v7

    .line 513
    rem-int/lit8 v10, v3, 0x8

    rsub-int/lit8 v10, v10, 0x7

    shr-int/2addr v4, v10

    and-int/2addr v4, v6

    if-nez v4, :cond_8

    goto :goto_9

    :cond_8
    move v4, v8

    goto :goto_a

    :cond_9
    const/16 v7, 0xff

    :goto_9
    move v4, v7

    :goto_a
    shl-int/lit8 v4, v4, 0x18

    const v6, 0xffffff

    .line 516
    invoke-virtual {v5, v3, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v10

    and-int/2addr v6, v10

    or-int/2addr v4, v6

    invoke-virtual {v0, v3, v2, v4}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_a
    const/16 v7, 0xff

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    move-object v5, v0

    .line 523
    :cond_c
    new-instance v0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapIconData;

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapIconData;-><init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;Ljava/awt/image/BufferedImage;)V

    return-object v0

    .line 488
    :cond_d
    throw v0

    :catchall_0
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    const/4 v8, 0x0

    :goto_b
    move-object v9, v11

    goto :goto_c

    :catchall_2
    move-exception v0

    const/4 v8, 0x0

    :goto_c
    const/4 v1, 0x1

    .line 462
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v9, v1, v8

    invoke-static {v8, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v0

    :cond_e
    move v10, v15

    .line 409
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a Valid ICO File: Planes can\'t be "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_f
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a Valid ICO File: Wrong bitmap header size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readFileHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    const-string v1, "Reserved"

    const-string v2, "Not a Valid ICO File"

    invoke-static {v1, p1, v2, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    .line 133
    const-string v1, "IconType"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    .line 134
    const-string v3, "IconCount"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-static {v3, p1, v2, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p0

    if-nez v0, :cond_2

    const/4 p1, 0x1

    if-eq v1, p1, :cond_1

    const/4 p1, 0x2

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Not a Valid ICO File: icon type is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 143
    :cond_1
    :goto_0
    new-instance p1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;

    invoke-direct {p1, v0, v1, p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;-><init>(III)V

    return-object p1

    .line 137
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Not a Valid ICO File: reserved is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readIconData([BLorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    invoke-static {p1}, Lorg/apache/commons/imaging/Imaging;->guessFormat([B)Lorg/apache/commons/imaging/ImageFormat;

    move-result-object v0

    .line 529
    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->PNG:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-static {p1}, Lorg/apache/commons/imaging/Imaging;->getBufferedImage([B)Ljava/awt/image/BufferedImage;

    move-result-object p0

    .line 531
    new-instance p1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$PNGIconData;

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$PNGIconData;-><init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;Ljava/awt/image/BufferedImage;)V

    return-object p1

    .line 533
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readBitmapIconData([BLorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;

    move-result-object p0

    return-object p0
.end method

.method private readIconInfo(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    const-string v0, "Width"

    const-string v1, "Not a Valid ICO File"

    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v3

    .line 187
    const-string v0, "Height"

    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    .line 191
    const-string v0, "ColorCount"

    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    .line 193
    const-string v0, "Reserved"

    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    .line 195
    const-string v0, "Planes"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    .line 199
    const-string v0, "BitCount"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    .line 201
    const-string v0, "ImageSize"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    .line 203
    const-string v0, "ImageOffset"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-static {v0, p1, v1, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v10

    .line 205
    new-instance p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;-><init>(BBBBIIII)V

    return-object p0
.end method

.method private readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 553
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 554
    :try_start_1
    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readFileHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;

    move-result-object v3

    .line 556
    iget v4, v3, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    new-array v4, v4, [Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;

    move v5, v1

    .line 557
    :goto_0
    iget v6, v3, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    if-ge v5, v6, :cond_0

    .line 558
    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readIconInfo(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 561
    :cond_0
    iget v5, v3, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    new-array v5, v5, [Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;

    move v6, v1

    .line 562
    :goto_1
    iget v7, v3, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    if-ge v6, v7, :cond_1

    .line 563
    aget-object v7, v4, v6

    iget v7, v7, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;->imageOffset:I

    aget-object v8, v4, v6

    iget v8, v8, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;->imageSize:I

    invoke-virtual {p1, v7, v8}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(II)[B

    move-result-object v7

    .line 565
    aget-object v8, v4, v6

    invoke-direct {p0, v7, v8}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readIconData([BLorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 568
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;

    invoke-direct {p0, v3, v5}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;-><init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;[Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v2, p1, v1

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    const/4 v2, 0x0

    :goto_2
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v2, p1, v1

    invoke-static {v1, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 579
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;

    move-result-object p0

    .line 580
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->fileHeader:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;

    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->dump(Ljava/io/PrintWriter;)V

    .line 581
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->iconDatas:[Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;

    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p0, v0

    .line 582
    invoke-virtual {v1, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 0

    .line 72
    sget-object p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object p0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 2

    const/4 p0, 0x1

    .line 77
    new-array p0, p0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->ICO:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v1, p0, v0

    return-object p0
.end method

.method public getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 602
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;

    move-result-object p0

    .line 604
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->fileHeader:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;

    const/4 v1, 0x0

    .line 605
    :goto_0
    iget v2, p1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    if-ge v1, v2, :cond_0

    .line 606
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->iconDatas:[Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;

    aget-object v2, v2, v1

    .line 608
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;->readBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v2

    .line 610
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 0
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

    .line 590
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;

    move-result-object p0

    .line 591
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->fileHeader:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;

    .line 592
    iget p1, p1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    if-lez p1, :cond_0

    .line 593
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->iconDatas:[Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;->readBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    .line 595
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "No icons in ICO file"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 0

    .line 67
    const-string p0, ".ico"

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
    .locals 0
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

    const/4 p0, 0x0

    return-object p0
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

    const/4 p0, 0x0

    return-object p0
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

    .line 62
    const-string p0, "ico-Custom"

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
    .locals 17
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

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-nez v1, :cond_0

    .line 644
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v1, v2

    .line 647
    :goto_0
    const-string v2, "FORMAT"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 648
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    :cond_1
    const-string v2, "PIXEL_DENSITY"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/PixelDensity;

    .line 653
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 658
    new-instance v1, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v1}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    const/16 v3, 0x100

    .line 659
    invoke-virtual {v1, v0, v3}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;

    move-result-object v3

    .line 662
    invoke-virtual {v1, v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;)Z

    move-result v1

    const/4 v5, 0x2

    const/16 v7, 0x10

    const/4 v8, 0x4

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-nez v3, :cond_3

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_1

    :cond_2
    const/16 v1, 0x18

    goto :goto_1

    .line 669
    :cond_3
    invoke-virtual {v3}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v1

    if-gt v1, v5, :cond_4

    move v1, v10

    goto :goto_1

    .line 671
    :cond_4
    invoke-virtual {v3}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v1

    if-gt v1, v7, :cond_5

    move v1, v8

    goto :goto_1

    :cond_5
    move v1, v9

    .line 677
    :goto_1
    new-instance v11, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v13, p2

    invoke-direct {v11, v13, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 679
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v12

    mul-int/2addr v12, v1

    add-int/lit8 v12, v12, 0x7

    div-int/2addr v12, v9

    .line 680
    rem-int/lit8 v13, v12, 0x4

    if-eqz v13, :cond_6

    rsub-int/lit8 v13, v13, 0x4

    add-int/2addr v12, v13

    .line 684
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v13

    add-int/lit8 v13, v13, 0x7

    div-int/2addr v13, v9

    .line 685
    rem-int/lit8 v14, v13, 0x4

    if-eqz v14, :cond_7

    rsub-int/lit8 v14, v14, 0x4

    add-int/2addr v13, v14

    :cond_7
    const/4 v14, 0x0

    if-gt v1, v9, :cond_8

    shl-int v15, v10, v1

    goto :goto_2

    :cond_8
    move v15, v14

    :goto_2
    mul-int/2addr v15, v8

    const/16 v8, 0x28

    add-int/2addr v15, v8

    .line 689
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v16

    mul-int v16, v16, v12

    add-int v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v16

    mul-int v16, v16, v13

    add-int v15, v15, v16

    .line 694
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 695
    invoke-virtual {v11, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 696
    invoke-virtual {v11, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 699
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    .line 700
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    const/16 v7, 0xff

    if-gt v4, v7, :cond_9

    if-le v6, v7, :cond_a

    :cond_9
    move v4, v14

    move v6, v4

    .line 705
    :cond_a
    invoke-virtual {v11, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 706
    invoke-virtual {v11, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    if-lt v1, v9, :cond_b

    move v4, v14

    goto :goto_3

    :cond_b
    shl-int v4, v10, v1

    .line 707
    :goto_3
    invoke-virtual {v11, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 708
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 709
    invoke-virtual {v11, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 710
    invoke-virtual {v11, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 711
    invoke-virtual {v11, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/16 v4, 0x16

    .line 712
    invoke-virtual {v11, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 715
    invoke-virtual {v11, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 716
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    invoke-virtual {v11, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 717
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    mul-int/2addr v4, v5

    invoke-virtual {v11, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 718
    invoke-virtual {v11, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 719
    invoke-virtual {v11, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 720
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 721
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-nez v2, :cond_c

    move v4, v14

    goto :goto_4

    .line 722
    :cond_c
    invoke-virtual {v2}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityMetres()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    :goto_4
    invoke-virtual {v11, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-nez v2, :cond_d

    move v2, v14

    goto :goto_5

    .line 723
    :cond_d
    invoke-virtual {v2}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityMetres()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    :goto_5
    invoke-virtual {v11, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 724
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 725
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-eqz v3, :cond_f

    move v2, v14

    :goto_6
    shl-int v4, v10, v1

    if-ge v2, v4, :cond_f

    .line 729
    invoke-virtual {v3}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v4

    if-ge v2, v4, :cond_e

    .line 730
    invoke-virtual {v3, v2}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result v4

    and-int/lit16 v5, v4, 0xff

    .line 731
    invoke-virtual {v11, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v5, v4, 0x8

    and-int/2addr v5, v7

    .line 732
    invoke-virtual {v11, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v5, 0x10

    shr-int/2addr v4, v5

    and-int/2addr v4, v7

    .line 733
    invoke-virtual {v11, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 734
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_7

    :cond_e
    const/16 v5, 0x10

    .line 736
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 737
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 738
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 739
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 746
    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x7

    div-int/2addr v2, v9

    sub-int/2addr v12, v2

    .line 747
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    sub-int/2addr v2, v10

    move v4, v14

    move v5, v4

    :goto_8
    if-ltz v2, :cond_17

    move v6, v14

    .line 748
    :goto_9
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    if-ge v6, v8, :cond_14

    .line 749
    invoke-virtual {v0, v6, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v8

    const v15, 0xffffff

    if-ge v1, v9, :cond_10

    and-int/2addr v8, v15

    .line 752
    invoke-virtual {v3, v8}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v8

    shl-int/2addr v5, v1

    or-int/2addr v5, v8

    add-int/2addr v4, v1

    if-lt v4, v9, :cond_13

    and-int/lit16 v4, v5, 0xff

    .line 757
    invoke-virtual {v11, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    move v4, v14

    move v5, v4

    goto :goto_a

    :cond_10
    if-ne v1, v9, :cond_11

    and-int/2addr v8, v15

    .line 763
    invoke-virtual {v3, v8}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v8

    and-int/2addr v8, v7

    .line 764
    invoke-virtual {v11, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_a

    :cond_11
    const/16 v15, 0x18

    if-ne v1, v15, :cond_12

    and-int/lit16 v15, v8, 0xff

    .line 766
    invoke-virtual {v11, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v15, v8, 0x8

    and-int/2addr v15, v7

    .line 767
    invoke-virtual {v11, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v8, v8, 0x10

    and-int/2addr v8, v7

    .line 768
    invoke-virtual {v11, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_a

    :cond_12
    const/16 v15, 0x20

    if-ne v1, v15, :cond_13

    and-int/lit16 v15, v8, 0xff

    .line 770
    invoke-virtual {v11, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v15, v8, 0x8

    and-int/2addr v15, v7

    .line 771
    invoke-virtual {v11, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v15, v8, 0x10

    and-int/2addr v15, v7

    .line 772
    invoke-virtual {v11, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v8, v8, 0x18

    and-int/2addr v8, v7

    .line 773
    invoke-virtual {v11, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :cond_13
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_14
    if-lez v4, :cond_15

    rsub-int/lit8 v4, v4, 0x8

    shl-int v4, v5, v4

    and-int/2addr v4, v7

    .line 779
    invoke-virtual {v11, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    move v4, v14

    move v5, v4

    :cond_15
    move v6, v14

    :goto_b
    if-ge v6, v12, :cond_16

    .line 785
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_16
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 789
    :cond_17
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    div-int/2addr v1, v9

    sub-int/2addr v13, v1

    .line 790
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    sub-int/2addr v1, v10

    :goto_c
    if-ltz v1, :cond_1d

    move v2, v14

    .line 791
    :goto_d
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_1a

    .line 792
    invoke-virtual {v0, v2, v1}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v3

    const/16 v6, 0x18

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    shl-int/lit8 v5, v5, 0x1

    if-nez v3, :cond_18

    or-int/lit8 v5, v5, 0x1

    :cond_18
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v9, :cond_19

    and-int/lit16 v3, v5, 0xff

    .line 800
    invoke-virtual {v11, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    move v4, v14

    move v5, v4

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1a
    const/16 v6, 0x18

    if-lez v4, :cond_1b

    rsub-int/lit8 v2, v4, 0x8

    shl-int v2, v5, v2

    and-int/2addr v2, v7

    .line 808
    invoke-virtual {v11, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    move v4, v14

    move v5, v4

    :cond_1b
    move v2, v14

    :goto_e
    if-ge v2, v13, :cond_1c

    .line 814
    invoke-virtual {v11, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1c
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 817
    :cond_1d
    invoke-virtual {v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->close()V

    return-void

    .line 654
    :cond_1e
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 655
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown parameter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
