.class public Lorg/apache/commons/imaging/formats/dcx/DcxImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "DcxImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;
    }
.end annotation


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".dcx"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-string v0, ".dcx"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    .line 55
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private readDcxHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const-string v0, "Not a Valid DCX File"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    :try_start_1
    const-string v3, "Id"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v3, p1, v0, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 134
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x400

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_1

    .line 136
    const-string v7, "PageTable"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v7, p1, v0, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const p0, 0x3ade68b1

    if-ne v3, p0, :cond_4

    .line 148
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    if-eq p0, v5, :cond_3

    .line 153
    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 154
    array-length v0, p0

    new-array v0, v0, [J

    move v4, v2

    .line 155
    :goto_2
    array-length v5, p0

    if-ge v4, v5, :cond_2

    .line 156
    aget-object v5, p0, v4

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 159
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;

    invoke-direct {p0, v3, v0}, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;-><init>(I[J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    .line 149
    :cond_3
    :try_start_2
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "DCX page table not terminated by zero entry"

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_4
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Not a Valid DCX File: file id incorrect"

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    .line 163
    :goto_3
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object p1, v0, v2

    invoke-static {v2, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

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

    .line 170
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser;->readDcxHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;->dump(Ljava/io/PrintWriter;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 0

    .line 70
    sget-object p0, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object p0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 2

    const/4 p0, 0x1

    .line 75
    new-array p0, p0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->DCX:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v1, p0, v0

    return-object p0
.end method

.method public getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;
    .locals 9
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

    .line 187
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser;->readDcxHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;

    move-result-object p0

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    new-instance v1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;-><init>()V

    .line 190
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;->pageTable:[J

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-wide v5, p0, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 194
    :try_start_0
    invoke-virtual {p1, v5, v6}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream(J)Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    :try_start_1
    new-instance v6, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {v6, v5, v7}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 197
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v6, v7}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v6

    .line 199
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    new-array v6, v8, [Ljava/io/Closeable;

    aput-object v5, v6, v3

    invoke-static {v8, v6}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v7, v5

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    new-array p1, v8, [Ljava/io/Closeable;

    aput-object v7, p1, v3

    invoke-static {v3, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0

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

    .line 177
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser;->getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;

    move-result-object p0

    .line 178
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 181
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/image/BufferedImage;

    return-object p0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 0

    .line 65
    const-string p0, ".dcx"

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

    .line 60
    const-string p0, "Dcx-Custom"

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
    .locals 3
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

    .line 212
    new-instance p0, Ljava/util/HashMap;

    if-nez p3, :cond_0

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 214
    :goto_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 217
    const-string v0, "FORMAT"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_1
    const-string v0, "PCX_COMPRESSION"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 224
    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_2
    const-string v0, "PIXEL_DENSITY"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 228
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 230
    instance-of v2, v1, Lorg/apache/commons/imaging/PixelDensity;

    if-eqz v2, :cond_3

    .line 234
    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 231
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p1, "Invalid pixel density parameter"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 239
    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 246
    new-instance p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    const p2, 0x3ade68b1

    .line 248
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/16 p2, 0x1004

    .line 250
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/4 p2, 0x0

    move v0, p2

    :goto_2
    const/16 v1, 0x3ff

    if-ge v0, v1, :cond_5

    .line 252
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 254
    :cond_5
    new-instance p2, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;

    invoke-direct {p2}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;-><init>()V

    .line 255
    invoke-virtual {p2, p1, p0, p3}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V

    return-void

    .line 240
    :cond_6
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 241
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
