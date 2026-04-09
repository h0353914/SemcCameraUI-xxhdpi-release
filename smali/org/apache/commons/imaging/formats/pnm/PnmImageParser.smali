.class public Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "PnmImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".pnm"

.field public static final PARAM_KEY_PNM_RAWBITS:Ljava/lang/String; = "PNM_RAWBITS"

.field public static final PARAM_VALUE_PNM_RAWBITS_NO:Ljava/lang/String; = "NO"

.field public static final PARAM_VALUE_PNM_RAWBITS_YES:Ljava/lang/String; = "YES"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, ".pbm"

    const-string v1, ".pgm"

    const-string v2, ".ppm"

    const-string v3, ".pnm"

    const-string v4, ".pam"

    .line 49
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    .line 56
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private readHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/pnm/FileInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "Identifier1"

    const-string v0, "Not a Valid PNM File"

    .line 88
    invoke-static {p0, p1, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p0

    const-string v0, "Identifier2"

    const-string v1, "Not a Valid PNM File"

    .line 89
    invoke-static {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    const/16 v1, 0x50

    if-eq p0, v1, :cond_0

    .line 92
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PNM file has invalid prefix byte 1"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x36

    const/16 v1, 0x33

    const/16 v2, 0x35

    const/16 v3, 0x32

    const/16 v4, 0x34

    const/16 v5, 0x31

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v0, v5, :cond_10

    if-eq v0, v4, :cond_10

    if-eq v0, v3, :cond_10

    if-eq v0, v2, :cond_10

    if-eq v0, v1, :cond_10

    if-ne v0, p1, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 p1, 0x37

    if-ne v0, p1, :cond_f

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readLine()Ljava/lang/String;

    const/4 v0, -0x1

    move v9, v0

    move v10, v9

    move v11, v10

    move v12, v11

    move v0, v7

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 141
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 142
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v13, 0x23

    if-ne v8, v13, :cond_2

    goto :goto_0

    .line 146
    :cond_2
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v13, " "

    invoke-direct {v8, v5, v13, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v13, "WIDTH"

    .line 148
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 150
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v9, v1

    move v1, v6

    goto :goto_0

    :cond_3
    const-string v13, "HEIGHT"

    .line 151
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 153
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v10, v2

    move v2, v6

    goto :goto_0

    :cond_4
    const-string v13, "DEPTH"

    .line 154
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 156
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v11, v3

    move v3, v6

    goto :goto_0

    :cond_5
    const-string v13, "MAXVAL"

    .line 157
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 159
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v12, v4

    move v4, v6

    goto :goto_0

    :cond_6
    const-string v13, "TUPLTYPE"

    .line 160
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 162
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v6

    goto :goto_0

    :cond_7
    const-string p0, "ENDHDR"

    .line 163
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_1

    .line 166
    :cond_8
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid PAM file header type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_1
    if-nez v1, :cond_a

    .line 171
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PAM header has no WIDTH"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-nez v2, :cond_b

    .line 173
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PAM header has no HEIGHT"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    if-nez v3, :cond_c

    .line 175
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PAM header has no DEPTH"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    if-nez v4, :cond_d

    .line 177
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PAM header has no MAXVAL"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    if-nez v0, :cond_e

    .line 179
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PAM header has no TUPLTYPE"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 182
    :cond_e
    new-instance p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;-><init>(IIIILjava/lang/String;)V

    return-object p0

    .line 184
    :cond_f
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PNM file has invalid prefix byte 2"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_10
    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v0, v5, :cond_11

    .line 108
    new-instance p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;

    invoke-direct {p0, v8, v9, v7}, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;-><init>(IIZ)V

    return-object p0

    :cond_11
    if-ne v0, v4, :cond_12

    .line 110
    new-instance p0, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;

    invoke-direct {p0, v8, v9, v6}, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;-><init>(IIZ)V

    return-object p0

    :cond_12
    if-ne v0, v3, :cond_13

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 113
    new-instance p1, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;

    invoke-direct {p1, v8, v9, v7, p0}, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;-><init>(IIZI)V

    return-object p1

    :cond_13
    if-ne v0, v2, :cond_14

    .line 115
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 116
    new-instance p1, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;

    invoke-direct {p1, v8, v9, v6, p0}, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;-><init>(IIZI)V

    return-object p1

    :cond_14
    if-ne v0, v1, :cond_15

    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 119
    new-instance p1, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;

    invoke-direct {p1, v8, v9, v7, p0}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;-><init>(IIZI)V

    return-object p1

    :cond_15
    if-ne v0, p1, :cond_16

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 122
    new-instance p1, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;

    invoke-direct {p1, v8, v9, v6, p0}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;-><init>(IIZI)V

    return-object p1

    .line 124
    :cond_16
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PNM file has invalid header."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pnm/FileInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->readHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/pnm/FileInfo;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
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
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "pnm.dumpImageFile"

    .line 270
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p2, ""

    .line 277
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p0, ""

    .line 279
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 0

    .line 72
    sget-object p0, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object p0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 2

    const/4 p0, 0x5

    .line 77
    new-array p0, p0, [Lorg/apache/commons/imaging/ImageFormat;

    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->PNM:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v1, 0x3

    aput-object v0, p0, v1

    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->PAM:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v1, 0x4

    aput-object v0, p0, v1

    return-object p0
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 5
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

    .line 290
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 292
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->readHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/pnm/FileInfo;

    move-result-object p0

    .line 294
    iget v1, p0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->width:I

    .line 295
    iget v2, p0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->height:I

    .line 297
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->hasAlpha()Z

    move-result v3

    .line 298
    new-instance v4, Lorg/apache/commons/imaging/common/ImageBuilder;

    invoke-direct {v4, v1, v2, v3}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZ)V

    .line 300
    invoke-virtual {p0, v4, p1}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->readImage(Lorg/apache/commons/imaging/common/ImageBuilder;Ljava/io/InputStream;)V

    .line 302
    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
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

    const-string p0, ".pnm"

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

    .line 230
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->readHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pnm/FileInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PNM: Couldn\'t read Header"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 238
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getBitDepth()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getNumComponents()I

    move-result v2

    mul-int v4, v1, v2

    .line 239
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getImageType()Lorg/apache/commons/imaging/ImageFormat;

    move-result-object v6

    .line 240
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getImageTypeDescription()Ljava/lang/String;

    move-result-object v7

    .line 241
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getMIMEType()Ljava/lang/String;

    move-result-object v9

    .line 248
    iget v1, v0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->width:I

    int-to-double v1, v1

    const-wide/high16 v10, 0x4052000000000000L    # 72.0

    div-double/2addr v1, v10

    double-to-float v14, v1

    .line 250
    iget v1, v0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->height:I

    int-to-double v1, v1

    div-double/2addr v1, v10

    double-to-float v12, v1

    .line 252
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getImageTypeDescription()Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->hasAlpha()Z

    move-result v17

    .line 257
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;

    move-result-object v19

    .line 258
    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 260
    new-instance v1, Lorg/apache/commons/imaging/ImageInfo;

    iget v8, v0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->height:I

    const/4 v10, 0x1

    const/16 v11, 0x48

    const/16 v13, 0x48

    iget v15, v0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->width:I

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v20}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v1
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

    .line 212
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->readHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pnm/FileInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 215
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PNM: Couldn\'t read Header"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 218
    :cond_0
    new-instance p1, Ljava/awt/Dimension;

    iget p2, p0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->width:I

    iget p0, p0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->height:I

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

    const-string p0, "Pbm-Custom"

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

    .line 315
    new-instance p0, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {p0}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_4

    const-string v2, "PNM_RAWBITS"

    .line 318
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "NO"

    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string v2, "FORMAT"

    .line 325
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 327
    sget-object v3, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 328
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/PbmWriter;

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/pnm/PbmWriter;-><init>(Z)V

    goto :goto_0

    .line 329
    :cond_1
    sget-object v3, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 330
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/PgmWriter;

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/pnm/PgmWriter;-><init>(Z)V

    goto :goto_0

    .line 331
    :cond_2
    sget-object v3, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 332
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/PpmWriter;

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/pnm/PpmWriter;-><init>(Z)V

    goto :goto_0

    .line 333
    :cond_3
    sget-object v3, Lorg/apache/commons/imaging/ImageFormats;->PAM:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 334
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/PamWriter;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/pnm/PamWriter;-><init>()V

    :cond_4
    :goto_0
    if-nez v0, :cond_6

    if-eqz p0, :cond_5

    .line 341
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/PamWriter;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/pnm/PamWriter;-><init>()V

    goto :goto_1

    .line 343
    :cond_5
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/PpmWriter;

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/pnm/PpmWriter;-><init>(Z)V

    :cond_6
    :goto_1
    if-eqz p3, :cond_7

    .line 349
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_2

    .line 351
    :cond_7
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :goto_2
    const-string p3, "FORMAT"

    .line 355
    invoke-interface {p0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    const-string p3, "FORMAT"

    .line 356
    invoke-interface {p0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_8
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9

    .line 360
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 361
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

    .line 364
    :cond_9
    invoke-interface {v0, p1, p2, p0}, Lorg/apache/commons/imaging/formats/pnm/PnmWriter;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V

    return-void
.end method
