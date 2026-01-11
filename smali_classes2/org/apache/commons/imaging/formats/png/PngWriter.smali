.class Lorg/apache/commons/imaging/formats/png/PngWriter;
.super Ljava/lang/Object;
.source "PngWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;,
        Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;
    }
.end annotation


# instance fields
.field private final verbose:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 46
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "VERBOSE"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/png/PngWriter;->verbose:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/png/PngWriter;->verbose:Z

    return-void
.end method

.method private deflate([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 204
    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v0, p1, v2

    invoke-static {v1, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    .line 212
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 210
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v0, p1, v2

    invoke-static {v2, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method private getBitDepth(Lorg/apache/commons/imaging/formats/png/PngColorType;Ljava/util/Map;)B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/formats/png/PngColorType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)B"
        }
    .end annotation

    .line 303
    const-string p0, "PNG_BIT_DEPTH"

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 304
    instance-of p2, p0, Ljava/lang/Number;

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    .line 305
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    .line 308
    :goto_0
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/formats/png/PngColorType;->isBitDepthAllowed(I)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, p0

    :cond_1
    return v0
.end method

.method private isValidISO_8859_1(Ljava/lang/String;)Z
    .locals 2

    .line 217
    const-string p0, "ISO-8859-1"

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 221
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Error parsing string."

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :cond_0
    array-length v0, p3

    .line 74
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeInt(Ljava/io/OutputStream;I)V

    .line 75
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->array:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    if-eqz p3, :cond_1

    .line 77
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 80
    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/formats/png/PngCrc;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/png/PngCrc;-><init>()V

    .line 82
    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->array:[B

    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->array:[B

    array-length p2, p2

    invoke-virtual {v0, v1, p2}, Lorg/apache/commons/imaging/formats/png/PngCrc;->start_partial_crc([BI)J

    move-result-wide v1

    if-nez p3, :cond_2

    goto :goto_1

    .line 83
    :cond_2
    array-length p2, p3

    invoke-virtual {v0, v1, v2, p3, p2}, Lorg/apache/commons/imaging/formats/png/PngCrc;->continue_partial_crc(J[BI)J

    move-result-wide v1

    .line 85
    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngCrc;->finish_partial_crc(J)J

    move-result-wide p2

    long-to-int p2, p2

    .line 87
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeInt(Ljava/io/OutputStream;I)V

    return-void
.end method

.method private writeChunkIDAT(Ljava/io/OutputStream;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    sget-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->IDAT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private writeChunkIEND(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    sget-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->IEND:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private writeChunkIHDR(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    iget v1, p2, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->width:I

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeInt(Ljava/io/OutputStream;I)V

    .line 116
    iget v1, p2, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->height:I

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeInt(Ljava/io/OutputStream;I)V

    .line 117
    iget-byte v1, p2, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->bitDepth:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 118
    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/png/PngColorType;->getValue()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 119
    iget-byte v1, p2, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->compressionMethod:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 120
    iget-byte v1, p2, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->filterMethod:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 121
    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->interlaceMethod:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->ordinal()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 123
    sget-object p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private writeChunkPHYS(Ljava/io/OutputStream;IIB)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    const/16 v6, 0x9

    .line 296
    new-array v6, v6, [B

    const/4 v7, 0x0

    aput-byte v0, v6, v7

    const/4 v0, 0x1

    aput-byte v1, v6, v0

    const/4 v0, 0x2

    aput-byte v2, v6, v0

    const/4 v0, 0x3

    aput-byte p2, v6, v0

    const/4 p2, 0x4

    aput-byte v3, v6, p2

    const/4 p2, 0x5

    aput-byte v4, v6, p2

    const/4 p2, 0x6

    aput-byte v5, v6, p2

    const/4 p2, 0x7

    aput-byte p3, v6, p2

    const/16 p2, 0x8

    aput-byte p4, v6, p2

    .line 297
    sget-object p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->pHYs:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {p0, p1, p2, v6}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private writeChunkPLTE(Ljava/io/OutputStream;Lorg/apache/commons/imaging/palette/Palette;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-interface {p2}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    .line 251
    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 255
    invoke-interface {p2, v2}, Lorg/apache/commons/imaging/palette/Palette;->getEntry(I)I

    move-result v3

    mul-int/lit8 v4, v2, 0x3

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 258
    aput-byte v5, v1, v4

    add-int/lit8 v5, v4, 0x1

    shr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 259
    aput-byte v6, v1, v5

    add-int/lit8 v4, v4, 0x2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 260
    aput-byte v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_0
    sget-object p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private writeChunkTRNS(Ljava/io/OutputStream;Lorg/apache/commons/imaging/palette/Palette;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-interface {p2}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 270
    invoke-interface {p2, v2}, Lorg/apache/commons/imaging/palette/Palette;->getEntry(I)I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :cond_0
    sget-object p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private writeChunkXmpiTXt(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 231
    const-string v1, "ISO-8859-1"

    const-string v2, "XML:com.adobe.xmp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x0

    .line 232
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x1

    .line 234
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 235
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 237
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 240
    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 241
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 243
    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->deflate([B)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 245
    sget-object p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private writeChunkiTXt(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngText$Itxt;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 128
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->keyword:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/png/PngWriter;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->languageTag:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/png/PngWriter;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->keyword:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x0

    .line 139
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x1

    .line 141
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 142
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 145
    iget-object v3, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->languageTag:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 146
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 149
    iget-object v2, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->translatedKeyword:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 150
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 152
    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->text:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->deflate([B)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 154
    sget-object p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void

    .line 132
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Png tEXt chunk language tag is not ISO-8859-1: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->languageTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Png tEXt chunk keyword is not ISO-8859-1: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->keyword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeChunktEXt(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngText$Text;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 183
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/png/PngText$Text;->keyword:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/png/PngWriter;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/png/PngText$Text;->text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/png/PngWriter;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 193
    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText$Text;->keyword:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 197
    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/PngText$Text;->text:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 199
    sget-object p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void

    .line 187
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Png tEXt chunk text is not ISO-8859-1: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/PngText$Text;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Png tEXt chunk keyword is not ISO-8859-1: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/PngText$Text;->keyword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeChunkzTXt(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 159
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;->keyword:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/png/PngWriter;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;->text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/png/PngWriter;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 169
    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;->keyword:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x0

    .line 170
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 173
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 176
    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;->text:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->deflate([B)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 178
    sget-object p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void

    .line 163
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Png zTXt chunk text is not ISO-8859-1: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Png zTXt chunk keyword is not ISO-8859-1: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;->keyword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeInt(Ljava/io/OutputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 p0, p2, 0x18

    and-int/lit16 p0, p0, 0xff

    .line 65
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p0, p2, 0x10

    and-int/lit16 p0, p0, 0xff

    .line 66
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p0, p2, 0x8

    and-int/lit16 p0, p0, 0xff

    .line 67
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit16 p0, p2, 0xff

    .line 68
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 22
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

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 372
    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v2, p3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 375
    const-string v2, "FORMAT"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_0
    const-string v2, "VERBOSE"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 380
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 384
    const-string v3, "PNG_FORCE_TRUE_COLOR"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 385
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_2
    const-string v4, "PNG_FORCE_INDEXED_COLOR"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 388
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_3
    const-string v5, "PNG_BIT_DEPTH"

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 391
    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_4
    const-string v5, "XMP_XML"

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 394
    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_5
    const-string v6, "PNG_TEXT_CHUNKS"

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 397
    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_6
    const-string v7, "PIXEL_DENSITY"

    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_27

    .line 406
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    .line 407
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 409
    new-instance v11, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v11}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    invoke-virtual {v11, v9}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;)Z

    move-result v15

    .line 410
    iget-boolean v11, v0, Lorg/apache/commons/imaging/formats/png/PngWriter;->verbose:Z

    if-eqz v11, :cond_7

    .line 411
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "hasAlpha: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 415
    :cond_7
    new-instance v11, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v11}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    invoke-virtual {v11, v9}, Lorg/apache/commons/imaging/palette/PaletteFactory;->isGrayscale(Ljava/awt/image/BufferedImage;)Z

    move-result v11

    .line 416
    iget-boolean v12, v0, Lorg/apache/commons/imaging/formats/png/PngWriter;->verbose:Z

    if-eqz v12, :cond_8

    .line 417
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "isGrayscale: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 422
    :cond_8
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 423
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v4, :cond_a

    if-nez v3, :cond_9

    goto :goto_0

    .line 426
    :cond_9
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "Params: Cannot force both indexed and true color modes"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_0
    const/4 v14, 0x0

    if-eqz v4, :cond_b

    .line 429
    sget-object v3, Lorg/apache/commons/imaging/formats/png/PngColorType;->INDEXED_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    :goto_1
    move/from16 v19, v11

    goto :goto_3

    :cond_b
    if-eqz v3, :cond_d

    if-eqz v15, :cond_c

    .line 431
    sget-object v3, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    goto :goto_2

    :cond_c
    sget-object v3, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    :goto_2
    move/from16 v19, v14

    goto :goto_3

    .line 434
    :cond_d
    invoke-static {v15, v11}, Lorg/apache/commons/imaging/formats/png/PngColorType;->getColorType(ZZ)Lorg/apache/commons/imaging/formats/png/PngColorType;

    move-result-object v3

    goto :goto_1

    .line 436
    :goto_3
    iget-boolean v4, v0, Lorg/apache/commons/imaging/formats/png/PngWriter;->verbose:Z

    if-eqz v4, :cond_e

    .line 437
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "colorType: "

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 441
    :cond_e
    invoke-direct {v0, v3, v2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->getBitDepth(Lorg/apache/commons/imaging/formats/png/PngColorType;Ljava/util/Map;)B

    move-result v4

    .line 442
    iget-boolean v11, v0, Lorg/apache/commons/imaging/formats/png/PngWriter;->verbose:Z

    if-eqz v11, :cond_f

    .line 443
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "bitDepth: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 447
    :cond_f
    sget-object v11, Lorg/apache/commons/imaging/formats/png/PngColorType;->INDEXED_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    if-ne v3, v11, :cond_10

    const/16 v11, 0x8

    goto :goto_4

    :cond_10
    move v11, v4

    .line 452
    :goto_4
    iget-boolean v12, v0, Lorg/apache/commons/imaging/formats/png/PngWriter;->verbose:Z

    if-eqz v12, :cond_11

    .line 453
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "sampleDepth: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 457
    :cond_11
    sget-object v11, Lorg/apache/commons/imaging/formats/png/PngConstants;->PNG_SIGNATURE:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v11, v10}, Lorg/apache/commons/imaging/common/BinaryConstant;->writeTo(Ljava/io/OutputStream;)V

    .line 464
    sget-object v18, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->NONE:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    .line 466
    new-instance v13, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v13

    move v12, v8

    move/from16 p3, v8

    move-object v8, v13

    move v13, v1

    move/from16 v20, v14

    move v14, v4

    move/from16 v21, v15

    move-object v15, v3

    invoke-direct/range {v11 .. v18}, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;-><init>(IIBLorg/apache/commons/imaging/formats/png/PngColorType;BBLorg/apache/commons/imaging/formats/png/InterlaceMethod;)V

    .line 469
    invoke-direct {v0, v10, v8}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkIHDR(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;)V

    .line 480
    sget-object v4, Lorg/apache/commons/imaging/formats/png/PngColorType;->INDEXED_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    if-ne v3, v4, :cond_14

    if-eqz v21, :cond_12

    const/16 v4, 0xff

    goto :goto_5

    :cond_12
    const/16 v4, 0x100

    .line 485
    :goto_5
    new-instance v8, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v8}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    .line 486
    invoke-virtual {v8, v9, v4}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeQuantizedRgbPalette(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/Palette;

    move-result-object v4

    if-eqz v21, :cond_13

    .line 493
    new-instance v8, Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;

    invoke-direct {v8, v4}, Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;-><init>(Lorg/apache/commons/imaging/palette/Palette;)V

    .line 494
    invoke-direct {v0, v10, v8}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkPLTE(Ljava/io/OutputStream;Lorg/apache/commons/imaging/palette/Palette;)V

    .line 495
    new-instance v4, Lorg/apache/commons/imaging/palette/SimplePalette;

    filled-new-array/range {v20 .. v20}, [I

    move-result-object v12

    invoke-direct {v4, v12}, Lorg/apache/commons/imaging/palette/SimplePalette;-><init>([I)V

    invoke-direct {v0, v10, v4}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkTRNS(Ljava/io/OutputStream;Lorg/apache/commons/imaging/palette/Palette;)V

    move-object v12, v8

    goto :goto_7

    .line 497
    :cond_13
    invoke-direct {v0, v10, v4}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkPLTE(Ljava/io/OutputStream;Lorg/apache/commons/imaging/palette/Palette;)V

    goto :goto_6

    :cond_14
    const/4 v4, 0x0

    :goto_6
    move-object v12, v4

    .line 501
    :goto_7
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 502
    instance-of v7, v4, Lorg/apache/commons/imaging/PixelDensity;

    const/4 v14, 0x1

    if-eqz v7, :cond_16

    .line 503
    check-cast v4, Lorg/apache/commons/imaging/PixelDensity;

    .line 504
    invoke-virtual {v4}, Lorg/apache/commons/imaging/PixelDensity;->isUnitless()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 505
    invoke-virtual {v4}, Lorg/apache/commons/imaging/PixelDensity;->getRawHorizontalDensity()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v4}, Lorg/apache/commons/imaging/PixelDensity;->getRawVerticalDensity()D

    move-result-wide v15

    move-object/from16 v17, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v4, v11

    move/from16 v11, v20

    invoke-direct {v0, v10, v7, v4, v11}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkPHYS(Ljava/io/OutputStream;IIB)V

    goto :goto_8

    :cond_15
    move-object/from16 v17, v12

    move/from16 v11, v20

    .line 510
    invoke-virtual {v4}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityMetres()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v4}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityMetres()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v4, v11

    invoke-direct {v0, v10, v7, v4, v14}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkPHYS(Ljava/io/OutputStream;IIB)V

    goto :goto_8

    :cond_16
    move-object/from16 v17, v12

    .line 517
    :goto_8
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 518
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 519
    invoke-direct {v0, v10, v4}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkXmpiTXt(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 522
    :cond_17
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 523
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 524
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 525
    check-cast v4, Lorg/apache/commons/imaging/formats/png/PngText;

    .line 526
    instance-of v5, v4, Lorg/apache/commons/imaging/formats/png/PngText$Text;

    if-eqz v5, :cond_18

    .line 527
    check-cast v4, Lorg/apache/commons/imaging/formats/png/PngText$Text;

    invoke-direct {v0, v10, v4}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunktEXt(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngText$Text;)V

    goto :goto_9

    .line 528
    :cond_18
    instance-of v5, v4, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;

    if-eqz v5, :cond_19

    .line 529
    check-cast v4, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;

    invoke-direct {v0, v10, v4}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkzTXt(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;)V

    goto :goto_9

    .line 530
    :cond_19
    instance-of v5, v4, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;

    if-eqz v5, :cond_1a

    .line 531
    check-cast v4, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;

    invoke-direct {v0, v10, v4}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkiTXt(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngText$Itxt;)V

    goto :goto_9

    .line 533
    :cond_1a
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown text to embed in PNG: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_1b
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 548
    sget-object v2, Lorg/apache/commons/imaging/formats/png/PngColorType;->GREYSCALE_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    if-eq v3, v2, :cond_1d

    sget-object v2, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    if-ne v3, v2, :cond_1c

    goto :goto_a

    :cond_1c
    move/from16 v8, p3

    const/4 v14, 0x0

    goto :goto_b

    :cond_1d
    :goto_a
    move/from16 v8, p3

    .line 551
    :goto_b
    new-array v12, v8, [I

    const/4 v15, 0x0

    :goto_c
    if-ge v15, v1, :cond_23

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    move/from16 v16, v1

    move-object/from16 v1, p1

    move v3, v15

    move v4, v8

    move-object v6, v12

    move/from16 p3, v8

    .line 554
    invoke-virtual/range {v1 .. v8}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    .line 556
    sget-object v1, Lorg/apache/commons/imaging/formats/png/FilterType;->NONE:Lorg/apache/commons/imaging/formats/png/FilterType;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/png/FilterType;->ordinal()I

    move-result v1

    invoke-virtual {v11, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move/from16 v2, p3

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v2, :cond_22

    .line 558
    aget v3, v12, v1

    if-eqz v17, :cond_1f

    if-eqz v21, :cond_1e

    ushr-int/lit8 v4, v3, 0x18

    if-nez v4, :cond_1e

    const/4 v4, 0x0

    .line 562
    invoke-virtual {v11, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v8, v17

    const/16 v5, 0xff

    goto :goto_f

    :cond_1e
    const/4 v4, 0x0

    move-object/from16 v8, v17

    .line 564
    invoke-interface {v8, v3}, Lorg/apache/commons/imaging/palette/Palette;->getPaletteIndex(I)I

    move-result v3

    const/16 v5, 0xff

    and-int/2addr v3, v5

    .line 565
    invoke-virtual {v11, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_f

    :cond_1f
    move-object/from16 v8, v17

    const/4 v4, 0x0

    const/16 v5, 0xff

    shr-int/lit8 v6, v3, 0x18

    and-int/2addr v6, v5

    shr-int/lit8 v7, v3, 0x10

    and-int/2addr v7, v5

    shr-int/lit8 v13, v3, 0x8

    and-int/2addr v13, v5

    and-int/lit16 v3, v3, 0xff

    if-eqz v19, :cond_20

    add-int/2addr v7, v13

    add-int/2addr v7, v3

    .line 574
    div-int/lit8 v7, v7, 0x3

    .line 587
    invoke-virtual {v11, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_e

    .line 589
    :cond_20
    invoke-virtual {v11, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 590
    invoke-virtual {v11, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 591
    invoke-virtual {v11, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_e
    if-eqz v14, :cond_21

    .line 594
    invoke-virtual {v11, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_21
    :goto_f
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v17, v8

    goto :goto_d

    :cond_22
    move-object/from16 v8, v17

    const/4 v4, 0x0

    const/16 v5, 0xff

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v16

    move v8, v2

    goto :goto_c

    :cond_23
    const/4 v4, 0x0

    .line 599
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 604
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 605
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    move v14, v4

    .line 607
    :goto_10
    array-length v4, v1

    if-ge v14, v4, :cond_25

    .line 608
    array-length v4, v1

    const/high16 v5, 0x40000

    add-int/2addr v5, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v4, v14

    .line 611
    invoke-virtual {v3, v1, v14, v4}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 612
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->flush()V

    .line 613
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 615
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 616
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 617
    array-length v6, v4

    if-lez v6, :cond_24

    .line 619
    invoke-direct {v0, v10, v4}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkIDAT(Ljava/io/OutputStream;[B)V

    :cond_24
    move v14, v5

    goto :goto_10

    .line 624
    :cond_25
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 625
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 626
    array-length v2, v1

    if-lez v2, :cond_26

    .line 628
    invoke-direct {v0, v10, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkIDAT(Ljava/io/OutputStream;[B)V

    .line 636
    :cond_26
    invoke-direct {v0, v10}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkIEND(Ljava/io/OutputStream;)V

    .line 659
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V

    return-void

    .line 401
    :cond_27
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 402
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown parameter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
