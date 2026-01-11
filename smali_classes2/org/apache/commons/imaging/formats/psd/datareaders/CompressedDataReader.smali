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
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 47
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/psd/ImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    .line 48
    iget v4, v3, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->columns:I

    .line 49
    iget v5, v3, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->rows:I

    .line 52
    iget v6, v3, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->channels:I

    mul-int/2addr v6, v5

    .line 53
    new-array v7, v6, [I

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v6, :cond_0

    .line 55
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "scanline_bytecount["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PSD: bad Image Data"

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-static {v10, v1, v11, v12}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v10

    aput v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p4

    .line 58
    invoke-virtual {v9, v8}, Lorg/apache/commons/imaging/common/BinaryFileParser;->setDebug(Z)V

    .line 62
    iget v3, v3, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->depth:I

    .line 64
    iget-object v6, v0, Lorg/apache/commons/imaging/formats/psd/datareaders/CompressedDataReader;->dataParser:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;->getBasicChannelsCount()I

    move-result v6

    .line 65
    filled-new-array {v6, v5}, [I

    move-result-object v9

    const-class v10, [I

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[[I

    move v10, v8

    :goto_1
    if-ge v10, v6, :cond_2

    move v11, v8

    :goto_2
    if-ge v11, v5, :cond_1

    mul-int v12, v10, v5

    add-int/2addr v12, v11

    .line 70
    aget v12, v7, v12

    const-string v13, "PSD: Missing Image Data"

    const-string v14, "scanline"

    invoke-static {v14, v1, v12, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v12

    .line 74
    new-instance v13, Lorg/apache/commons/imaging/common/PackBits;

    invoke-direct {v13}, Lorg/apache/commons/imaging/common/PackBits;-><init>()V

    invoke-virtual {v13, v12, v4}, Lorg/apache/commons/imaging/common/PackBits;->decompress([BI)[B

    move-result-object v12

    .line 75
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 76
    new-instance v12, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;

    sget-object v14, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v12, v13, v14}, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    const/4 v13, 0x1

    .line 80
    :try_start_0
    new-instance v15, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;

    const/16 v14, 0x8

    invoke-direct {v15, v12, v14}, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;-><init>(Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    :try_start_1
    invoke-virtual {v15, v3, v4}, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;->readBitsArray(II)[I

    move-result-object v12

    .line 82
    aget-object v14, v9, v10

    aput-object v12, v14, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    new-array v12, v13, [Ljava/io/Closeable;

    aput-object v15, v12, v8

    invoke-static {v13, v12}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v14, v15

    goto :goto_3

    :catchall_1
    move-exception v0

    const/4 v14, 0x0

    :goto_3
    new-array v1, v13, [Ljava/io/Closeable;

    aput-object v14, v1, v8

    invoke-static {v8, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v0

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 90
    :cond_2
    iget-object v0, v0, Lorg/apache/commons/imaging/formats/psd/datareaders/CompressedDataReader;->dataParser:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    move-object/from16 v1, p2

    invoke-virtual {v0, v9, v1, v2}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;->parseData([[[ILjava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/psd/ImageContents;)V

    return-void
.end method
