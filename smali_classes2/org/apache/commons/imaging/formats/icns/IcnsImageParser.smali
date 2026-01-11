.class public Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "IcnsImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;,
        Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;,
        Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;
    }
.end annotation


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".icns"

.field static final ICNS_MAGIC:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "icns"

    invoke-static {v0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->typeAsInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->ICNS_MAGIC:I

    .line 48
    const-string v0, ".icns"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    .line 51
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private readIcnsElement(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    const-string v1, "Type"

    const-string v2, "Not a Valid ICNS File"

    invoke-static {v1, p1, v2, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    .line 202
    const-string v1, "ElementSize"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-static {v1, p1, v2, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p0

    add-int/lit8 v1, p0, -0x8

    .line 212
    const-string v3, "Data"

    invoke-static {v3, p1, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p1

    .line 215
    new-instance v1, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

    invoke-direct {v1, v0, p0, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;-><init>(II[B)V

    return-object v1
.end method

.method private readIcnsHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    const-string v1, "Magic"

    const-string v2, "Not a Valid ICNS File"

    invoke-static {v1, p1, v2, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    .line 163
    const-string v1, "FileSize"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-static {v1, p1, v2, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p0

    .line 165
    sget p1, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->ICNS_MAGIC:I

    if-ne v0, p1, :cond_0

    .line 169
    new-instance p1, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;-><init>(II)V

    return-object p1

    .line 166
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Not a Valid ICNS File: magic is 0x"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 234
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 235
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->readIcnsHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;

    move-result-object v2

    .line 237
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 238
    iget v4, v2, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;->fileSize:I

    add-int/lit8 v4, v4, -0x8

    :goto_0
    if-lez v4, :cond_0

    .line 239
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->readIcnsElement(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

    move-result-object v5

    .line 240
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget v5, v5, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;->elementSize:I

    sub-int/2addr v4, v5

    goto :goto_0

    .line 244
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    new-array v4, p0, [Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

    move v5, v1

    :goto_1
    if-ge v5, p0, :cond_1

    .line 246
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 249
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;

    invoke-direct {p0, v2, v4}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;-><init>(Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    new-array v2, v0, [Ljava/io/Closeable;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_2
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object p1, v0, v1

    invoke-static {v1, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

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

    .line 260
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;

    move-result-object p0

    .line 261
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;->icnsHeader:Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;

    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;->dump(Ljava/io/PrintWriter;)V

    .line 262
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;->icnsElements:[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p0, v0

    .line 263
    invoke-virtual {v1, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 0

    .line 66
    sget-object p0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object p0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 2

    const/4 p0, 0x1

    .line 71
    new-array p0, p0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->ICNS:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v1, p0, v0

    return-object p0
.end method

.method public getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;
    .locals 0
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

    .line 283
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;

    move-result-object p0

    .line 284
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;->icnsElements:[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

    invoke-static {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsDecoder;->decodeAllImages([Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;)Ljava/util/List;

    move-result-object p0

    return-object p0
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

    .line 271
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;

    move-result-object p0

    .line 272
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;->icnsElements:[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

    invoke-static {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsDecoder;->decodeAllImages([Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;)Ljava/util/List;

    move-result-object p0

    .line 274
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 275
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/image/BufferedImage;

    return-object p0

    .line 277
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "No icons in ICNS file"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 0

    .line 61
    const-string p0, ".icns"

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

    move-object/from16 v0, p2

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 87
    :goto_0
    const-string v1, "VERBOSE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;

    move-result-object v0

    .line 97
    iget-object v0, v0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;->icnsElements:[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

    invoke-static {v0}, Lorg/apache/commons/imaging/formats/icns/IcnsDecoder;->decodeAllImages([Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;)Ljava/util/List;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/image/BufferedImage;

    .line 103
    new-instance v21, Lorg/apache/commons/imaging/ImageInfo;

    move-object/from16 v2, v21

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lorg/apache/commons/imaging/ImageFormats;->ICNS:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v15

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v3, "Icns"

    const/16 v4, 0x20

    const-string v7, "ICNS Apple Icon Image"

    const-string v9, "image/x-icns"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v20}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v21

    .line 100
    :cond_2
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "No icons in ICNS file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 93
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown parameter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 2
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

    if-nez p2, :cond_0

    .line 115
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    .line 117
    :goto_0
    const-string v0, "VERBOSE"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;

    move-result-object p0

    .line 127
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;->icnsElements:[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

    invoke-static {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsDecoder;->decodeAllImages([Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;)Ljava/util/List;

    move-result-object p0

    .line 129
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 132
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/image/BufferedImage;

    .line 133
    new-instance p1, Ljava/awt/Dimension;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p0

    invoke-direct {p1, p2, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object p1

    .line 130
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "No icons in ICNS file"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 123
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown parameter: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 56
    const-string p0, "Apple Icon Image"

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
    .locals 4
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

    .line 291
    new-instance p0, Ljava/util/HashMap;

    if-nez p3, :cond_0

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 294
    :goto_0
    const-string p3, "FORMAT"

    invoke-interface {p0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    invoke-interface {p0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 304
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p0

    const/16 p3, 0x10

    if-ne p0, p3, :cond_2

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p0

    if-ne p0, p3, :cond_2

    .line 305
    sget-object p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    goto :goto_1

    .line 306
    :cond_2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p0

    const/16 p3, 0x20

    if-ne p0, p3, :cond_3

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p0

    if-ne p0, p3, :cond_3

    .line 307
    sget-object p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    goto :goto_1

    .line 308
    :cond_3
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p0

    const/16 p3, 0x30

    if-ne p0, p3, :cond_4

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p0

    if-ne p0, p3, :cond_4

    .line 309
    sget-object p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    goto :goto_1

    .line 310
    :cond_4
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p0

    const/16 p3, 0x80

    if-ne p0, p3, :cond_9

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p0

    if-ne p0, p3, :cond_9

    .line 311
    sget-object p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_128x128_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 317
    :goto_1
    new-instance p3, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p3, p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 319
    sget p2, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->ICNS_MAGIC:I

    invoke-virtual {p3, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 320
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v0

    mul-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x18

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr p2, v0

    invoke-virtual {p3, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 324
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getType()I

    move-result p2

    invoke-virtual {p3, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 325
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v0

    mul-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p3, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/4 p2, 0x0

    move v0, p2

    .line 327
    :goto_2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_6

    move v1, p2

    .line 328
    :goto_3
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 329
    invoke-virtual {p1, v1, v0}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v2

    .line 330
    invoke-virtual {p3, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v3, v2, 0x10

    .line 331
    invoke-virtual {p3, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v3, v2, 0x8

    .line 332
    invoke-virtual {p3, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 333
    invoke-virtual {p3, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 337
    :cond_6
    invoke-static {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->find8BPPMaskType(Lorg/apache/commons/imaging/formats/icns/IcnsType;)Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getType()I

    move-result v0

    invoke-virtual {p3, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 339
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result p0

    mul-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p3, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move p0, p2

    .line 340
    :goto_4
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    if-ge p0, v0, :cond_8

    move v0, p2

    .line 341
    :goto_5
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 342
    invoke-virtual {p1, v0, p0}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    .line 343
    invoke-virtual {p3, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 346
    :cond_8
    invoke-virtual {p3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->close()V

    return-void

    .line 313
    :cond_9
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid/unsupported source width "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " and height "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 299
    :cond_a
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 300
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown parameter: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
