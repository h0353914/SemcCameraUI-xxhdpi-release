.class public Lorg/apache/commons/imaging/formats/rgbe/RgbeImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "RgbeImageParser.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    .line 51
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method


# virtual methods
.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    const-string p0, ".hdr"

    const-string v0, ".pic"

    .line 66
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 2

    const/4 p0, 0x1

    .line 71
    new-array p0, p0, [Lorg/apache/commons/imaging/ImageFormat;

    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->RGBE:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 9
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

    .line 111
    new-instance p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 117
    :try_start_0
    new-instance v0, Ljava/awt/image/DataBufferFloat;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getPixelData()[[F

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Ljava/awt/image/DataBufferFloat;-><init>([[FI)V

    .line 120
    new-instance v1, Ljava/awt/image/BufferedImage;

    new-instance v8, Ljava/awt/image/ComponentColorModel;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/awt/image/DataBuffer;->getDataType()I

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    new-instance v2, Ljava/awt/image/BandedSampleModel;

    invoke-virtual {v0}, Ljava/awt/image/DataBuffer;->getDataType()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getHeight()I

    move-result v5

    const/4 v6, 0x3

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/awt/image/BandedSampleModel;-><init>(IIII)V

    new-instance v3, Ljava/awt/Point;

    invoke-direct {v3}, Ljava/awt/Point;-><init>()V

    invoke-static {v2, v0, v3}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v8, v0, p2, v2}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    new-array v0, p1, [Ljava/io/Closeable;

    aput-object p0, v0, p2

    invoke-static {p1, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v0

    new-array p1, p1, [Ljava/io/Closeable;

    aput-object p0, p1, p2

    invoke-static {p2, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 0

    const-string p0, ".hdr"

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
    .locals 24
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

    .line 91
    new-instance v1, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 94
    :try_start_0
    new-instance v23, Lorg/apache/commons/imaging/ImageInfo;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeImageParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lorg/apache/commons/imaging/ImageFormats;->RGBE:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeImageParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getHeight()I

    move-result v10

    const-string v11, "image/vnd.radiance"

    const/4 v12, 0x1

    const/4 v13, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    const/4 v15, -0x1

    const/high16 v16, -0x40800000    # -1.0f

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getWidth()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    sget-object v21, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    sget-object v22, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->ADAPTIVE_RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    move-object/from16 v4, v23

    invoke-direct/range {v4 .. v22}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    new-array v4, v2, [Ljava/io/Closeable;

    aput-object v1, v4, v3

    invoke-static {v2, v4}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v23

    :catchall_0
    move-exception v0

    move-object v4, v0

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    invoke-static {v3, v2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v4
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 3
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

    .line 137
    new-instance p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 140
    :try_start_0
    new-instance v0, Ljava/awt/Dimension;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    new-array v1, p1, [Ljava/io/Closeable;

    aput-object p0, v1, p2

    invoke-static {p1, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    new-array p1, p1, [Ljava/io/Closeable;

    aput-object p0, p1, p2

    invoke-static {p2, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v0
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 2
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

    .line 77
    new-instance p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getMetadata()Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    new-array v1, p1, [Ljava/io/Closeable;

    aput-object p0, v1, p2

    invoke-static {p1, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    new-array p1, p1, [Ljava/io/Closeable;

    aput-object p0, p1, p2

    invoke-static {p2, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "Radiance HDR"

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
