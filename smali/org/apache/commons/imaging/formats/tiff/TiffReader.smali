.class public Lorg/apache/commons/imaging/formats/tiff/TiffReader;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "TiffReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/TiffReader$FirstDirectoryCollector;,
        Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;,
        Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;
    }
.end annotation


# instance fields
.field private final strict:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    .line 50
    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->strict:Z

    return-void
.end method

.method private getJpegRawImageData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Lorg/apache/commons/imaging/formats/tiff/JpegImageData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getJpegRawImageDataElement()Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;

    move-result-object p2

    .line 499
    iget-wide v0, p2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->offset:J

    .line 500
    iget p2, p2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->length:I

    int-to-long v2, p2

    add-long/2addr v2, v0

    .line 502
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 503
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int p2, v2

    .line 505
    :cond_0
    invoke-virtual {p1, v0, v1, p2}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(JI)[B

    move-result-object p1

    .line 507
    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->strict:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    if-lt p2, p0, :cond_1

    array-length v2, p1

    sub-int/2addr v2, p0

    aget-byte p0, p1, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr p0, v2

    const v2, 0xffd9

    if-eq p0, v2, :cond_2

    .line 510
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "JPEG EOI marker could not be found at expected location"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 512
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    invoke-direct {p0, v0, v1, p2, p1}, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;-><init>(JI[B)V

    return-object p0
.end method

.method private getTiffByteOrder(I)Ljava/nio/ByteOrder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/16 p0, 0x49

    if-ne p1, p0, :cond_0

    .line 68
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p0

    :cond_0
    const/16 p0, 0x4d

    if-ne p1, p0, :cond_1

    .line 70
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p0

    .line 72
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid TIFF byte order "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xff

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getTiffRawImageData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffRawImageDataElements()Ljava/util/List;

    move-result-object p0

    .line 435
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;

    .line 437
    instance-of v1, p1, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 438
    check-cast p1, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    .line 439
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 440
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;

    .line 441
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;

    iget-wide v4, v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->offset:J

    iget v1, v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->length:I

    invoke-direct {v3, v4, v5, v1, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;-><init>(JILorg/apache/commons/imaging/common/bytesource/ByteSourceFile;)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 446
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;

    .line 447
    iget-wide v3, v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->offset:J

    iget v5, v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->length:I

    invoke-virtual {p1, v3, v4, v5}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(JI)[B

    move-result-object v3

    .line 448
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;

    iget-wide v5, v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->offset:J

    iget v1, v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->length:I

    invoke-direct {v4, v5, v6, v1, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;-><init>(JI[B)V

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 452
    :cond_1
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->imageDataInStrips()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 453
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_ROWS_PER_STRIP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p2, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    const p1, 0x7fffffff

    if-eqz p0, :cond_2

    .line 462
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p1

    goto :goto_2

    .line 464
    :cond_2
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p2, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 471
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p1

    .line 476
    :cond_3
    :goto_2
    new-instance p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;-><init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;I)V

    return-object p0

    .line 478
    :cond_4
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p2, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-nez p0, :cond_5

    .line 481
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Can\'t find tile width field."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 483
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p0

    .line 485
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p1

    if-nez p1, :cond_6

    .line 488
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Can\'t find tile length field."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 490
    :cond_6
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p1

    .line 492
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;

    invoke-direct {p2, v0, p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;-><init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;II)V

    return-object p2
.end method

.method private readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readTiffHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    move-result-object v0

    .line 107
    invoke-interface {p3, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->setTiffHeader(Lorg/apache/commons/imaging/formats/tiff/TiffHeader;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 111
    :cond_0
    iget-wide v4, v0, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;->offsetToFirstIFD:J

    .line 114
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    move-object v8, p3

    .line 115
    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;Ljava/util/List;)Z

    return-void
.end method

.method private readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "JI",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            "Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    .line 122
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;ZLjava/util/List;)Z

    move-result v0

    return v0
.end method

.method private readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;ZLjava/util/List;)Z
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "JI",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            "Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-wide/from16 v4, p2

    move-object/from16 v12, p6

    move-object/from16 v13, p8

    .line 131
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v14, 0x0

    if-eqz v1, :cond_0

    return v14

    .line 134
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v15, 0x1

    .line 139
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    cmp-long v2, v4, v2

    if-ltz v2, :cond_1

    .line 286
    new-array v2, v15, [Ljava/io/Closeable;

    aput-object v1, v2, v14

    invoke-static {v15, v2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return v15

    .line 144
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 145
    :try_start_2
    invoke-static {v9, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 147
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    const-string v1, "DirectoryEntryCount"

    const-string v2, "Not a Valid TIFF File"

    .line 151
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v1, v9, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move v2, v14

    :goto_0
    const-wide/16 v16, 0x0

    if-ge v2, v1, :cond_7

    :try_start_4
    const-string v3, "Tag"

    const-string v14, "Not a Valid TIFF File"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 162
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v3, v9, v14, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    const-string v14, "Type"

    const-string v15, "Not a Valid TIFF File"

    .line 163
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v14, v9, v15, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    const-string v7, "Count"

    const-string v14, "Not a Valid TIFF File"

    .line 164
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v7, v9, v14, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    int-to-long v14, v7

    const-wide v18, 0xffffffffL

    and-long v20, v18, v14

    const-string v7, "Offset"

    const/4 v14, 0x4

    const-string v15, "Not a Valid TIFF File"

    .line 165
    invoke-static {v7, v9, v14, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v7

    .line 166
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-static {v7, v14}, Lorg/apache/commons/imaging/common/ByteConversions;->toInt([BLjava/nio/ByteOrder;)I

    move-result v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    int-to-long v14, v14

    const-wide v18, 0xffffffffL

    and-long v14, v18, v14

    if-nez v3, :cond_2

    :catch_0
    move/from16 v27, v1

    goto/16 :goto_4

    .line 178
    :cond_2
    :try_start_6
    invoke-static {v6}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getFieldType(I)Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v6
    :try_end_6
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v27, v1

    .line 185
    :try_start_7
    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getSize()I

    move-result v1

    int-to-long v4, v1

    mul-long v4, v4, v20

    const-wide/16 v18, 0x4

    cmp-long v1, v4, v18

    if-lez v1, :cond_5

    cmp-long v1, v14, v16

    if-ltz v1, :cond_4

    add-long v16, v14, v4

    .line 188
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v18

    cmp-long v1, v16, v18

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    long-to-int v1, v4

    .line 200
    invoke-virtual {v11, v14, v15, v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(JI)[B

    move-result-object v1

    move-object/from16 v24, v1

    goto :goto_2

    .line 189
    :cond_4
    :goto_1
    iget-boolean v1, v10, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->strict:Z

    if-eqz v1, :cond_6

    .line 190
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to read byte range starting from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "which is outside the file\'s size of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move-object/from16 v24, v7

    .line 205
    :goto_2
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v25

    move-object/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, p4

    move-object/from16 v19, v6

    move-wide/from16 v22, v14

    move/from16 v26, v2

    invoke-direct/range {v16 .. v26}, Lorg/apache/commons/imaging/formats/tiff/TiffField;-><init>(IILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;JJ[BLjava/nio/ByteOrder;I)V

    .line 208
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-interface {v12, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->addField(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v1, :cond_6

    const/4 v1, 0x1

    .line 286
    new-array v2, v1, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    :goto_3
    invoke-static {v1, v2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return v1

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v27

    move-wide/from16 v4, p2

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    goto/16 :goto_b

    :cond_7
    :try_start_8
    const-string v1, "nextDirectoryOffset"

    const-string v2, "Not a Valid TIFF File"

    .line 216
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v1, v9, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long v6, v3, v1

    .line 219
    new-instance v14, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    move-object v1, v14

    move/from16 v2, p4

    move-object v3, v8

    move-wide/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;-><init>(ILjava/util/List;JJ)V

    .line 222
    invoke-interface/range {p6 .. p6}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->readImageData()Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v1, :cond_9

    .line 223
    :try_start_9
    invoke-virtual {v14}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->hasTiffImageData()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 224
    invoke-direct {v10, v11, v14}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getTiffRawImageData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-result-object v1

    .line 226
    invoke-virtual {v14, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->setTiffImageData(Lorg/apache/commons/imaging/formats/tiff/TiffImageData;)V

    .line 228
    :cond_8
    invoke-virtual {v14}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->hasJpegImageData()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 229
    invoke-direct {v10, v11, v14}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getJpegRawImageData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object v1

    .line 231
    invoke-virtual {v14, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->setJpegImageData(Lorg/apache/commons/imaging/formats/tiff/JpegImageData;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 235
    :cond_9
    :try_start_a
    invoke-interface {v12, v14}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-nez v1, :cond_a

    const/4 v1, 0x1

    .line 286
    new-array v2, v1, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    .line 240
    :try_start_b
    invoke-interface/range {p6 .. p6}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->readOffsetDirectories()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x3

    .line 241
    new-array v15, v1, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_EXIF_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    aput-object v2, v15, v3

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_GPSINFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const/4 v3, 0x1

    :try_start_c
    aput-object v2, v15, v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/4 v2, 0x2

    :try_start_d
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_INTEROP_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    aput-object v3, v15, v2

    .line 246
    new-array v7, v1, [I

    fill-array-data v7, :array_0

    const/4 v6, 0x0

    .line 251
    :goto_5
    array-length v1, v15

    if-ge v6, v1, :cond_e

    .line 252
    aget-object v1, v15, v6

    .line 253
    invoke-virtual {v14, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v5, :cond_c

    .line 259
    :try_start_e
    invoke-virtual {v14, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;)I

    move-result v1

    int-to-long v3, v1

    .line 260
    aget v18, v7, v6
    :try_end_e
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    const/16 v19, 0x1

    move-object v1, v10

    move-object v2, v11

    move-object/from16 v28, v5

    move/from16 v5, v18

    move/from16 v18, v6

    move-object/from16 v6, p5

    move-object/from16 v20, v7

    move-object v7, v12

    move-object/from16 v29, v15

    move-object v15, v8

    move/from16 v8, v19

    move-object/from16 v19, v9

    move-object v9, v13

    .line 261
    :try_start_f
    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;ZLjava/util/List;)Z

    move-result v1
    :try_end_f
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v28, v5

    move/from16 v18, v6

    move-object/from16 v20, v7

    move-object/from16 v19, v9

    move-object/from16 v29, v15

    move-object v15, v8

    :goto_6
    move-object v1, v0

    .line 266
    :try_start_10
    iget-boolean v2, v10, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->strict:Z

    if-eqz v2, :cond_b

    .line 267
    throw v1

    :cond_b
    const/4 v1, 0x0

    :goto_7
    if-nez v1, :cond_d

    move-object/from16 v1, v28

    .line 271
    invoke-interface {v15, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    move/from16 v18, v6

    move-object/from16 v20, v7

    move-object/from16 v19, v9

    move-object/from16 v29, v15

    move-object v15, v8

    :cond_d
    :goto_8
    add-int/lit8 v6, v18, 0x1

    move-object v8, v15

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    move-object/from16 v15, v29

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v19, v9

    move-object v1, v0

    move v2, v3

    goto :goto_c

    :cond_e
    move-object/from16 v19, v9

    if-nez p7, :cond_f

    .line 277
    iget-wide v1, v14, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->nextDirectoryOffset:J

    cmp-long v1, v1, v16

    if-lez v1, :cond_f

    .line 279
    iget-wide v3, v14, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->nextDirectoryOffset:J

    const/4 v2, 0x1

    add-int/lit8 v5, p4, 0x1

    move-object v1, v10

    move-object v2, v11

    move-object/from16 v6, p5

    move-object v7, v12

    move-object v8, v13

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;Ljava/util/List;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :cond_f
    const/4 v1, 0x1

    .line 286
    new-array v2, v1, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v19, v2, v3

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v19, v9

    :goto_9
    move-object v1, v0

    goto :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v19, v9

    move-object v1, v0

    .line 153
    :try_start_11
    iget-boolean v2, v10, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->strict:Z

    if-eqz v2, :cond_10

    .line 154
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :cond_10
    const/4 v1, 0x1

    .line 286
    new-array v2, v1, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v19, v2, v3

    goto/16 :goto_3

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object/from16 v9, v19

    :goto_a
    const/4 v2, 0x1

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object/from16 v19, v9

    :goto_b
    move-object v1, v0

    move v2, v15

    goto :goto_c

    :catchall_6
    move-exception v0

    move-object v9, v1

    move v2, v15

    move-object v1, v0

    :goto_c
    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v1

    nop

    :array_0
    .array-data 4
        -0x2
        -0x3
        -0x4
    .end array-data
.end method

.method private readTiffHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/tiff/TiffHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BYTE_ORDER_1"

    const-string v1, "Not a Valid TIFF File"

    .line 77
    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    const-string v1, "BYTE_ORDER_2"

    const-string v2, "Not a Valid TIFF File"

    .line 78
    invoke-static {v1, p1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    if-eq v0, v1, :cond_0

    .line 80
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Byte Order bytes don\'t match ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getTiffByteOrder(I)Ljava/nio/ByteOrder;

    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->setByteOrder(Ljava/nio/ByteOrder;)V

    const-string v1, "tiffVersion"

    const-string v2, "Not a Valid TIFF File"

    .line 86
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_1

    .line 88
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown Tiff Version: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide v2, 0xffffffffL

    const-string v4, "offsetToFirstIFD"

    const-string v5, "Not a Valid TIFF File"

    .line 91
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v4, p1, v5, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x8

    sub-long v4, v2, v4

    const-string v6, "Not a Valid TIFF File: couldn\'t find IFDs"

    .line 94
    invoke-static {p1, v4, v5, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getDebug()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 97
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;-><init>(Ljava/nio/ByteOrder;IJ)V

    return-object p0
.end method

.method private readTiffHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/tiff/TiffHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readTiffHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
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


# virtual methods
.method public read(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            "Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V

    return-void
.end method

.method public readContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            ")",
            "Lorg/apache/commons/imaging/formats/tiff/TiffContents;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;

    invoke-direct {v0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;-><init>(Ljava/util/Map;)V

    .line 419
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->read(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V

    .line 420
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;->getContents()Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p0

    return-object p0
.end method

.method public readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;-><init>(Ljava/util/Map;)V

    .line 405
    invoke-direct {p0, p1, p3, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V

    .line 406
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;->getContents()Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p0

    .line 407
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_0

    .line 408
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Image did not contain any directories."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-object p0
.end method

.method public readFirstDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            ")",
            "Lorg/apache/commons/imaging/formats/tiff/TiffContents;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$FirstDirectoryCollector;

    invoke-direct {v0, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$FirstDirectoryCollector;-><init>(Z)V

    .line 392
    invoke-virtual {p0, p1, p2, p4, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->read(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V

    .line 393
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;->getContents()Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object p0

    .line 394
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_0

    .line 395
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Image did not contain any directories."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-object p0
.end method
