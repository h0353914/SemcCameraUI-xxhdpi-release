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

    const-string v0, ".psd"

    .line 54
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
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x4

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    return v0

    :pswitch_2
    return v1

    :pswitch_3
    return v1

    :pswitch_4
    return v0

    :pswitch_5
    const/4 p0, 0x3

    return p0

    :pswitch_6
    return v1

    :pswitch_7
    return p0

    :pswitch_8
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 332
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p2, :cond_0

    :try_start_1
    const-string p0, "Header"

    const/16 p2, 0x1a

    const-string v2, "Not a Valid PSD File"

    .line 337
    invoke-static {p0, p1, p2, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    new-array p2, v1, [Ljava/io/Closeable;

    aput-object p1, p2, v0

    :goto_0
    invoke-static {v1, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object p2, p1

    move p1, v1

    goto/16 :goto_2

    :cond_0
    const-wide/16 v2, 0x1a

    .line 340
    :try_start_2
    invoke-static {p1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    const-string v2, "ColorModeDataLength"

    const-string v3, "Not a Valid PSD File"

    .line 342
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v2, p1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p2, v1, :cond_1

    :try_start_3
    const-string p0, "ColorModeData"

    const-string p2, "Not a Valid PSD File"

    .line 347
    invoke-static {p0, p1, v2, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 392
    new-array p2, v1, [Ljava/io/Closeable;

    aput-object p1, p2, v0

    goto :goto_0

    :cond_1
    int-to-long v2, v2

    .line 351
    :try_start_4
    invoke-static {p1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    const-string v2, "ImageResourcesLength"

    const-string v3, "Not a Valid PSD File"

    .line 355
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v2, p1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    :try_start_5
    const-string p0, "ImageResources"

    const-string p2, "Not a Valid PSD File"

    .line 360
    invoke-static {p0, p1, v2, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 392
    new-array p2, v1, [Ljava/io/Closeable;

    aput-object p1, p2, v0

    goto :goto_0

    :cond_2
    int-to-long v2, v2

    .line 364
    :try_start_6
    invoke-static {p1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    const-string v2, "LayerAndMaskDataLength"

    const-string v3, "Not a Valid PSD File"

    .line 368
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v2, p1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v3, 0x3

    if-ne p2, v3, :cond_3

    :try_start_7
    const-string p0, "LayerAndMaskData"

    const-string p2, "Not a Valid PSD File"

    .line 373
    invoke-static {p0, p1, v2, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 392
    new-array p2, v1, [Ljava/io/Closeable;

    aput-object p1, p2, v0

    goto :goto_0

    :cond_3
    int-to-long v2, v2

    .line 377
    :try_start_8
    invoke-static {p1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    const-string v2, "Compression"

    const-string v3, "Not a Valid PSD File"

    .line 381
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-static {v2, p1, v3, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 392
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object p1, p0, v0

    invoke-static {v1, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    .line 394
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getInputStream: Unknown Section: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catchall_2
    move-exception p0

    const/4 p1, 0x0

    :goto_1
    move-object p2, p1

    move p1, v0

    .line 392
    :goto_2
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p2, v1, v0

    invoke-static {p1, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

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

    .line 270
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x1a

    .line 276
    invoke-static {p1, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    const-string v0, "ColorModeDataLength"

    const-string v1, "Not a Valid PSD File"

    .line 279
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    return-object p1

    :cond_1
    int-to-long v0, v0

    .line 285
    invoke-static {p1, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    const-string v0, "ImageResourcesLength"

    const-string v1, "Not a Valid PSD File"

    .line 289
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    return-object p1

    :cond_2
    int-to-long v0, v0

    .line 295
    invoke-static {p1, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    const-string v0, "LayerAndMaskDataLength"

    const-string v1, "Not a Valid PSD File"

    .line 299
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    return-object p1

    :cond_3
    int-to-long v0, v0

    .line 305
    invoke-static {p1, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    const-string v0, "Compression"

    const-string v1, "Not a Valid PSD File"

    .line 309
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-static {v0, p1, v1, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getInputStream: Unknown Section: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 320
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

    const-string v0, "Version"

    const-string v1, "Not a Valid PSD File"

    .line 110
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v0, "Reserved"

    const-string v1, "Not a Valid PSD File"

    const/4 v2, 0x6

    .line 111
    invoke-static {v0, p1, v2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v5

    const-string v0, "Channels"

    const-string v1, "Not a Valid PSD File"

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    const-string v0, "Rows"

    const-string v1, "Not a Valid PSD File"

    .line 113
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    const-string v0, "Columns"

    const-string v1, "Not a Valid PSD File"

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    const-string v0, "Depth"

    const-string v1, "Not a Valid PSD File"

    .line 115
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    const-string v0, "Mode"

    const-string v1, "Not a Valid PSD File"

    .line 116
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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    move-result-object v1

    const-string v0, "ColorModeDataLength"

    const-string v2, "Not a Valid PSD File"

    .line 125
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v0, p1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    int-to-long v3, v2

    .line 127
    invoke-static {p1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    const-string v0, "ImageResourcesLength"

    const-string v3, "Not a Valid PSD File"

    .line 132
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v0, p1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    int-to-long v4, v3

    .line 134
    invoke-static {p1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    const-string v0, "LayerAndMaskDataLength"

    const-string v4, "Not a Valid PSD File"

    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v0, p1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    int-to-long v5, v4

    .line 141
    invoke-static {p1, v5, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    const-string v0, "Compression"

    const-string v5, "Not a Valid PSD File"

    .line 146
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-static {v0, p1, v5, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    .line 154
    new-instance p0, Lorg/apache/commons/imaging/formats/psd/ImageContents;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/psd/ImageContents;-><init>(Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;IIII)V

    return-object p0
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

    add-int/lit8 p4, p4, -0x4

    const-string v1, "ID"

    const-string v2, "Not a Valid PSD File"

    .line 194
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    add-int/lit8 p4, p4, -0x2

    const-string v2, "NameLength"

    const-string v3, "Not a Valid PSD File"

    .line 197
    invoke-static {v2, p1, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    add-int/lit8 p4, p4, -0x1

    const-string v3, "NameData"

    const-string v4, "Not a Valid PSD File"

    .line 200
    invoke-static {v3, p1, v2, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v3

    sub-int/2addr p4, v2

    add-int/lit8 v2, v2, 0x1

    .line 203
    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const-string v2, "NameDiscard"

    const-string v4, "Not a Valid PSD File"

    .line 205
    invoke-static {v2, p1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    add-int/lit8 p4, p4, -0x1

    :cond_1
    const-string v2, "Size"

    const-string v4, "Not a Valid PSD File"

    .line 210
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v2, p1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    add-int/lit8 p4, p4, -0x4

    const-string v4, "Data"

    const-string v5, "Not a Valid PSD File"

    .line 216
    invoke-static {v4, p1, v2, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v4

    sub-int/2addr p4, v2

    .line 219
    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const-string v2, "DataDiscard"

    const-string v5, "Not a Valid PSD File"

    .line 221
    invoke-static {v2, p1, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    add-int/lit8 p4, p4, -0x1

    .line 225
    :cond_2
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->keepImageResourceBlock(I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;-><init>(I[B[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ltz p3, :cond_0

    .line 228
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p3, :cond_0

    return-object v0

    :cond_3
    return-object v0

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

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 247
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 249
    :try_start_1
    invoke-direct {p0, v4}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readImageContents(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/psd/ImageContents;

    move-result-object v5

    .line 251
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getInputStream(Lorg/apache/commons/imaging/common/bytesource/ByteSource;I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v0, "ImageResources"

    .line 252
    iget v5, v5, Lorg/apache/commons/imaging/formats/psd/ImageContents;->ImageResourcesLength:I

    const-string v6, "Not a Valid PSD File"

    invoke-static {v0, p1, v5, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v0

    .line 256
    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readImageResourceBlocks([B[II)Ljava/util/List;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    new-array p2, v2, [Ljava/io/Closeable;

    aput-object v4, p2, v3

    aput-object p1, p2, v1

    invoke-static {v1, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object p1, v0

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object p1, v0

    move-object v4, p1

    :goto_0
    new-array p2, v2, [Ljava/io/Closeable;

    aput-object v4, p2, v3

    aput-object p1, p2, v1

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "gif.dumpImageFile"

    .line 557
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, ""

    .line 564
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

    const/4 v2, -0x1

    .line 570
    invoke-direct {p0, p2, v0, v2}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readImageResourceBlocks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[II)Ljava/util/List;

    move-result-object p0

    .line 575
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "blocks.size(): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p2, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->nameData:[B

    const-string v4, "ISO-8859-1"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->nameData:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->data:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->id:I

    invoke-static {p2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->getDescription(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    .line 593
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->PSD:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 6
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

    if-nez v0, :cond_0

    .line 605
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PSD: Couldn\'t read blocks"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 608
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    if-nez v1, :cond_1

    .line 610
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PSD: Couldn\'t read Header"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
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

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 678
    :pswitch_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown Mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    iget p2, p2, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->mode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 653
    :pswitch_1
    new-instance v1, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserLab;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserLab;-><init>()V

    goto :goto_0

    .line 650
    :pswitch_2
    new-instance v1, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserCmyk;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserCmyk;-><init>()V

    goto :goto_0

    .line 647
    :pswitch_3
    new-instance v1, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserRgb;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserRgb;-><init>()V

    goto :goto_0

    .line 659
    :pswitch_4
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;I)[B

    move-result-object v1

    .line 667
    new-instance v5, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;

    invoke-direct {v5, v1}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;-><init>([B)V

    move-object v1, v5

    goto :goto_0

    .line 644
    :pswitch_5
    new-instance v1, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserGrayscale;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserGrayscale;-><init>()V

    goto :goto_0

    .line 640
    :pswitch_6
    new-instance v1, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserBitmap;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserBitmap;-><init>()V

    .line 682
    :goto_0
    iget v5, v0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->Compression:I

    packed-switch v5, :pswitch_data_1

    .line 690
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown Compression: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->Compression:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 687
    :pswitch_7
    new-instance v5, Lorg/apache/commons/imaging/formats/psd/datareaders/CompressedDataReader;

    invoke-direct {v5, v1}, Lorg/apache/commons/imaging/formats/psd/datareaders/CompressedDataReader;-><init>(Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;)V

    goto :goto_1

    .line 684
    :pswitch_8
    new-instance v5, Lorg/apache/commons/imaging/formats/psd/datareaders/UncompressedDataReader;

    invoke-direct {v5, v1}, Lorg/apache/commons/imaging/formats/psd/datareaders/UncompressedDataReader;-><init>(Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;)V

    :goto_1
    const/4 v1, 0x4

    .line 697
    :try_start_0
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->getInputStream(Lorg/apache/commons/imaging/common/bytesource/ByteSource;I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 698
    :try_start_1
    invoke-interface {v5, p1, p2, v0, p0}, Lorg/apache/commons/imaging/formats/psd/datareaders/DataReader;->readData(Ljava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/psd/ImageContents;Lorg/apache/commons/imaging/common/BinaryFileParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 705
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object p1, p0, v4

    invoke-static {v2, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p2

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p1, v3

    :goto_2
    new-array p2, v2, [Ljava/io/Closeable;

    aput-object p1, p2, v4

    invoke-static {v4, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 0

    const-string p0, ".psd"

    return-object p0
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B
    .locals 3
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

    const/4 p2, 0x1

    .line 417
    new-array v0, p2, [I

    const/4 v1, 0x0

    const/16 v2, 0x40f

    aput v2, v0, v1

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readImageResourceBlocks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[II)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    .line 420
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p2, :cond_0

    goto :goto_1

    .line 424
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;

    .line 425
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->data:[B

    if-eqz p0, :cond_2

    .line 426
    array-length v0, p0

    if-ge v0, p2, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object p1

    :cond_3
    :goto_1
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

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PSD: Couldn\'t read blocks"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    if-nez v1, :cond_1

    .line 486
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PSD: Couldn\'t read Header"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_1
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

    if-gez v2, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
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

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    move/from16 v18, v1

    goto :goto_1

    :cond_3
    move/from16 v18, v3

    .line 520
    :goto_1
    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 523
    iget v0, v0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->Compression:I

    packed-switch v0, :pswitch_data_0

    .line 531
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    :goto_2
    move-object/from16 v20, v0

    goto :goto_3

    .line 528
    :pswitch_0
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PSD:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_2

    .line 525
    :pswitch_1
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_2

    .line 534
    :goto_3
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo;

    const-string v3, "Psd"

    const-string v7, "Photoshop"

    const-string v9, "image/x-photoshop"

    const/4 v10, -0x1

    const/16 v11, 0x48

    const/16 v13, 0x48

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v20}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    if-nez p0, :cond_0

    .line 437
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PSD: couldn\'t read header"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 440
    :cond_0
    new-instance p1, Ljava/awt/Dimension;

    iget p2, p0, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->columns:I

    iget p0, p0, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->rows:I

    invoke-direct {p1, p2, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object p1
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

    const-string p0, "PSD-Custom"

    return-object p0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
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

    if-nez p2, :cond_0

    .line 729
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PSD: Couldn\'t read blocks"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 732
    :cond_0
    iget-object p2, p2, Lorg/apache/commons/imaging/formats/psd/ImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    if-nez p2, :cond_1

    .line 734
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PSD: Couldn\'t read Header"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p2, 0x1

    .line 737
    new-array v0, p2, [I

    const/16 v1, 0x424

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/psd/PsdImageParser;->readImageResourceBlocks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[II)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_5

    .line 740
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p2, :cond_2

    goto :goto_0

    .line 744
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 755
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 758
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p0, p2, :cond_3

    return-object p1

    .line 761
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, p2, :cond_4

    .line 762
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PSD contains more than one XMP block."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 766
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;

    .line 770
    :try_start_0
    new-instance p1, Ljava/lang/String;

    iget-object p2, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->data:[B

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->data:[B

    array-length p0, p0

    const-string v0, "utf-8"

    invoke-direct {p1, p2, v2, p0, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 772
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Invalid JPEG XMP Segment."

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    :goto_0
    return-object p1
.end method
