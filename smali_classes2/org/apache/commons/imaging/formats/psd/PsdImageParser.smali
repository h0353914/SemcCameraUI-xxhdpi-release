.class public Lorg/apache/commons/imaging/formats/psd/PsdImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "PsdImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field public static final BLOCK_NAME_XMP:Ljava/lang/String; = "XMP"

.field private static final COLOR_MODE_INDEXED:I = 0x2

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".psd"

.field public static final IMAGE_RESOURCE_ID_ICC_PROFILE:I = 0x40f

.field public static final IMAGE_RESOURCE_ID_XMP:I = 0x424

.field private static final PSD_HEADER_LENGTH:I = 0x1a

.field private static final PSD_SECTION_COLOR_MODE:I = 0x1

.field private static final PSD_SECTION_HEADER:I = 0x0

.field private static final PSD_SECTION_IMAGE_DATA:I = 0x4

.field private static final PSD_SECTION_IMAGE_RESOURCES:I = 0x2

.field private static final PSD_SECTION_LAYER_AND_MASK_DATA:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-string v0, ".psd"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    .line 67
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private getChannelsPerMode(I)I
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method private getData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 332
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 335
    const-string v2, "Not a Valid PSD File"

    if-nez p2, :cond_0

    .line 337
    :try_start_1
    const-string p0, "Header"

    const/16 p2, 0x1a

    invoke-static {p0, p1, p2, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    new-array p2, v0, [Ljava/io/Closeable;

    aput-object p1, p2, v1

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move p2, v0

    goto/16 :goto_1

    :cond_0
    const-wide/16 v3, 0x1a

    .line 340
    :try_start_2
    invoke-static {p1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 342
    const-string v3, "ColorModeDataLength"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v3, p1, v2, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p2, v0, :cond_1

    .line 347
    :try_start_3
    const-string p0, "ColorModeData"

    invoke-static {p0, p1, v3, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 392
    new-array p2, v0, [Ljava/io/Closeable;

    aput-object p1, p2, v1

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :cond_1
    int-to-long v3, v3

    .line 351
    :try_start_4
    invoke-static {p1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 355
    const-string v3, "ImageResourcesLength"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v3, p1, v2, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 360
    :try_start_5
    const-string p0, "ImageResources"

    invoke-static {p0, p1, v3, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 392
    new-array p2, v0, [Ljava/io/Closeable;

    aput-object p1, p2, v1

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :cond_2
    int-to-long v3, v3

    .line 364
    :try_start_6
    invoke-static {p1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 368
    const-string v3, "LayerAndMaskDataLength"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v3, p1, v2, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v4, 0x3

    if-ne p2, v4, :cond_3

    .line 373
    :try_start_7
    const-string p0, "LayerAndMaskData"

    invoke-static {p0, p1, v3, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 392
    new-array p2, v0, [Ljava/io/Closeable;

    aput-object p1, p2, v1

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :cond_3
    int-to-long v3, v3

    .line 377
    :try_start_8
    invoke-static {p1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 381
    const-string v3, "Compression"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-static {v3, p1, v2, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 392
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object p1, p0, v1

    invoke-static {v0, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    .line 394
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getInputStream: Unknown Section: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_0

    :catchall_2
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    move p2, v1

    .line 392
    :goto_1
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method private getInputStream(Lorg/apache/commons/imaging/common/bytesource/ByteSource;I)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    const-string v0, "Not a Valid PSD File"

    .line 270
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const-wide/16 v1, 0x1a

    .line 276
    invoke-static {p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 279
    const-string v1, "ColorModeDataLength"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v1, p1, v0, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    return-object p1

    :cond_1
    int-to-long v1, v1

    .line 285
    invoke-static {p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 289
    const-string v1, "ImageResourcesLength"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v1, p1, v0, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    return-object p1

    :cond_2
    int-to-long v1, v1

    .line 295
    invoke-static {p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 299
    const-string v1, "LayerAndMaskDataLength"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v1, p1, v0, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    return-object p1

    :cond_3
    int-to-long v1, v1

    .line 305
    invoke-static {p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 309
    const-string v1, "Compression"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-static {v1, p1, v0, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    const/4 p0, 0x4

    if-ne p2, p0, :cond_4

    return-object p1

    :cond_4
    if-eqz p1, :cond_5

    .line 320
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 323
    :cond_5
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getInputStream: Unknown Section: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private keepImageResourceBlock(I[I)Z
    .locals 4

    const/4 p0, 0x1

    if-nez p2, :cond_0

    return p0

    .line 175
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p2, v2

    if-ne p1, v3, :cond_1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private readHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 108
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "Not a Valid PSD File"

    invoke-static {p1, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    .line 110
    const-string v0, "Version"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    .line 111
    const-string v0, "Reserved"

    const/4 v2, 0x6

    invoke-static {v0, p1, v2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v5

    .line 112
    const-string v0, "Channels"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    .line 113
    const-string v0, "Rows"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    .line 114
    const-string v0, "Columns"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    .line 115
    const-string v0, "Depth"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    .line 116
    const-string v0, "Mode"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-static {v0, p1, v1, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v10

    .line 118
    new-instance p0, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;-><init>(I[BIIIII)V

    return-object p0

    nop

    :array_0
    .array-data 1
        0x38t
        0x42t
        0x50t
        0x53t
    .end array-data
.end method

.method private readHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
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

.method private readImageContents(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/psd/ImageContents;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    move-result-object v1

    .line 125
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    const-string v2, "ColorModeDataLength"

    const-string v3, "Not a Valid PSD File"

    invoke-static {v2, p1, v3, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    int-to-long v4, v2

    .line 127
    invoke-static {p1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 132
    const-string v0, "ImageResourcesLength"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v0, p1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    int-to-long v5, v4

    .line 134
    invoke-static {p1, v5, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 139
    const-string v0, "LayerAndMaskDataLength"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v0, p1, v3, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    int-to-long v6, v5

    .line 141
    invoke-static {p1, v6, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 146
    const-string v0, "Compression"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-static {v0, p1, v3, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p0

    .line 154
    new-instance p1, Lorg/apache/commons/imaging/formats/psd/ImageContents;

    move-object v0, p1

    move v3, v4

    move v4, v5

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/psd/ImageContents;-><init>(Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;IIII)V

    return-object p1
.end method

.method private readImageContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/psd/ImageContents;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 403
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 405
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readImageContents(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/psd/ImageContents;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
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

.method private readImageResourceBlocks(Ljava/io/InputStream;[III)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "[III)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    if-lez p4, :cond_3

    const/4 v1, 0x4

    .line 190
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "Not a Valid PSD File"

    invoke-static {p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    .line 194
    const-string v1, "ID"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    .line 197
    const-string v3, "NameLength"

    invoke-static {v3, p1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v3

    add-int/lit8 p4, p4, -0x7

    .line 200
    const-string v4, "NameData"

    invoke-static {v4, p1, v3, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v4

    sub-int/2addr p4, v3

    add-int/lit8 v3, v3, 0x1

    .line 203
    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 205
    const-string v3, "NameDiscard"

    invoke-static {v3, p1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    add-int/lit8 p4, p4, -0x1

    .line 210
    :cond_1
    const-string v3, "Size"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v3, p1, v2, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    add-int/lit8 p4, p4, -0x4

    .line 216
    const-string v5, "Data"

    invoke-static {v5, p1, v3, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v5

    sub-int/2addr p4, v3

    .line 219
    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 221
    const-string v3, "DataDiscard"

    invoke-static {v3, p1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    add-int/lit8 p4, p4, -0x1

    .line 225
    :cond_2
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->keepImageResourceBlock(I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;

    invoke-direct {v2, v1, v4, v5}, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;-><init>(I[B[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ltz p3, :cond_0

    .line 228
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p3, :cond_0

    :cond_3
    return-object v0

    nop

    :array_0
    .array-data 1
        0x38t
        0x42t
        0x49t
        0x4dt
    .end array-data
.end method

.method private readImageResourceBlocks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "[II)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 247
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 249
    :try_start_1
    invoke-direct {p0, v4}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readImageContents(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/psd/ImageContents;

    move-result-object v5

    .line 251
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getInputStream(Lorg/apache/commons/imaging/common/bytesource/ByteSource;I)Ljava/io/InputStream;

    move-result-object v2

    .line 252
    const-string p1, "ImageResources"

    iget v5, v5, Lorg/apache/commons/imaging/formats/psd/ImageContents;->ImageResourcesLength:I

    const-string v6, "Not a Valid PSD File"

    invoke-static {p1, v2, v5, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p1

    .line 256
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readImageResourceBlocks([B[II)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v4, p1, v3

    aput-object v2, p1, v0

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object p1, v2

    move-object v2, v4

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object p1, v2

    :goto_0
    new-array p2, v1, [Ljava/io/Closeable;

    aput-object v2, p2, v3

    aput-object p1, p2, v0

    invoke-static {v3, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method private readImageResourceBlocks([B[II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[II)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p2, p3, p1}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readImageResourceBlocks(Ljava/io/InputStream;[III)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    const-string v0, "gif.dumpImageFile"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 564
    :cond_0
    const-string v2, ""

    invoke-virtual {v0, p1, v2}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 565
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readImageContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/psd/ImageContents;

    move-result-object v0

    .line 567
    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/psd/ImageContents;->dump(Ljava/io/PrintWriter;)V

    .line 568
    iget-object v0, v0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->dump(Ljava/io/PrintWriter;)V

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 570
    invoke-direct {p0, p2, v0, v3}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readImageResourceBlocks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[II)Ljava/util/List;

    move-result-object p0

    .line 575
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "blocks.size(): "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_1

    .line 579
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p2, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    iget-object v4, p2, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->nameData:[B

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->nameData:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "),  data: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->data:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " type: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p2, p2, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->id:I

    invoke-static {p2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->getDescription(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\' )"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 593
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 0

    .line 83
    sget-object p0, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object p0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 2

    const/4 p0, 0x1

    .line 88
    new-array p0, p0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->PSD:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v1, p0, v0

    return-object p0
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 7
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

    .line 601
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readImageContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/psd/ImageContents;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 608
    iget-object v1, v0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    if-eqz v1, :cond_8

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 621
    invoke-direct {p0, p1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readImageResourceBlocks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[II)Ljava/util/List;

    .line 625
    iget v2, v1, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->columns:I

    .line 626
    iget v1, v1, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->rows:I

    .line 634
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/commons/imaging/common/BufferedImageFactory;

    move-result-object p2

    const/4 v4, 0x0

    invoke-interface {p2, v2, v1, v4}, Lorg/apache/commons/imaging/common/BufferedImageFactory;->getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object p2

    .line 638
    iget-object v1, v0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    iget v1, v1, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->mode:I

    const/4 v2, 0x4

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    const/4 v6, 0x3

    if-eq v1, v6, :cond_2

    if-eq v1, v2, :cond_1

    const/16 v6, 0x8

    if-eq v1, v6, :cond_4

    const/16 v6, 0x9

    if-ne v1, v6, :cond_0

    .line 653
    new-instance v1, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserLab;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserLab;-><init>()V

    goto :goto_0

    .line 678
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unknown Mode: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    iget p2, p2, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->mode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 650
    :cond_1
    new-instance v1, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserCmyk;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserCmyk;-><init>()V

    goto :goto_0

    .line 647
    :cond_2
    new-instance v1, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserRgb;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserRgb;-><init>()V

    goto :goto_0

    .line 659
    :cond_3
    invoke-direct {p0, p1, v5}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;I)[B

    move-result-object v1

    .line 667
    new-instance v6, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;

    invoke-direct {v6, v1}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;-><init>([B)V

    move-object v1, v6

    goto :goto_0

    .line 644
    :cond_4
    new-instance v1, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserGrayscale;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserGrayscale;-><init>()V

    goto :goto_0

    .line 640
    :cond_5
    new-instance v1, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserBitmap;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserBitmap;-><init>()V

    .line 682
    :goto_0
    iget v6, v0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->Compression:I

    if-eqz v6, :cond_7

    if-ne v6, v5, :cond_6

    .line 687
    new-instance v6, Lorg/apache/commons/imaging/formats/psd/datareaders/CompressedDataReader;

    invoke-direct {v6, v1}, Lorg/apache/commons/imaging/formats/psd/datareaders/CompressedDataReader;-><init>(Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;)V

    goto :goto_1

    .line 690
    :cond_6
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unknown Compression: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, v0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->Compression:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 684
    :cond_7
    new-instance v6, Lorg/apache/commons/imaging/formats/psd/datareaders/UncompressedDataReader;

    invoke-direct {v6, v1}, Lorg/apache/commons/imaging/formats/psd/datareaders/UncompressedDataReader;-><init>(Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;)V

    .line 697
    :goto_1
    :try_start_0
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getInputStream(Lorg/apache/commons/imaging/common/bytesource/ByteSource;I)Ljava/io/InputStream;

    move-result-object v3

    .line 698
    invoke-interface {v6, v3, p2, v0, p0}, Lorg/apache/commons/imaging/formats/psd/datareaders/DataReader;->readData(Ljava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/psd/ImageContents;Lorg/apache/commons/imaging/common/BinaryFileParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    new-array p0, v5, [Ljava/io/Closeable;

    aput-object v3, p0, v4

    invoke-static {v5, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p2

    :catchall_0
    move-exception p0

    new-array p1, v5, [Ljava/io/Closeable;

    aput-object v3, p1, v4

    invoke-static {v4, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0

    .line 610
    :cond_8
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PSD: Couldn\'t read Header"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 605
    :cond_9
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PSD: Couldn\'t read blocks"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 0

    .line 78
    const-string p0, ".psd"

    return-object p0
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B
    .locals 1
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

    const/16 p2, 0x40f

    .line 417
    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readImageResourceBlocks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[II)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    .line 420
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 424
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;

    .line 425
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->data:[B

    if-eqz p0, :cond_2

    .line 426
    array-length p2, p0

    if-ge p2, v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 21
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

    .line 477
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readImageContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/psd/ImageContents;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 484
    iget-object v1, v0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    if-eqz v1, :cond_4

    .line 489
    iget v15, v1, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->columns:I

    .line 490
    iget v8, v1, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->rows:I

    .line 492
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 495
    iget v2, v1, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->depth:I

    iget v3, v1, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->mode:I

    move-object/from16 v4, p0

    invoke-direct {v4, v3}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getChannelsPerMode(I)I

    move-result v3

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    if-gez v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 503
    :goto_0
    sget-object v6, Lorg/apache/commons/imaging/ImageFormats;->PSD:Lorg/apache/commons/imaging/ImageFormats;

    int-to-double v9, v15

    const-wide/high16 v11, 0x4052000000000000L    # 72.0

    div-double/2addr v9, v11

    double-to-float v14, v9

    int-to-double v9, v8

    div-double/2addr v9, v11

    double-to-float v12, v9

    .line 519
    iget v1, v1, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->mode:I

    const/4 v2, 0x2

    const/4 v7, 0x1

    if-ne v1, v2, :cond_1

    move/from16 v18, v7

    goto :goto_1

    :cond_1
    move/from16 v18, v3

    .line 520
    :goto_1
    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 523
    iget v0, v0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->Compression:I

    if-eqz v0, :cond_3

    if-eq v0, v7, :cond_2

    .line 531
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_2

    .line 528
    :cond_2
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PSD:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_2

    .line 525
    :cond_3
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    :goto_2
    move-object/from16 v20, v0

    .line 534
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo;

    move-object v2, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v3, "Psd"

    const-string v7, "Photoshop"

    const-string v9, "image/x-photoshop"

    const/4 v10, -0x1

    const/16 v11, 0x48

    const/16 v13, 0x48

    invoke-direct/range {v2 .. v20}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v0

    .line 486
    :cond_4
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PSD: Couldn\'t read Header"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_5
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PSD: Couldn\'t read blocks"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 435
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 440
    new-instance p1, Ljava/awt/Dimension;

    iget p2, p0, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->columns:I

    iget p0, p0, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->rows:I

    invoke-direct {p1, p2, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object p1

    .line 437
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PSD: couldn\'t read header"

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

    .line 73
    const-string p0, "PSD-Custom"

    return-object p0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
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

    .line 726
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readImageContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/psd/ImageContents;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 732
    iget-object p2, p2, Lorg/apache/commons/imaging/formats/psd/ImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    if-eqz p2, :cond_4

    const/16 p2, 0x424

    .line 737
    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readImageResourceBlocks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[II)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    .line 740
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    goto :goto_0

    .line 744
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 755
    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 758
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-ge p0, v0, :cond_1

    return-object p1

    .line 761
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-gt p0, v0, :cond_2

    const/4 p0, 0x0

    .line 766
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;

    .line 770
    :try_start_0
    new-instance p2, Ljava/lang/String;

    iget-object v0, p1, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->data:[B

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->data:[B

    array-length p1, p1

    const-string v1, "utf-8"

    invoke-direct {p2, v0, p0, p1, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 772
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Invalid JPEG XMP Segment."

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 762
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PSD contains more than one XMP block."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-object p1

    .line 734
    :cond_4
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PSD: Couldn\'t read Header"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 729
    :cond_5
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PSD: Couldn\'t read blocks"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
