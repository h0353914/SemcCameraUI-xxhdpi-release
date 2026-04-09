.class public Lorg/apache/commons/imaging/formats/psd/datareaders/CompressedDataReader;
.super Ljava/lang/Object;
.source "CompressedDataReader.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/psd/datareaders/DataReader;


# instance fields
.field private dataParser:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/psd/datareaders/CompressedDataReader;->dataParser:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    return-void
.end method


# virtual methods
.method public readData(Ljava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/psd/ImageContents;Lorg/apache/commons/imaging/common/BinaryFileParser;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 47
    iget-object v4, v3, Lorg/apache/commons/imaging/formats/psd/ImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    .line 48
    iget v5, v4, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->columns:I

    .line 49
    iget v6, v4, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->rows:I

    .line 52
    iget v7, v4, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->channels:I

    mul-int/2addr v7, v6

    .line 53
    new-array v8, v7, [I

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v7, :cond_0

    .line 55
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scanline_bytecount["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PSD: bad Image Data"

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-static {v11, v2, v12, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v11

    aput v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v10, p4

    .line 58
    invoke-virtual {v10, v9}, Lorg/apache/commons/imaging/common/BinaryFileParser;->setDebug(Z)V

    .line 62
    iget v4, v4, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->depth:I

    .line 64
    iget-object v7, v1, Lorg/apache/commons/imaging/formats/psd/datareaders/CompressedDataReader;->dataParser:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;->getBasicChannelsCount()I

    move-result v7

    .line 65
    filled-new-array {v7, v6}, [I

    move-result-object v10

    const-class v11, [I

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[[I

    move v11, v9

    :goto_1
    if-ge v11, v7, :cond_2

    move v12, v9

    :goto_2
    if-ge v12, v6, :cond_1

    mul-int v13, v11, v6

    add-int/2addr v13, v12

    const-string v14, "scanline"

    .line 70
    aget v13, v8, v13

    const-string v15, "PSD: Missing Image Data"

    invoke-static {v14, v2, v13, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v13

    .line 74
    new-instance v14, Lorg/apache/commons/imaging/common/PackBits;

    invoke-direct {v14}, Lorg/apache/commons/imaging/common/PackBits;-><init>()V

    invoke-virtual {v14, v13, v5}, Lorg/apache/commons/imaging/common/PackBits;->decompress([BI)[B

    move-result-object v13

    .line 75
    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 76
    new-instance v13, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;

    sget-object v15, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v13, v14, v15}, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    const/4 v15, 0x1

    .line 80
    :try_start_0
    new-instance v14, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;

    const/16 v9, 0x8

    invoke-direct {v14, v13, v9}, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;-><init>(Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    :try_start_1
    invoke-virtual {v14, v4, v5}, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;->readBitsArray(II)[I

    move-result-object v9

    .line 82
    aget-object v13, v10, v11

    aput-object v9, v13, v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    new-array v9, v15, [Ljava/io/Closeable;

    const/4 v13, 0x0

    aput-object v14, v9, v13

    invoke-static {v15, v9}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v14, 0x0

    :goto_3
    new-array v2, v15, [Ljava/io/Closeable;

    const/4 v9, 0x0

    aput-object v14, v2, v9

    invoke-static {v9, v2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 90
    :cond_2
    iget-object v1, v1, Lorg/apache/commons/imaging/formats/psd/datareaders/CompressedDataReader;->dataParser:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    move-object/from16 v2, p2

    invoke-virtual {v1, v10, v2, v3}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;->parseData([[[ILjava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/psd/ImageContents;)V

    return-void
.end method
