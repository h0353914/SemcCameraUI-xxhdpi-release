.class public Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "WbmpImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;
    }
.end annotation


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".wbmp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".wbmp"

    .line 49
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    return-void
.end method

.method private readImage(Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget p0, p1, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;->width:I

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    const-string v0, "Pixels"

    .line 205
    iget v1, p1, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;->height:I

    mul-int/2addr p0, v1

    const-string v1, "Error reading image pixels"

    invoke-static {v0, p2, p0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p0

    .line 207
    new-instance p2, Ljava/awt/image/DataBufferByte;

    array-length v0, p0

    invoke-direct {p2, p0, v0}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    .line 208
    iget p0, p1, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;->width:I

    iget p1, p1, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;->height:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2, p0, p1, v0, v1}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;IIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    const/4 p1, 0x2

    .line 210
    new-array v3, p1, [I

    fill-array-data v3, :array_0

    .line 211
    new-instance p1, Ljava/awt/image/IndexColorModel;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    .line 213
    new-instance p2, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/image/IndexColorModel;->isAlphaPremultiplied()Z

    move-result v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-direct {p2, p1, p0, v0, v1}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object p2

    :array_0
    .array-data 4
        0x0
        0xffffff
    .end array-data
.end method

.method private readMultiByteInteger(Ljava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    :cond_0
    const-string v1, "Header"

    const-string v2, "Error reading WBMP header"

    .line 133
    invoke-static {v1, p1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    shl-int/lit8 p0, p0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr p0, v2

    add-int/lit8 v0, v0, 0x7

    const/16 v2, 0x1f

    if-le v0, v2, :cond_1

    .line 138
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Overflow reading WBMP multi-byte field"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    return p0
.end method

.method private readWbmpHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->readMultiByteInteger(Ljava/io/InputStream;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid/unsupported WBMP type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const-string v1, "FixHeaderField"

    const-string v2, "Invalid WBMP File"

    .line 180
    invoke-static {v1, p1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    and-int/lit16 v2, v1, 0x9f

    if-eqz v2, :cond_1

    .line 183
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid/unsupported WBMP FixHeaderField 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xff

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->readMultiByteInteger(Ljava/io/InputStream;)I

    move-result v2

    .line 190
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->readMultiByteInteger(Ljava/io/InputStream;)I

    move-result p0

    .line 192
    new-instance p1, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;

    invoke-direct {p1, v0, v1, v2, p0}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;-><init>(IBII)V

    return-object p1
.end method

.method private readWbmpHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->readWbmpHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
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

.method private writeMultiByteInteger(Ljava/io/OutputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    const/16 v0, 0x1c

    :goto_0
    const/16 v1, 0x7f

    if-lez v0, :cond_2

    ushr-int v2, p2, v0

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    const/16 p0, 0x80

    or-int/2addr p0, v1

    .line 151
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    const/4 p0, 0x1

    :cond_1
    add-int/lit8 v0, v0, -0x7

    goto :goto_0

    :cond_2
    and-int p0, v1, p2

    .line 155
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
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

    .line 198
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->readWbmpHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;->dump(Ljava/io/PrintWriter;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 0

    .line 63
    sget-object p0, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object p0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 2

    const/4 p0, 0x1

    .line 68
    new-array p0, p0, [Lorg/apache/commons/imaging/ImageFormat;

    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->WBMP:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method

.method public final getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 2
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

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 223
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 224
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->readWbmpHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;

    move-result-object v1

    .line 225
    invoke-direct {p0, v1, p1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->readImage(Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    new-array v1, p2, [Ljava/io/Closeable;

    aput-object p1, v1, v0

    invoke-static {p2, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    new-array p2, p2, [Ljava/io/Closeable;

    aput-object p1, p2, v0

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 0

    const-string p0, ".wbmp"

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

    .line 81
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->readWbmpHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;

    move-result-object v0

    .line 82
    new-instance v20, Lorg/apache/commons/imaging/ImageInfo;

    const-string v2, "WBMP"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lorg/apache/commons/imaging/ImageFormats;->WBMP:Lorg/apache/commons/imaging/ImageFormats;

    const-string v6, "Wireless Application Protocol Bitmap"

    iget v7, v0, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;->height:I

    const-string v8, "image/vnd.wap.wbmp"

    iget v14, v0, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;->width:I

    sget-object v18, Lorg/apache/commons/imaging/ImageInfo$ColorType;->BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const/4 v3, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v19}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v20
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

    .line 93
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->readWbmpHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;

    move-result-object p0

    .line 94
    new-instance p1, Ljava/awt/Dimension;

    iget p2, p0, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;->width:I

    iget p0, p0, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;->height:I

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

    const-string p0, "Wireless Application Protocol Bitmap Format"

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
    .locals 8
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

    if-nez p3, :cond_0

    .line 237
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p3, v0

    :goto_0
    const-string v0, "FORMAT"

    .line 240
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FORMAT"

    .line 241
    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 245
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 246
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown parameter: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p3, 0x0

    .line 249
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->writeMultiByteInteger(Ljava/io/OutputStream;I)V

    .line 250
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    .line 251
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->writeMultiByteInteger(Ljava/io/OutputStream;I)V

    .line 252
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->writeMultiByteInteger(Ljava/io/OutputStream;I)V

    move p0, p3

    .line 254
    :goto_1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    if-ge p0, v0, :cond_7

    const/16 v0, 0x80

    move v1, p3

    move v3, v1

    move v2, v0

    .line 257
    :goto_2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 258
    invoke-virtual {p1, v1, p0}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v4

    shr-int/lit8 v5, v4, 0x10

    const/16 v6, 0xff

    and-int/2addr v5, v6

    shr-int/lit8 v7, v4, 0x8

    and-int/2addr v7, v6

    shr-int/2addr v4, p3

    and-int/2addr v4, v6

    add-int/2addr v5, v7

    add-int/2addr v5, v4

    .line 262
    div-int/lit8 v5, v5, 0x3

    const/16 v4, 0x7f

    if-le v5, v4, :cond_3

    or-int/2addr v3, v2

    :cond_3
    ushr-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_4

    .line 268
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    move v3, p3

    move v2, v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    if-eq v2, v0, :cond_6

    .line 274
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method
