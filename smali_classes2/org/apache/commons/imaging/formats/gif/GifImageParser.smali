.class public Lorg/apache/commons/imaging/formats/gif/GifImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "GifImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final APPLICATION_EXTENSION_LABEL:I = 0xff

.field private static final COMMENT_EXTENSION:I = 0xfe

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".gif"

.field private static final EXTENSION_CODE:I = 0x21

.field private static final GIF_HEADER_SIGNATURE:[B

.field private static final GRAPHIC_CONTROL_EXTENSION:I = 0x21f9

.field private static final IMAGE_SEPARATOR:I = 0x2c

.field private static final INTERLACE_FLAG_MASK:I = 0x40

.field private static final LOCAL_COLOR_TABLE_FLAG_MASK:I = 0x80

.field private static final PLAIN_TEXT_EXTENSION:I = 0x1

.field private static final SORT_FLAG_MASK:I = 0x20

.field private static final TERMINATOR_BYTE:I = 0x3b

.field private static final XMP_APPLICATION_ID_AND_AUTH_CODE:[B

.field private static final XMP_COMPLETE_CODE:I = 0x21ff

.field private static final XMP_EXTENSION:I = 0xff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-string v0, ".gif"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x3

    .line 56
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->GIF_HEADER_SIGNATURE:[B

    const/16 v0, 0xb

    .line 70
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    return-void

    :array_0
    .array-data 1
        0x47t
        0x49t
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x58t
        0x4dt
        0x50t
        0x20t
        0x44t
        0x61t
        0x74t
        0x61t
        0x58t
        0x4dt
        0x50t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    .line 85
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private convertColorTableSize(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x2

    .line 415
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->simplePow(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    return p0
.end method

.method private findBlock(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/GifBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/gif/GifBlock;",
            ">;I)",
            "Lorg/apache/commons/imaging/formats/gif/GifBlock;"
        }
    .end annotation

    .line 425
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/formats/gif/GifBlock;

    .line 426
    iget v0, p1, Lorg/apache/commons/imaging/formats/gif/GifBlock;->blockCode:I

    if-ne v0, p2, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getColorTable([B)[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 611
    array-length p0, p1

    rem-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_1

    .line 615
    array-length p0, p1

    div-int/lit8 p0, p0, 0x3

    .line 617
    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    mul-int/lit8 v2, v1, 0x3

    .line 620
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    .line 621
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v2, v2, 0x2

    .line 622
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v3, v3, 0x10

    const/high16 v5, -0x1000000

    or-int/2addr v3, v5

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 627
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 612
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad Color Table Length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getComments(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/gif/GifBlock;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 510
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/gif/GifBlock;

    .line 511
    iget v1, v0, Lorg/apache/commons/imaging/formats/gif/GifBlock;->blockCode:I

    const/16 v2, 0x21fe

    if-ne v1, v2, :cond_0

    .line 512
    check-cast v0, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;->appendSubBlocks()[B

    move-result-object v0

    .line 513
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private readBlocks(Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;Ljava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;",
            "Ljava/io/InputStream;",
            "Z",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/gif/GifBlock;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v1, -0x1

    if-eq v3, v1, :cond_9

    if-eqz v3, :cond_0

    const/16 v1, 0x21

    if-eq v3, v1, :cond_3

    const/16 v1, 0x2c

    if-eq v3, v1, :cond_2

    const/16 p0, 0x3b

    if-ne v3, p0, :cond_1

    return-object v0

    .line 328
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "GIF: unknown code: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .line 251
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readImageDescriptor(Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;ILjava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;

    move-result-object v1

    .line 253
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_3
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v2, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, v1, 0xff

    or-int/2addr v2, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    const/16 v3, 0xf9

    if-eq v1, v3, :cond_7

    const/16 v3, 0xfe

    if-eq v1, v3, :cond_8

    const/16 v3, 0xff

    if-eq v1, v3, :cond_5

    if-eqz p4, :cond_4

    .line 308
    const-string v1, "Unknown block"

    invoke-virtual {p4, v1, v2}, Lorg/apache/commons/imaging/FormatCompliance;->addComment(Ljava/lang/String;I)V

    .line 312
    :cond_4
    invoke-direct {p0, p2, v2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    move-result-object v1

    .line 314
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    :cond_5
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readSubBlock(Ljava/io/InputStream;)[B

    move-result-object v1

    if-eqz p4, :cond_6

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown Application Extension ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    const-string v5, "US-ASCII"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3, v2}, Lorg/apache/commons/imaging/FormatCompliance;->addComment(Ljava/lang/String;I)V

    :cond_6
    if-eqz v1, :cond_0

    .line 297
    array-length v3, v1

    if-lez v3, :cond_0

    .line 298
    invoke-direct {p0, p2, v2, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I[B)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    move-result-object v1

    .line 300
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 267
    :cond_7
    invoke-direct {p0, v2, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGraphicControlExtension(ILjava/io/InputStream;)Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;

    move-result-object v1

    .line 269
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 274
    :cond_8
    invoke-direct {p0, p2, v2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    move-result-object v1

    .line 276
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 248
    :cond_9
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "GIF: unexpected end of data"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readColorTable(Ljava/io/InputStream;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->convertColorTableSize(I)I

    move-result p0

    .line 421
    const-string p2, "block"

    const-string v0, "GIF: corrupt Color Table"

    invoke-static {p2, p1, p0, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/ImageContents;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/ImageContents;

    move-result-object p0

    return-object p0
.end method

.method private readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/ImageContents;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 445
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 447
    :try_start_1
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readHeader(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    move-result-object v3

    .line 450
    iget-boolean v4, v3, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->globalColorTableFlag:Z

    if-eqz v4, :cond_0

    .line 451
    iget-byte v1, v3, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->sizeOfGlobalColorTable:B

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readColorTable(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 455
    :cond_0
    invoke-direct {p0, v3, p1, p2, p3}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readBlocks(Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;Ljava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Ljava/util/List;

    move-result-object p0

    .line 458
    new-instance p2, Lorg/apache/commons/imaging/formats/gif/ImageContents;

    invoke-direct {p2, v3, v1, p0}, Lorg/apache/commons/imaging/formats/gif/ImageContents;-><init>(Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;[BLjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object p1, p0, v2

    invoke-static {v0, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p2

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v1, p1, v2

    invoke-static {v2, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method private readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I[B)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    move-result-object p0

    return-object p0
.end method

.method private readGenericGIFBlock(Ljava/io/InputStream;I[B)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    .line 224
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readSubBlock(Ljava/io/InputStream;)[B

    move-result-object p3

    .line 229
    array-length v1, p3

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 235
    new-instance p0, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    invoke-direct {p0, p2, v0}, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;-><init>(ILjava/util/List;)V

    return-object p0

    .line 232
    :cond_1
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private readGraphicControlExtension(ILjava/io/InputStream;)Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    const-string v0, "block_size"

    const-string v1, "GIF: corrupt GraphicControlExt"

    invoke-static {v0, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 193
    const-string v0, "packed fields"

    invoke-static {v0, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    and-int/lit8 v0, v4, 0x1c

    shr-int/lit8 v5, v0, 0x2

    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    .line 199
    const-string v0, "delay in milliseconds"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-static {v0, p2, v1, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    .line 200
    const-string p0, "transparent color index"

    invoke-static {p0, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p0

    and-int/lit16 v8, p0, 0xff

    .line 202
    const-string p0, "block terminator"

    invoke-static {p0, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 204
    new-instance p0, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;-><init>(IIIZII)V

    return-object p0
.end method

.method private readHeader(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 112
    const-string v2, "identifier1"

    const-string v3, "Not a Valid GIF File"

    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    .line 113
    const-string v2, "identifier2"

    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    .line 114
    const-string v2, "identifier3"

    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v7

    .line 116
    const-string v2, "version1"

    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v8

    .line 117
    const-string v2, "version2"

    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v9

    .line 118
    const-string v2, "version3"

    invoke-static {v2, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v10

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 121
    sget-object v11, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->GIF_HEADER_SIGNATURE:[B

    const/4 v12, 0x3

    new-array v12, v12, [B

    aput-byte v5, v12, v2

    aput-byte v6, v12, v4

    const/4 v13, 0x2

    aput-byte v7, v12, v13

    const-string v13, "Signature"

    invoke-virtual {v1, v13, v11, v12}, Lorg/apache/commons/imaging/FormatCompliance;->compareBytes(Ljava/lang/String;[B[B)Z

    const/16 v11, 0x38

    .line 123
    const-string v12, "version"

    invoke-virtual {v1, v12, v11, v8}, Lorg/apache/commons/imaging/FormatCompliance;->compare(Ljava/lang/String;II)Z

    const/16 v11, 0x37

    const/16 v13, 0x39

    .line 124
    filled-new-array {v11, v13}, [I

    move-result-object v11

    invoke-virtual {v1, v12, v11, v9}, Lorg/apache/commons/imaging/FormatCompliance;->compare(Ljava/lang/String;[II)Z

    const/16 v11, 0x61

    .line 126
    invoke-virtual {v1, v12, v11, v10}, Lorg/apache/commons/imaging/FormatCompliance;->compare(Ljava/lang/String;II)Z

    .line 129
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v11

    if-eqz v11, :cond_1

    shl-int/lit8 v11, v5, 0x10

    shl-int/lit8 v12, v6, 0x8

    or-int/2addr v11, v12

    or-int/2addr v11, v7

    .line 130
    const-string v12, "identifier: "

    invoke-static {v12, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    shl-int/lit8 v11, v8, 0x10

    shl-int/lit8 v12, v9, 0x8

    or-int/2addr v11, v12

    or-int/2addr v11, v10

    .line 132
    const-string v12, "version: "

    invoke-static {v12, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    .line 136
    :cond_1
    const-string v11, "Logical Screen Width"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-static {v11, v0, v3, v12}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v11

    .line 137
    const-string v12, "Logical Screen Height"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-static {v12, v0, v3, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v12

    if-eqz v1, :cond_2

    .line 140
    const-string v13, "Width"

    const v14, 0x7fffffff

    invoke-virtual {v1, v13, v4, v14, v11}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 142
    const-string v13, "Height"

    invoke-virtual {v1, v13, v4, v14, v12}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 146
    :cond_2
    const-string v13, "Packed Fields"

    invoke-static {v13, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v13

    .line 148
    const-string v14, "Background Color Index"

    invoke-static {v14, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v15

    .line 150
    const-string v4, "Pixel Aspect Ratio"

    invoke-static {v4, v0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    .line 153
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    const-string v3, "PackedFields bits"

    invoke-static {v3, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printByteBits(Ljava/lang/String;B)V

    :cond_3
    and-int/lit16 v3, v13, 0x80

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    move v3, v2

    .line 158
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 159
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move/from16 p1, v0

    const-string v0, "GlobalColorTableFlag: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move/from16 p1, v0

    :goto_1
    shr-int/lit8 v0, v13, 0x4

    and-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    .line 162
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 163
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move/from16 v18, v12

    const-string v12, "ColorResolution: "

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move/from16 v18, v12

    :goto_2
    and-int/lit8 v2, v13, 0x8

    if-lez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    .line 166
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 167
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    move/from16 v19, v0

    const-string v0, "SortFlag: "

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move/from16 v19, v0

    :goto_4
    and-int/lit8 v0, v13, 0x7

    int-to-byte v0, v0

    .line 170
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 171
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    move/from16 v20, v2

    const-string v2, "SizeofGlobalColorTable: "

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    move/from16 v20, v2

    :goto_5
    if-eqz v1, :cond_a

    if-eqz v3, :cond_a

    const/4 v2, -0x1

    if-eq v15, v2, :cond_a

    move-object/from16 v2, p0

    .line 177
    invoke-direct {v2, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->convertColorTableSize(I)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v14, v4, v2, v15}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 183
    :cond_a
    new-instance v1, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    move-object v4, v1

    move/from16 v12, v18

    move v14, v15

    move/from16 v15, p1

    move/from16 v16, v3

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v0

    invoke-direct/range {v4 .. v19}, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;-><init>(BBBBBBIIBBBZBZB)V

    return-object v1
.end method

.method private readImageDescriptor(Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;ILjava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 337
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    const-string v5, "Image Left Position"

    const-string v6, "Not a Valid GIF File"

    invoke-static {v5, v2, v6, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    .line 338
    const-string v4, "Image Top Position"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v4, v2, v6, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v10

    .line 339
    const-string v4, "Image Width"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v4, v2, v6, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v11

    .line 340
    const-string v4, "Image Height"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v4, v2, v6, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v12

    .line 341
    const-string v4, "Packed Fields"

    invoke-static {v4, v2, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v13

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 344
    const-string v6, "Width"

    iget v7, v1, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->logicalScreenWidth:I

    invoke-virtual {v3, v6, v5, v7, v11}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 345
    const-string v6, "Height"

    iget v7, v1, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->logicalScreenHeight:I

    invoke-virtual {v3, v6, v5, v7, v12}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 346
    iget v6, v1, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->logicalScreenWidth:I

    sub-int/2addr v6, v11

    const-string v7, "Left Position"

    invoke-virtual {v3, v7, v4, v6, v9}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 347
    iget v1, v1, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->logicalScreenHeight:I

    sub-int/2addr v1, v12

    const-string v6, "Top Position"

    invoke-virtual {v3, v6, v4, v1, v10}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    .line 350
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    const-string v1, "PackedFields bits"

    invoke-static {v1, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printByteBits(Ljava/lang/String;B)V

    :cond_1
    shr-int/lit8 v1, v13, 0x7

    and-int/2addr v1, v5

    if-lez v1, :cond_2

    move v14, v5

    goto :goto_0

    :cond_2
    move v14, v4

    .line 355
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 356
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "LocalColorTableFlag: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    shr-int/lit8 v1, v13, 0x6

    and-int/2addr v1, v5

    if-lez v1, :cond_4

    move v15, v5

    goto :goto_1

    :cond_4
    move v15, v4

    .line 359
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 360
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Interlace Flag: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    shr-int/lit8 v1, v13, 0x5

    and-int/2addr v1, v5

    if-lez v1, :cond_6

    move v4, v5

    .line 363
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 364
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Sort Flag: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    and-int/lit8 v1, v13, 0x7

    int-to-byte v1, v1

    .line 368
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 369
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SizeofLocalColorTable: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    if-eqz v14, :cond_9

    .line 374
    invoke-direct {v0, v2, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readColorTable(Ljava/io/InputStream;I)[B

    move-result-object v5

    move-object/from16 v18, v5

    goto :goto_2

    :cond_9
    const/16 v18, 0x0

    :goto_2
    const/4 v5, -0x1

    if-nez p4, :cond_a

    .line 379
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 381
    invoke-direct {v0, v2, v5}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;->appendSubBlocks()[B

    move-result-object v0

    .line 383
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    mul-int v0, v11, v12

    .line 386
    new-instance v5, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v5, v3, v6}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;-><init>(ILjava/nio/ByteOrder;)V

    .line 388
    invoke-virtual {v5, v2, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->decompress(Ljava/io/InputStream;I)[B

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_3

    .line 390
    :cond_a
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 391
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 392
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v3, "LZWMinimumCodeSize: "

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 395
    :cond_b
    invoke-direct {v0, v2, v5}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    const/16 v19, 0x0

    .line 398
    :goto_3
    new-instance v0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;

    move-object v7, v0

    move/from16 v8, p2

    move/from16 v16, v4

    move/from16 v17, v1

    invoke-direct/range {v7 .. v19}, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;-><init>(IIIIIBZZZB[B[B)V

    return-object v0
.end method

.method private readSubBlock(Ljava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    const-string p0, "block_size"

    const-string v0, "GIF: corrupt block"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    .line 211
    const-string v1, "block"

    invoke-static {v1, p1, p0, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private simplePow(II)I
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    mul-int/2addr p0, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method private writeAsSubBlocks(Ljava/io/OutputStream;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    .line 748
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 749
    array-length v1, p2

    sub-int/2addr v1, v0

    const/16 v2, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 750
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 751
    invoke-virtual {p1, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v0, v1

    goto :goto_0

    .line 754
    :cond_0
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
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

    .line 586
    const-string v0, "gif.dumpImageFile"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 593
    :cond_0
    const-string v2, ""

    invoke-virtual {v0, p1, v2}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 595
    invoke-direct {p0, p2, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/ImageContents;

    move-result-object p2

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "gif.blocks: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    :goto_0
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 599
    iget-object v0, p2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/gif/GifBlock;

    .line 600
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\t"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v0, v0, Lorg/apache/commons/imaging/formats/gif/GifBlock;->blockCode:I

    const/4 v4, 0x4

    invoke-virtual {p0, p1, v3, v0, v4}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->debugNumber(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 0

    .line 100
    sget-object p0, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object p0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 2

    const/4 p0, 0x1

    .line 105
    new-array p0, p0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/imaging/ImageFormats;->GIF:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v1, p0, v0

    return-object p0
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 17
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

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    .line 647
    invoke-direct {v0, v2, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/ImageContents;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 653
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    if-eqz v3, :cond_d

    .line 658
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    const/16 v4, 0x2c

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->findBlock(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/GifBlock;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;

    if-eqz v3, :cond_c

    .line 663
    iget-object v4, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    const/16 v5, 0x21f9

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->findBlock(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/GifBlock;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;

    .line 669
    iget v5, v3, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageWidth:I

    .line 670
    iget v6, v3, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageHeight:I

    const/4 v7, 0x1

    if-eqz v4, :cond_0

    .line 673
    iget-boolean v8, v4, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;->transparency:Z

    if-eqz v8, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v1

    .line 677
    :goto_0
    new-instance v9, Lorg/apache/commons/imaging/common/ImageBuilder;

    invoke-direct {v9, v5, v6, v8}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZ)V

    .line 680
    iget-object v10, v3, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->localColorTable:[B

    if-eqz v10, :cond_1

    .line 681
    iget-object v2, v3, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->localColorTable:[B

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getColorTable([B)[I

    move-result-object v0

    goto :goto_1

    .line 682
    :cond_1
    iget-object v10, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->globalColorTable:[B

    if-eqz v10, :cond_b

    .line 683
    iget-object v2, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->globalColorTable:[B

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getColorTable([B)[I

    move-result-object v0

    :goto_1
    if-eqz v4, :cond_2

    if-eqz v8, :cond_2

    .line 690
    iget v2, v4, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;->transparentColorIndex:I

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    :goto_2
    add-int/lit8 v4, v6, 0x7

    .line 695
    div-int/lit8 v4, v4, 0x8

    add-int/lit8 v8, v6, 0x3

    .line 696
    div-int/lit8 v8, v8, 0x8

    add-int/lit8 v10, v6, 0x1

    .line 697
    div-int/lit8 v10, v10, 0x4

    .line 698
    div-int/lit8 v11, v6, 0x2

    move v12, v1

    move v13, v12

    :goto_3
    if-ge v12, v6, :cond_a

    .line 702
    iget-boolean v14, v3, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->interlaceFlag:Z

    if-eqz v14, :cond_7

    if-ge v12, v4, :cond_3

    mul-int/lit8 v14, v12, 0x8

    goto :goto_4

    :cond_3
    sub-int v14, v12, v4

    if-ge v14, v8, :cond_4

    mul-int/lit8 v14, v14, 0x8

    add-int/lit8 v14, v14, 0x4

    goto :goto_4

    :cond_4
    sub-int/2addr v14, v8

    if-ge v14, v10, :cond_5

    mul-int/lit8 v14, v14, 0x4

    add-int/lit8 v14, v14, 0x2

    goto :goto_4

    :cond_5
    sub-int/2addr v14, v10

    if-ge v14, v11, :cond_6

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v7

    goto :goto_4

    .line 719
    :cond_6
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Gif: Strange Row"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v14, v12

    :goto_4
    move v15, v1

    :goto_5
    if-ge v15, v5, :cond_9

    .line 729
    iget-object v1, v3, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageData:[B

    add-int/lit8 v16, v13, 0x1

    aget-byte v1, v1, v13

    and-int/lit16 v1, v1, 0xff

    .line 730
    aget v13, v0, v1

    if-ne v2, v1, :cond_8

    const/4 v13, 0x0

    .line 736
    :cond_8
    invoke-virtual {v9, v15, v14, v13}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v16

    const/4 v1, 0x0

    goto :goto_5

    :cond_9
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x0

    goto :goto_3

    .line 741
    :cond_a
    invoke-virtual {v9}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0

    .line 685
    :cond_b
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Gif: No Color Table"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_c
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "GIF: Couldn\'t read Image Descriptor"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_d
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "GIF: Couldn\'t read Header"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_e
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "GIF: Couldn\'t read blocks"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 0

    .line 95
    const-string p0, ".gif"

    return-object p0
.end method

.method public getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    new-instance v0, Lorg/apache/commons/imaging/FormatCompliance;

    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/FormatCompliance;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 639
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/ImageContents;

    return-object v0
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
    .locals 25
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

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    .line 523
    invoke-direct {v0, v2, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/ImageContents;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 529
    iget-object v3, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    if-eqz v3, :cond_2

    .line 534
    iget-object v4, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    const/16 v5, 0x2c

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->findBlock(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/GifBlock;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;

    if-eqz v4, :cond_1

    .line 540
    iget-object v5, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    const/16 v6, 0x21f9

    invoke-direct {v0, v5, v6}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->findBlock(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/GifBlock;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;

    .line 545
    iget v12, v4, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageHeight:I

    .line 546
    iget v10, v4, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageWidth:I

    .line 548
    iget-object v6, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    invoke-direct {v0, v6}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getComments(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 549
    iget-byte v0, v3, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->colorResolution:B

    const/4 v3, 0x1

    add-int/lit8 v8, v0, 0x1

    .line 550
    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->GIF:Lorg/apache/commons/imaging/ImageFormats;

    .line 556
    iget-boolean v4, v4, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->interlaceFlag:Z

    int-to-double v6, v10

    const-wide/high16 v13, 0x4052000000000000L    # 72.0

    div-double/2addr v6, v13

    double-to-float v7, v6

    move/from16 v20, v4

    int-to-double v3, v12

    div-double/2addr v3, v13

    double-to-float v3, v3

    .line 563
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Gif "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    iget-byte v6, v6, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->version1:B

    int-to-char v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    iget-byte v6, v6, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->version2:B

    int-to-char v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lorg/apache/commons/imaging/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    iget-byte v2, v2, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->version3:B

    int-to-char v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_0

    .line 568
    iget-boolean v4, v5, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;->transparency:Z

    if-eqz v4, :cond_0

    const/16 v21, 0x1

    goto :goto_0

    :cond_0
    move/from16 v21, v1

    .line 573
    :goto_0
    sget-object v23, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 574
    sget-object v24, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->LZW:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 576
    new-instance v1, Lorg/apache/commons/imaging/ImageInfo;

    move-object v6, v1

    const/16 v17, 0x48

    const/16 v22, 0x1

    const-string v11, "GIF Graphics Interchange Format"

    const-string v13, "image/gif"

    const/4 v14, -0x1

    const/16 v15, 0x48

    move v4, v7

    move-object v7, v2

    move v2, v10

    move-object v10, v0

    move/from16 v16, v3

    move/from16 v18, v4

    move/from16 v19, v2

    invoke-direct/range {v6 .. v24}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v1

    .line 537
    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "GIF: Couldn\'t read ImageDescriptor"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_2
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "GIF: Couldn\'t read Header"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_3
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "GIF: Couldn\'t read blocks"

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

    const/4 p2, 0x0

    .line 476
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/ImageContents;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 482
    iget-object p2, p1, Lorg/apache/commons/imaging/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    if-eqz p2, :cond_1

    .line 487
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    const/16 p2, 0x2c

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->findBlock(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/GifBlock;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;

    if-eqz p0, :cond_0

    .line 496
    new-instance p1, Ljava/awt/Dimension;

    iget p2, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageWidth:I

    iget p0, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageHeight:I

    invoke-direct {p1, p2, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object p1

    .line 490
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "GIF: Couldn\'t read ImageDescriptor"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 484
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "GIF: Couldn\'t read Header"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 479
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "GIF: Couldn\'t read blocks"

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

    .line 90
    const-string p0, "Graphics Interchange Format"

    return-object p0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
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

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1022
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1025
    :try_start_1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readHeader(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    move-result-object v2

    .line 1027
    iget-boolean v3, v2, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->globalColorTableFlag:Z

    if-eqz v3, :cond_0

    .line 1028
    iget-byte v3, v2, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->sizeOfGlobalColorTable:B

    invoke-direct {p0, p1, v3}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readColorTable(Ljava/io/InputStream;I)[B

    .line 1031
    :cond_0
    invoke-direct {p0, v2, p1, p2, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readBlocks(Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;Ljava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Ljava/util/List;

    move-result-object p0

    .line 1033
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/gif/GifBlock;

    .line 1035
    iget v4, v3, Lorg/apache/commons/imaging/formats/gif/GifBlock;->blockCode:I

    const/16 v5, 0x21ff

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 1039
    :cond_1
    check-cast v3, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    .line 1041
    invoke-virtual {v3, p2}, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;->appendSubBlocks(Z)[B

    move-result-object v3

    .line 1042
    array-length v4, v3

    sget-object v5, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    array-length v6, v5

    if-ge v4, v6, :cond_2

    goto :goto_0

    .line 1046
    :cond_2
    array-length v4, v5

    invoke-static {v3, v1, v5, v1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->compareBytes([BI[BII)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v4, 0x100

    .line 1052
    new-array v5, v4, [B

    move v6, v1

    :goto_1
    const/16 v7, 0xff

    if-gt v6, v7, :cond_4

    rsub-int v7, v6, 0xff

    int-to-byte v7, v7

    .line 1054
    aput-byte v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1057
    :cond_4
    array-length v6, v3

    sget-object v7, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    array-length v8, v7

    add-int/2addr v8, v4

    if-ge v6, v8, :cond_5

    goto :goto_0

    .line 1061
    :cond_5
    array-length v6, v3

    sub-int/2addr v6, v4

    invoke-static {v3, v6, v5, v1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->compareBytes([BI[BII)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_6

    .line 1070
    :try_start_2
    new-instance v5, Ljava/lang/String;

    array-length v6, v7

    array-length v8, v3

    array-length v7, v7

    add-int/2addr v7, v4

    sub-int/2addr v8, v7

    const-string v4, "utf-8"

    invoke-direct {v5, v3, v6, v8, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1076
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1078
    :try_start_3
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "Invalid XMP Block in GIF."

    invoke-direct {v0, v2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1064
    :cond_6
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "XMP block in GIF missing magic trailer."

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1082
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ge p0, p2, :cond_8

    .line 1092
    new-array p0, p2, [Ljava/io/Closeable;

    aput-object p1, p0, v1

    invoke-static {v1, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v0

    .line 1085
    :cond_8
    :try_start_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-gt p0, p2, :cond_9

    .line 1089
    :try_start_5
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1092
    new-array v0, p2, [Ljava/io/Closeable;

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, p1

    move p1, p2

    goto :goto_3

    .line 1086
    :cond_9
    :try_start_6
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "More than one XMP Block in GIF."

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p0

    move-object v0, p1

    goto :goto_2

    :catchall_2
    move-exception p0

    :goto_2
    move p1, v1

    .line 1092
    :goto_3
    new-array p2, p2, [Ljava/io/Closeable;

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
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

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 761
    new-instance v2, Ljava/util/HashMap;

    move-object/from16 v3, p3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 763
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "VERBOSE"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 766
    const-string v5, "FORMAT"

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 767
    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 770
    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :cond_1
    const-string v4, "XMP_XML"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 775
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 776
    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 779
    :goto_0
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 784
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    .line 785
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    .line 787
    new-instance v6, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v6}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    invoke-virtual {v6, v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;)Z

    move-result v6

    const/16 v7, 0xff

    if-eqz v6, :cond_3

    move v8, v7

    goto :goto_1

    :cond_3
    const/16 v8, 0x100

    .line 791
    :goto_1
    new-instance v9, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v9}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    invoke-virtual {v9, v0, v8}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;

    move-result-object v9

    if-nez v9, :cond_4

    .line 796
    new-instance v9, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v9}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    invoke-virtual {v9, v0, v8}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeQuantizedRgbPalette(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/Palette;

    move-result-object v9

    if-eqz v3, :cond_5

    .line 798
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "quantizing"

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    .line 801
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "exact palette"

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    :goto_2
    if-eqz v9, :cond_17

    .line 807
    invoke-interface {v9}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v3

    add-int/2addr v3, v6

    .line 809
    new-instance v8, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v8, v1, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    const/16 v10, 0x47

    .line 812
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    const/16 v10, 0x49

    .line 813
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    const/16 v10, 0x46

    .line 814
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    const/16 v10, 0x38

    .line 816
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    const/16 v10, 0x39

    .line 817
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    const/16 v10, 0x61

    .line 818
    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    .line 822
    invoke-virtual {v8, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 823
    invoke-virtual {v8, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v10, 0x80

    const/4 v11, 0x7

    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-le v3, v10, :cond_6

    move v3, v11

    goto :goto_3

    :cond_6
    const/16 v10, 0x40

    if-le v3, v10, :cond_7

    const/4 v3, 0x6

    goto :goto_3

    :cond_7
    const/16 v10, 0x20

    if-le v3, v10, :cond_8

    const/4 v3, 0x5

    goto :goto_3

    :cond_8
    const/16 v10, 0x10

    if-le v3, v10, :cond_9

    move v3, v13

    goto :goto_3

    :cond_9
    const/16 v10, 0x8

    if-le v3, v10, :cond_a

    const/4 v3, 0x3

    goto :goto_3

    :cond_a
    if-le v3, v13, :cond_b

    move v3, v12

    goto :goto_3

    :cond_b
    if-le v3, v12, :cond_c

    move v3, v14

    goto :goto_3

    :cond_c
    move v3, v15

    :goto_3
    add-int/lit8 v10, v3, 0x1

    shl-int/2addr v14, v10

    int-to-byte v12, v3

    and-int/2addr v12, v11

    shl-int/2addr v12, v13

    .line 845
    invoke-virtual {v8, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 849
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 853
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v12, 0x21

    .line 862
    invoke-virtual {v8, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v11, -0x7

    .line 863
    invoke-virtual {v8, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 867
    invoke-virtual {v8, v13}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    int-to-byte v11, v6

    .line 869
    invoke-virtual {v8, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 870
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 871
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    if-eqz v6, :cond_d

    .line 872
    invoke-interface {v9}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v11

    goto :goto_4

    :cond_d
    move v11, v15

    :goto_4
    int-to-byte v11, v11

    invoke-virtual {v8, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 875
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    if-eqz v5, :cond_f

    .line 879
    invoke-virtual {v8, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 880
    invoke-virtual {v8, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 882
    sget-object v11, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    array-length v12, v11

    invoke-virtual {v8, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 883
    invoke-virtual {v8, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 885
    const-string v11, "utf-8"

    invoke-virtual {v5, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 886
    invoke-virtual {v8, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    move v5, v15

    :goto_5
    if-gt v5, v7, :cond_e

    rsub-int v11, v5, 0xff

    .line 890
    invoke-virtual {v8, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 893
    :cond_e
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :cond_f
    const/16 v5, 0x2c

    .line 898
    invoke-virtual {v8, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 899
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 900
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 901
    invoke-virtual {v8, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 902
    invoke-virtual {v8, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/4 v5, 0x7

    and-int/2addr v3, v5

    const/16 v5, 0x80

    or-int/2addr v3, v5

    .line 925
    invoke-virtual {v8, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    move v3, v15

    :goto_6
    if-ge v3, v14, :cond_11

    .line 931
    invoke-interface {v9}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v5

    if-ge v3, v5, :cond_10

    .line 932
    invoke-interface {v9, v3}, Lorg/apache/commons/imaging/palette/Palette;->getEntry(I)I

    move-result v5

    shr-int/lit8 v11, v5, 0x10

    and-int/2addr v11, v7

    shr-int/lit8 v12, v5, 0x8

    and-int/2addr v12, v7

    and-int/2addr v5, v7

    .line 938
    invoke-virtual {v8, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 939
    invoke-virtual {v8, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 940
    invoke-virtual {v8, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_7

    .line 942
    :cond_10
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 943
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 944
    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_11
    const/4 v3, 0x2

    if-ge v10, v3, :cond_12

    move v12, v3

    goto :goto_8

    :cond_12
    move v12, v10

    .line 963
    :goto_8
    invoke-virtual {v8, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 965
    new-instance v3, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, v12, v5, v15}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;-><init>(ILjava/nio/ByteOrder;Z)V

    mul-int v5, v2, v4

    .line 969
    new-array v5, v5, [B

    move v10, v15

    :goto_9
    if-ge v10, v4, :cond_16

    move v11, v15

    :goto_a
    if-ge v11, v2, :cond_15

    .line 972
    invoke-virtual {v0, v11, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v12

    const v13, 0xffffff

    and-int/2addr v13, v12

    if-eqz v6, :cond_14

    shr-int/lit8 v12, v12, 0x18

    and-int/2addr v12, v7

    if-ge v12, v7, :cond_13

    .line 980
    invoke-interface {v9}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v12

    goto :goto_b

    .line 982
    :cond_13
    invoke-interface {v9, v13}, Lorg/apache/commons/imaging/palette/Palette;->getPaletteIndex(I)I

    move-result v12

    goto :goto_b

    .line 985
    :cond_14
    invoke-interface {v9, v13}, Lorg/apache/commons/imaging/palette/Palette;->getPaletteIndex(I)I

    move-result v12

    :goto_b
    mul-int v13, v10, v2

    add-int/2addr v13, v11

    int-to-byte v12, v12

    .line 988
    aput-byte v12, v5, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 992
    :cond_16
    invoke-virtual {v3, v5}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->compress([B)[B

    move-result-object v0

    move-object/from16 v2, p0

    .line 993
    invoke-direct {v2, v8, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->writeAsSubBlocks(Ljava/io/OutputStream;[B)V

    const/16 v0, 0x3b

    .line 999
    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 1001
    invoke-virtual {v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->close()V

    .line 1002
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V

    return-void

    .line 805
    :cond_17
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "Gif: can\'t write images with more than 256 colors"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 780
    :cond_18
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 781
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
