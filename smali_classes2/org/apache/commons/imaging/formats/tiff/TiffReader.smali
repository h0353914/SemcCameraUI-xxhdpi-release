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

    if-ne p0, v2, :cond_1

    goto :goto_0

    .line 510
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "JPEG EOI marker could not be found at expected location"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 512
    :cond_2
    :goto_0
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

    const-string v1, "Invalid TIFF byte order "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    if-eqz p0, :cond_2

    .line 462
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p0

    goto :goto_2

    .line 464
    :cond_2
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p2, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 471
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p0

    goto :goto_2

    :cond_3
    const p0, 0x7fffffff

    .line 476
    :goto_2
    new-instance p1, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;-><init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;I)V

    return-object p1

    .line 478
    :cond_4
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p2, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 483
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p0

    .line 485
    sget-object p1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 490
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result p1

    .line 492
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;

    invoke-direct {p2, v0, p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;-><init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;II)V

    return-object p2

    .line 488
    :cond_5
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Can\'t find tile length field."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 481
    :cond_6
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Can\'t find tile width field."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
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
    .locals 27
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
    const-string v0, " "

    const-string v1, "Not a Valid TIFF File"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v14, 0x0

    if-eqz v2, :cond_0

    return v14

    .line 134
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x1

    const/4 v2, 0x0

    .line 139
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 286
    filled-new-array {v2}, [Ljava/io/Closeable;

    move-result-object v0

    invoke-static {v15, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return v15

    .line 144
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 145
    :try_start_2
    invoke-static {v9, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 147
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 151
    :try_start_3
    const-string v2, "DirectoryEntryCount"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v2, v9, v1, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v3, v14

    :goto_0
    const-wide/16 v16, 0x0

    if-ge v3, v2, :cond_8

    .line 162
    :try_start_4
    const-string v14, "Tag"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v14, v9, v1, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v14

    .line 163
    const-string v15, "Type"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v15, v9, v1, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    .line 164
    const-string v7, "Count"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v7, v9, v1, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    int-to-long v4, v7

    const-wide v18, 0xffffffffL

    and-long v20, v4, v18

    .line 165
    const-string v4, "Offset"

    const/4 v5, 0x4

    invoke-static {v4, v9, v5, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v4

    .line 166
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/commons/imaging/common/ByteConversions;->toInt([BLjava/nio/ByteOrder;)I

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v7, v4

    int-to-long v4, v5

    and-long v4, v4, v18

    if-nez v14, :cond_2

    goto/16 :goto_3

    .line 178
    :cond_2
    :try_start_5
    invoke-static {v6}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getFieldType(I)Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v19
    :try_end_5
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 185
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getSize()I

    move-result v6

    move-object v15, v7

    int-to-long v6, v6

    mul-long v6, v6, v20

    const-wide/16 v22, 0x4

    cmp-long v18, v6, v22

    if-lez v18, :cond_6

    cmp-long v15, v4, v16

    if-ltz v15, :cond_4

    add-long v15, v4, v6

    .line 188
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-lez v15, :cond_3

    goto :goto_1

    :cond_3
    long-to-int v6, v6

    .line 200
    invoke-virtual {v11, v4, v5, v6}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(JI)[B

    move-result-object v6

    move-object/from16 v24, v6

    goto :goto_2

    .line 189
    :cond_4
    :goto_1
    iget-boolean v14, v10, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->strict:Z

    if-nez v14, :cond_5

    goto :goto_3

    .line 190
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to read byte range starting from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "which is outside the file\'s size of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-object/from16 v24, v15

    .line 205
    :goto_2
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v25

    move-object/from16 v16, v6

    move/from16 v17, v14

    move/from16 v18, p4

    move-wide/from16 v22, v4

    move/from16 v26, v3

    invoke-direct/range {v16 .. v26}, Lorg/apache/commons/imaging/formats/tiff/TiffField;-><init>(IILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;JJ[BLjava/nio/ByteOrder;I)V

    .line 208
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-interface {v12, v6}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->addField(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Z

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v4, :cond_7

    const/4 v4, 0x1

    .line 286
    new-array v0, v4, [Ljava/io/Closeable;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    invoke-static {v4, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return v4

    :catch_0
    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v4, p2

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v9

    goto/16 :goto_9

    .line 216
    :cond_8
    :try_start_7
    const-string v0, "nextDirectoryOffset"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, v9, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    .line 219
    new-instance v14, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    move-object v1, v14

    move/from16 v2, p4

    move-object v3, v8

    move-wide/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;-><init>(ILjava/util/List;JJ)V

    .line 222
    invoke-interface/range {p6 .. p6}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->readImageData()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_a

    .line 223
    :try_start_8
    invoke-virtual {v14}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->hasTiffImageData()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 224
    invoke-direct {v10, v11, v14}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getTiffRawImageData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-result-object v0

    .line 226
    invoke-virtual {v14, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->setTiffImageData(Lorg/apache/commons/imaging/formats/tiff/TiffImageData;)V

    .line 228
    :cond_9
    invoke-virtual {v14}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->hasJpegImageData()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 229
    invoke-direct {v10, v11, v14}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getJpegRawImageData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object v0

    .line 231
    invoke-virtual {v14, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->setJpegImageData(Lorg/apache/commons/imaging/formats/tiff/JpegImageData;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 235
    :cond_a
    :try_start_9
    invoke-interface {v12, v14}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-nez v0, :cond_b

    const/4 v1, 0x1

    .line 286
    new-array v0, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v9, v0, v2

    invoke-static {v1, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return v1

    :cond_b
    const/4 v2, 0x0

    .line 240
    :try_start_a
    invoke-interface/range {p6 .. p6}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->readOffsetDirectories()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v15, 0x3

    .line 241
    new-array v7, v15, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_EXIF_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    aput-object v0, v7, v2

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_GPSINFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    const/4 v1, 0x1

    aput-object v0, v7, v1

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_INTEROP_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    const/4 v1, 0x2

    aput-object v0, v7, v1

    const/4 v0, -0x2

    const/4 v1, -0x3

    const/4 v2, -0x4

    .line 246
    filled-new-array {v0, v1, v2}, [I

    move-result-object v18

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v15, :cond_f

    .line 252
    aget-object v0, v7, v6

    .line 253
    invoke-virtual {v14, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v5, :cond_d

    .line 259
    :try_start_b
    invoke-virtual {v14, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;)I

    move-result v0

    int-to-long v3, v0

    .line 260
    aget v0, v18, v6
    :try_end_b
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const/16 v19, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v15, v5

    move v5, v0

    move/from16 v20, v6

    move-object/from16 v6, p5

    move-object/from16 v21, v7

    move-object/from16 v7, p6

    move-object v11, v8

    move/from16 v8, v19

    move-object/from16 v19, v9

    move-object/from16 v9, p8

    .line 261
    :try_start_c
    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;ZLjava/util/List;)Z

    move-result v0
    :try_end_c
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-nez v0, :cond_e

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v15, v5

    move/from16 v20, v6

    move-object/from16 v21, v7

    move-object v11, v8

    move-object/from16 v19, v9

    .line 266
    :goto_5
    :try_start_d
    iget-boolean v1, v10, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->strict:Z

    if-nez v1, :cond_c

    .line 271
    :goto_6
    invoke-interface {v11, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 267
    :cond_c
    throw v0

    :cond_d
    move/from16 v20, v6

    move-object/from16 v21, v7

    move-object v11, v8

    move-object/from16 v19, v9

    :cond_e
    :goto_7
    add-int/lit8 v6, v20, 0x1

    move-object v8, v11

    move-object/from16 v9, v19

    move-object/from16 v7, v21

    const/4 v15, 0x3

    move-object/from16 v11, p1

    goto :goto_4

    :cond_f
    move-object/from16 v19, v9

    if-nez p7, :cond_10

    .line 277
    iget-wide v0, v14, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->nextDirectoryOffset:J

    cmp-long v0, v0, v16

    if-lez v0, :cond_10

    .line 279
    iget-wide v3, v14, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->nextDirectoryOffset:J

    const/4 v1, 0x1

    add-int/lit8 v5, p4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;Ljava/util/List;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_10
    const/4 v1, 0x1

    .line 286
    new-array v0, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v19, v0, v2

    invoke-static {v1, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return v1

    :catch_3
    move-exception v0

    move-object/from16 v19, v9

    .line 153
    :try_start_e
    iget-boolean v1, v10, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->strict:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    .line 286
    new-array v0, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v19, v0, v2

    invoke-static {v1, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return v1

    .line 154
    :cond_11
    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v19, v9

    :goto_8
    move-object/from16 v2, v19

    goto :goto_9

    :catchall_3
    move-exception v0

    :goto_9
    const/4 v1, 0x1

    .line 286
    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v3, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v0
.end method

.method private readTiffHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/tiff/TiffHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    const-string v0, "BYTE_ORDER_1"

    const-string v1, "Not a Valid TIFF File"

    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    .line 78
    const-string v2, "BYTE_ORDER_2"

    invoke-static {v2, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    if-ne v0, v2, :cond_2

    .line 83
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getTiffByteOrder(I)Ljava/nio/ByteOrder;

    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 86
    const-string v2, "tiffVersion"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v2, p1, v1, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_1

    .line 91
    const-string v3, "offsetToFirstIFD"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v3, p1, v1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    int-to-long v3, v1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const-wide/16 v5, 0x8

    sub-long v5, v3, v5

    .line 94
    const-string v1, "Not a Valid TIFF File: couldn\'t find IFDs"

    invoke-static {p1, v5, v6, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getDebug()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 97
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    invoke-direct {p0, v0, v2, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;-><init>(Ljava/nio/ByteOrder;IJ)V

    return-object p0

    .line 88
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown Tiff Version: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Byte Order bytes don\'t match ("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
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

    if-lt p1, p2, :cond_0

    return-object p0

    .line 408
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Image did not contain any directories."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
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

    if-lt p1, p2, :cond_0

    return-object p0

    .line 395
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Image did not contain any directories."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
