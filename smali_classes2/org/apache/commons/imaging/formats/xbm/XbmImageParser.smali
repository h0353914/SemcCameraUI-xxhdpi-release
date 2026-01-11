.class public Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "XbmImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;,
        Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;
    }
.end annotation


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".xbm"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-string v0, ".xbm"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    return-void
.end method

.method private parseXbmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 147
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 149
    invoke-static {p1, v0, v2}, Lorg/apache/commons/imaging/common/BasicCParser;->preprocess(Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/io/ByteArrayOutputStream;

    move-result-object v3

    .line 155
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, -0x1

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 157
    const-string v11, "_width"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 158
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 159
    :cond_1
    const-string v11, "_height"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 160
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 161
    :cond_2
    const-string v11, "_x_hot"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 162
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    .line 163
    :cond_3
    const-string v11, "_y_hot"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 164
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    :cond_4
    if-eq v5, v4, :cond_6

    if-eq v6, v4, :cond_5

    .line 174
    new-instance v2, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;

    invoke-direct {v2, v0}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;-><init>(Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$1;)V

    .line 175
    new-instance v0, Lorg/apache/commons/imaging/common/BasicCParser;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v4}, Lorg/apache/commons/imaging/common/BasicCParser;-><init>(Ljava/io/ByteArrayInputStream;)V

    iput-object v0, v2, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;->cParser:Lorg/apache/commons/imaging/common/BasicCParser;

    .line 177
    new-instance v0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;

    invoke-direct {v0, v5, v6, v7, v8}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;-><init>(IIII)V

    iput-object v0, v2, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;->xbmHeader:Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    new-array v0, p0, [Ljava/io/Closeable;

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    .line 171
    :cond_5
    :try_start_2
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "height not found"

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_6
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "width not found"

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v12, v0

    move-object v0, p1

    move-object p1, v12

    .line 181
    :goto_1
    new-array p0, p0, [Ljava/io/Closeable;

    aput-object p1, p0, v1

    invoke-static {v1, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v0
.end method

.method private randomName()Ljava/lang/String;
    .locals 9

    .line 301
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    const/16 v3, 0x38

    move v4, v3

    :goto_0
    const-wide/16 v5, 0xff

    if-ltz v4, :cond_0

    shr-long v7, v1, v4

    and-long/2addr v5, v7

    long-to-int v5, v5

    .line 306
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x8

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    :goto_1
    if-ltz v3, :cond_1

    shr-long v7, v1, v3

    and-long/2addr v7, v5

    long-to-int p0, v7

    .line 311
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x8

    goto :goto_1

    .line 314
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private readXbmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->parseXbmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;

    move-result-object p0

    .line 139
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;->xbmHeader:Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;

    return-object p0
.end method

.method private readXbmImage(Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;Lorg/apache/commons/imaging/common/BasicCParser;)Ljava/awt/image/BufferedImage;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-virtual {p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object p0

    .line 189
    const-string v0, "static"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 193
    invoke-virtual {p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 199
    const-string v0, "unsigned"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object p0

    .line 202
    :cond_0
    const-string v0, "char"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 206
    invoke-virtual {p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 212
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XBM file failed, variable name doesn\'t start with letter or underscore"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    move v1, v0

    .line 216
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 217
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 218
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_4

    if-ne v3, v2, :cond_3

    goto :goto_2

    .line 219
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XBM file failed, variable name contains non-letter non-digit non-underscore"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    :cond_5
    invoke-virtual {p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object p0

    .line 225
    const-string v1, "["

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 229
    invoke-virtual {p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object p0

    .line 230
    const-string v1, "]"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 234
    invoke-virtual {p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object p0

    .line 235
    const-string v1, "="

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 239
    invoke-virtual {p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object p0

    .line 240
    const-string v1, "{"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 245
    iget p0, p1, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->width:I

    add-int/lit8 p0, p0, 0x7

    const/16 v1, 0x8

    div-int/2addr p0, v1

    .line 246
    iget v2, p1, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->height:I

    mul-int/2addr p0, v2

    new-array v2, p0, [B

    move v3, v0

    :goto_3
    const/4 v4, 0x1

    if-ge v3, p0, :cond_d

    .line 248
    invoke-virtual {p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 249
    const-string v6, "0x"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 253
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-gt v6, v7, :cond_b

    const/4 v6, 0x2

    .line 257
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    move v6, v0

    move v7, v6

    :goto_4
    if-ge v6, v1, :cond_7

    shl-int v8, v4, v6

    and-int/2addr v8, v5

    if-eqz v8, :cond_6

    const/16 v8, 0x80

    ushr-int/2addr v8, v6

    or-int/2addr v7, v8

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    int-to-byte v4, v7

    .line 264
    aput-byte v4, v2, v3

    .line 266
    invoke-virtual {p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 271
    const-string v5, ","

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    add-int/lit8 v5, p0, -0x1

    if-lt v3, v5, :cond_8

    const-string v5, "}"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    .line 273
    :cond_8
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XBM file failed, punctuation error"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 268
    :cond_a
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XBM file failed, premature end of file"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 254
    :cond_b
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XBM file failed, hex value too long"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 250
    :cond_c
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XBM file failed, hex value missing"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    const p2, 0xffffff

    .line 278
    filled-new-array {p2, v0}, [I

    move-result-object v8

    .line 279
    new-instance p2, Ljava/awt/image/IndexColorModel;

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p2

    invoke-direct/range {v5 .. v12}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    .line 280
    new-instance v0, Ljava/awt/image/DataBufferByte;

    invoke-direct {v0, v2, p0}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    .line 281
    iget p0, p1, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->width:I

    iget p1, p1, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->height:I

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v4, v1}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;IIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    .line 283
    new-instance p1, Ljava/awt/image/BufferedImage;

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-direct {p1, p2, p0, v0, v1}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object p1

    .line 241
    :cond_e
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XBM file failed, no \'{\' token"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 236
    :cond_f
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XBM file failed, no \'=\' token"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 231
    :cond_10
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XBM file failed, no \']\' token"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 226
    :cond_11
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XBM file failed, no \'[\' token"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 208
    :cond_12
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XBM file failed, no variable name"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 203
    :cond_13
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XBM file failed, no \'char\' token"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 195
    :cond_14
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XBM file failed, no \'unsigned\' or \'char\' token"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 190
    :cond_15
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XBM file failed, no \'static\' token"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private toPrettyHex(I)Ljava/lang/String;
    .locals 1

    and-int/lit16 p0, p1, 0xff

    .line 318
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 319
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 322
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "0x0"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    .line 289
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->readXbmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->dump(Ljava/io/PrintWriter;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 0

    .line 68
    sget-object p0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object p0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 2

    const/4 p0, 0x1

    .line 73
    new-array p0, p0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->XBM:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v1, p0, v0

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

    .line 296
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->parseXbmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;

    move-result-object p1

    .line 297
    iget-object p2, p1, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;->xbmHeader:Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;->cParser:Lorg/apache/commons/imaging/common/BasicCParser;

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->readXbmImage(Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;Lorg/apache/commons/imaging/common/BasicCParser;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 0

    .line 63
    const-string p0, ".xbm"

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

    .line 86
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->readXbmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;

    move-result-object v0

    .line 87
    new-instance v20, Lorg/apache/commons/imaging/ImageInfo;

    move-object/from16 v1, v20

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lorg/apache/commons/imaging/ImageFormats;->XBM:Lorg/apache/commons/imaging/ImageFormats;

    iget v7, v0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->height:I

    iget v14, v0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->width:I

    sget-object v18, Lorg/apache/commons/imaging/ImageInfo$ColorType;->BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v2, "XBM"

    const/4 v3, 0x1

    const-string v6, "X BitMap"

    const-string v8, "image/x-xbitmap"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

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

    .line 97
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->readXbmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;

    move-result-object p0

    .line 98
    new-instance p1, Ljava/awt/Dimension;

    iget p2, p0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->width:I

    iget p0, p0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->height:I

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

    .line 58
    const-string p0, "X BitMap"

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
    .locals 16
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

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-nez v2, :cond_0

    .line 329
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v2, v3

    .line 332
    :goto_0
    const-string v3, "FORMAT"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 333
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 341
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->randomName()Ljava/lang/String;

    move-result-object v2

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#define "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_width "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "US-ASCII"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "static unsigned char "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_bits[] = {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 354
    const-string v2, "\n  "

    move-object v8, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v10

    if-ge v4, v10, :cond_8

    const/4 v10, 0x0

    .line 355
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v11

    const/16 v12, 0xc

    const-string v13, ","

    if-ge v10, v11, :cond_5

    move-object/from16 v11, p1

    .line 356
    invoke-virtual {v11, v10, v4}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v15

    shr-int/lit8 v3, v15, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v14, v15, 0x8

    and-int/lit16 v14, v14, 0xff

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v3, v14

    add-int/2addr v3, v15

    .line 360
    div-int/lit8 v3, v3, 0x3

    const/16 v14, 0x7f

    if-le v3, v14, :cond_2

    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    const/4 v3, 0x1

    :goto_3
    shl-int/2addr v3, v7

    or-int/2addr v3, v5

    add-int/lit8 v7, v7, 0x1

    const/16 v5, 0x8

    if-ne v7, v5, :cond_4

    .line 369
    invoke-virtual {v8, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write([B)V

    if-ne v9, v12, :cond_3

    .line 372
    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write([B)V

    const/4 v9, 0x0

    .line 375
    :cond_3
    invoke-direct {v0, v3}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->toPrettyHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    const/4 v3, 0x1

    add-int/2addr v9, v3

    move-object v8, v13

    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move v5, v3

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v11, p1

    if-eqz v7, :cond_7

    .line 382
    invoke-virtual {v8, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    if-ne v9, v12, :cond_6

    .line 385
    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    const/4 v9, 0x0

    .line 388
    :cond_6
    invoke-direct {v0, v5}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->toPrettyHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    const/4 v3, 0x1

    add-int/2addr v9, v3

    move-object v8, v13

    const/4 v5, 0x0

    const/4 v7, 0x0

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 395
    :cond_8
    const-string v0, "\n};\n"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 337
    :cond_9
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 338
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
