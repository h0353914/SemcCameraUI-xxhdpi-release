.class public Lorg/apache/commons/imaging/formats/png/PngImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "PngImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".png"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".png"

    .line 70
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/png/PngImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    return-void
.end method

.method private filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;",
            ">;",
            "Lorg/apache/commons/imaging/formats/png/ChunkType;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 307
    iget v1, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->chunkType:I

    iget v2, p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v1, v2, :cond_0

    .line 308
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static getChunkTypeName(I)Ljava/lang/String;
    .locals 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0x18

    const/16 v2, 0xff

    and-int/2addr v1, v2

    int-to-char v1, v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x10

    and-int/2addr v1, v2

    int-to-char v1, v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x8

    and-int/2addr v1, v2

    int-to-char v1, v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p0, 0x0

    and-int/2addr p0, v2

    int-to-char p0, p0

    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTransparencyFilter(Lorg/apache/commons/imaging/formats/png/PngColorType;Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;)Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    sget-object p0, Lorg/apache/commons/imaging/formats/png/PngImageParser$1;->$SwitchMap$org$apache$commons$imaging$formats$png$PngColorType:[I

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/png/PngColorType;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_0

    .line 331
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Simple Transparency not compatible with ColorType: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 327
    :pswitch_0
    new-instance p0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterIndexedColor;

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterIndexedColor;-><init>([B)V

    return-object p0

    .line 325
    :pswitch_1
    new-instance p0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterTrueColor;

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterTrueColor;-><init>([B)V

    return-object p0

    .line 323
    :pswitch_2
    new-instance p0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterGrayscale;

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterGrayscale;-><init>([B)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private keepChunk(I[Lorg/apache/commons/imaging/formats/png/ChunkType;)Z
    .locals 4

    const/4 p0, 0x1

    if-nez p2, :cond_0

    return p0

    .line 139
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 140
    iget v3, v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v3, p1, :cond_1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private readChunks(Ljava/io/InputStream;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "[",
            "Lorg/apache/commons/imaging/formats/png/ChunkType;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const-string v1, "Length"

    const-string v2, "Not a Valid PNG File"

    .line 156
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    const-string v2, "ChunkType"

    const-string v3, "Not a Valid PNG File"

    .line 157
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v2, p1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    .line 159
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getDebug()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_2

    const-string v3, "ChunkType"

    .line 160
    invoke-static {v3, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    const-string v3, "Length"

    .line 161
    invoke-virtual {p0, v3, v1, v4}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 163
    :cond_2
    invoke-direct {p0, v2, p2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->keepChunk(I[Lorg/apache/commons/imaging/formats/png/ChunkType;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    const-string v5, "Chunk Data"

    const-string v6, "Not a Valid PNG File: Couldn\'t read Chunk Data."

    .line 167
    invoke-static {v5, p1, v1, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v5

    goto :goto_0

    :cond_3
    int-to-long v6, v1

    const-string v8, "Not a Valid PNG File"

    .line 170
    invoke-static {p1, v6, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 173
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getDebug()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    const-string v6, "bytes"

    .line 175
    array-length v7, v5

    invoke-virtual {p0, v6, v7, v4}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->debugNumber(Ljava/lang/String;II)V

    :cond_4
    const-string v4, "CRC"

    const-string v6, "Not a Valid PNG File"

    .line 179
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-static {v4, p1, v6, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    if-eqz v3, :cond_e

    .line 182
    sget-object v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->iCCP:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v3, v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v2, v3, :cond_5

    .line 183
    new-instance v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;-><init>(III[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 184
    :cond_5
    sget-object v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v3, v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v2, v3, :cond_6

    .line 185
    new-instance v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;-><init>(III[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 186
    :cond_6
    sget-object v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v3, v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v2, v3, :cond_7

    .line 187
    new-instance v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;-><init>(III[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 188
    :cond_7
    sget-object v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v3, v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v2, v3, :cond_8

    .line 189
    new-instance v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;-><init>(III[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    :cond_8
    sget-object v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v3, v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v2, v3, :cond_9

    .line 191
    new-instance v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;-><init>(III[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 192
    :cond_9
    sget-object v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->pHYs:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v3, v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v2, v3, :cond_a

    .line 193
    new-instance v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;-><init>(III[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    :cond_a
    sget-object v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->IDAT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v3, v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v2, v3, :cond_b

    .line 195
    new-instance v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIdat;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIdat;-><init>(III[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 196
    :cond_b
    sget-object v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->gAMA:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v3, v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v2, v3, :cond_c

    .line 197
    new-instance v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;-><init>(III[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 198
    :cond_c
    sget-object v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v3, v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v2, v3, :cond_d

    .line 199
    new-instance v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;-><init>(III[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 201
    :cond_d
    new-instance v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;-><init>(III[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz p3, :cond_e

    return-object v0

    .line 209
    :cond_e
    sget-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->IEND:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v1, v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v2, v1, :cond_0

    return-object v0
.end method

.method private readChunks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "[",
            "Lorg/apache/commons/imaging/formats/png/ChunkType;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;",
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

    const/4 v1, 0x0

    .line 231
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 233
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readSignature(Ljava/io/InputStream;)V

    .line 235
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Ljava/io/InputStream;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    new-array p2, v0, [Ljava/io/Closeable;

    aput-object p1, p2, v1

    invoke-static {v0, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    new-array p2, v0, [Ljava/io/Closeable;

    aput-object p1, p2, v1

    invoke-static {v1, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, ""

    .line 663
    invoke-virtual {v0, p1, v2}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 665
    invoke-direct {p0, p2, v0, v1}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object p2

    .line 666
    sget-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {p0, p2, v0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v0

    .line 667
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 668
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getDebug()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 669
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "PNG contains more than one Header"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return v1

    .line 673
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Color: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/PngColorType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "chunks: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 678
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    .line 682
    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_4

    .line 683
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->chunkType:I

    invoke-static {p1, v0, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-string p0, ""

    .line 687
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return v3
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 0

    .line 84
    sget-object p0, Lorg/apache/commons/imaging/formats/png/PngImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object p0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 2

    const/4 p0, 0x1

    .line 89
    new-array p0, p0, [Lorg/apache/commons/imaging/ImageFormat;

    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->PNG:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 20
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

    move-object/from16 v1, p2

    if-nez v1, :cond_0

    .line 474
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v1, v2

    :goto_0
    const-string v2, "VERBOSE"

    .line 476
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "VERBOSE"

    .line 477
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v2, 0x7

    .line 485
    new-array v2, v2, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    sget-object v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->IDAT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v6, v2, v3

    const/4 v3, 0x3

    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v6, v2, v3

    const/4 v3, 0x4

    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->iCCP:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v6, v2, v3

    const/4 v3, 0x5

    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->gAMA:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v6, v2, v3

    const/4 v3, 0x6

    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->sRGB:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v6, v2, v3

    move-object/from16 v3, p1

    invoke-direct {v0, v3, v2, v4}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 495
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_9

    .line 499
    :cond_2
    sget-object v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v3

    .line 500
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eq v6, v5, :cond_3

    .line 501
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PNG contains more than one Header"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_3
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;

    .line 506
    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {v0, v2, v6}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v6

    .line 507
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_4

    .line 508
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PNG contains more than one Palette"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    if-ne v7, v5, :cond_5

    .line 513
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;

    goto :goto_1

    :cond_5
    move-object v6, v8

    .line 518
    :goto_1
    sget-object v7, Lorg/apache/commons/imaging/formats/png/ChunkType;->IDAT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {v0, v2, v7}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v7

    .line 519
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 520
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PNG missing image data"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_6
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 524
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 525
    check-cast v10, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIdat;

    .line 526
    invoke-virtual {v10}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIdat;->getBytes()[B

    move-result-object v10

    .line 528
    invoke-virtual {v9, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2

    .line 531
    :cond_7
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 537
    sget-object v9, Lorg/apache/commons/imaging/formats/png/ChunkType;->tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {v0, v2, v9}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v9

    .line 538
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    .line 539
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 540
    iget-object v10, v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-direct {v0, v10, v9}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getTransparencyFilter(Lorg/apache/commons/imaging/formats/png/PngColorType;Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;)Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;

    move-result-object v9

    move-object/from16 v19, v9

    goto :goto_3

    :cond_8
    move-object/from16 v19, v8

    .line 546
    :goto_3
    sget-object v9, Lorg/apache/commons/imaging/formats/png/ChunkType;->sRGB:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {v0, v2, v9}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v9

    .line 547
    sget-object v10, Lorg/apache/commons/imaging/formats/png/ChunkType;->gAMA:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {v0, v2, v10}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v10

    .line 548
    sget-object v11, Lorg/apache/commons/imaging/formats/png/ChunkType;->iCCP:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {v0, v2, v11}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v2

    .line 549
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v5, :cond_9

    .line 550
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PNG: unexpected sRGB chunk"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_9
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v5, :cond_a

    .line 553
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PNG: unexpected gAMA chunk"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v5, :cond_b

    .line 556
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PNG: unexpected iCCP chunk"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v5, :cond_c

    .line 561
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 562
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "sRGB, no color management neccesary."

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 564
    :cond_c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v5, :cond_e

    .line 565
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getDebug()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 566
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "iCCP."

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 569
    :cond_d
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;

    .line 570
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;->getUncompressedProfile()[B

    move-result-object v2

    .line 572
    invoke-static {v2}, Ljava/awt/color/ICC_Profile;->getInstance([B)Ljava/awt/color/ICC_Profile;

    move-result-object v2

    move-object/from16 v18, v8

    move-object v8, v2

    goto :goto_6

    .line 573
    :cond_e
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_11

    .line 574
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;

    .line 575
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;->getGamma()D

    move-result-wide v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double v13, v11, v9

    .line 580
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v13, v15

    if-ltz v2, :cond_f

    .line 582
    new-instance v2, Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    invoke-direct {v2, v9, v10, v11, v12}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;-><init>(DD)V

    goto :goto_4

    :cond_f
    move-object v2, v8

    :goto_4
    if-eqz v2, :cond_10

    if-eqz v6, :cond_10

    .line 587
    invoke-virtual {v6, v2}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->correct(Lorg/apache/commons/imaging/formats/png/GammaCorrection;)V

    :cond_10
    move-object/from16 v18, v2

    goto :goto_6

    :cond_11
    :goto_5
    move-object/from16 v18, v8

    .line 595
    :goto_6
    iget v10, v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->width:I

    .line 596
    iget v11, v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->height:I

    .line 597
    iget-object v14, v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    .line 598
    iget v15, v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->bitDepth:I

    .line 600
    iget v2, v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->filterMethod:I

    if-eqz v2, :cond_12

    .line 601
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PNG: unknown FilterMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->filterMethod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_12
    invoke-virtual {v14}, Lorg/apache/commons/imaging/formats/png/PngColorType;->getSamplesPerPixel()I

    move-result v2

    mul-int v16, v15, v2

    .line 606
    invoke-virtual {v14}, Lorg/apache/commons/imaging/formats/png/PngColorType;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_13

    if-eqz v19, :cond_14

    :cond_13
    move v4, v5

    .line 609
    :cond_14
    invoke-virtual {v14}, Lorg/apache/commons/imaging/formats/png/PngColorType;->isGreyscale()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 610
    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/commons/imaging/common/BufferedImageFactory;

    move-result-object v0

    invoke-interface {v0, v10, v11, v4}, Lorg/apache/commons/imaging/common/BufferedImageFactory;->getGrayscaleBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v0

    goto :goto_7

    .line 612
    :cond_15
    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/commons/imaging/common/BufferedImageFactory;

    move-result-object v0

    invoke-interface {v0, v10, v11, v4}, Lorg/apache/commons/imaging/common/BufferedImageFactory;->getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 615
    :goto_7
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 616
    new-instance v12, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v12, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 620
    sget-object v1, Lorg/apache/commons/imaging/formats/png/PngImageParser$1;->$SwitchMap$org$apache$commons$imaging$formats$png$InterlaceMethod:[I

    iget-object v2, v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->interlaceMethod:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 632
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown InterlaceMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->interlaceMethod:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :pswitch_0
    new-instance v1, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;

    move-object v9, v1

    move-object v13, v0

    move-object/from16 v17, v6

    invoke-direct/range {v9 .. v19}, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V

    goto :goto_8

    .line 622
    :pswitch_1
    new-instance v1, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;

    move-object v9, v1

    move-object v13, v0

    move-object/from16 v17, v6

    invoke-direct/range {v9 .. v19}, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V

    .line 635
    :goto_8
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->drive()V

    if-eqz v8, :cond_17

    .line 638
    new-instance v1, Lorg/apache/commons/imaging/icc/IccProfileParser;

    invoke-direct {v1}, Lorg/apache/commons/imaging/icc/IccProfileParser;-><init>()V

    invoke-virtual {v1, v8}, Lorg/apache/commons/imaging/icc/IccProfileParser;->issRGB(Ljava/awt/color/ICC_Profile;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 639
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_17

    .line 640
    :cond_16
    new-instance v1, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v1, v8}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    .line 642
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v2

    .line 643
    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v2

    .line 645
    new-instance v3, Lorg/apache/commons/imaging/ColorTools;

    invoke-direct {v3}, Lorg/apache/commons/imaging/ColorTools;-><init>()V

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/commons/imaging/ColorTools;->convertBetweenColorSpaces(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    :cond_17
    return-object v0

    .line 496
    :cond_18
    :goto_9
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PNG: no chunks"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getChuckTypes(Ljava/io/InputStream;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Ljava/io/InputStream;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object p0

    .line 110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 112
    iget v0, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->chunkType:I

    invoke-static {v0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getChunkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 0

    const-string p0, ".png"

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

    .line 246
    new-array v0, p2, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    sget-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->iCCP:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 249
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p2, :cond_1

    .line 255
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PNG contains more than one ICC Profile "

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 259
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;

    .line 260
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;->getUncompressedProfile()[B

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 29
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

    const/4 v1, 0x7

    .line 338
    new-array v1, v1, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->pHYs:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v5, 0x3

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v5, 0x4

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v5, 0x5

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v5, 0x6

    aput-object v2, v1, v5

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 351
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    .line 355
    :cond_0
    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v2

    .line 356
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 357
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PNG contains more than one Header"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;

    .line 364
    sget-object v5, Lorg/apache/commons/imaging/formats/png/ChunkType;->tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v5

    .line 365
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    move/from16 v21, v4

    goto :goto_0

    .line 369
    :cond_2
    iget-object v5, v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/png/PngColorType;->hasAlpha()Z

    move-result v5

    move/from16 v21, v5

    :goto_0
    const/4 v5, 0x0

    .line 375
    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->pHYs:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v6

    .line 376
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v4, :cond_3

    .line 377
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PNG contains more than one pHYs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v4, :cond_4

    .line 380
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;

    .line 383
    :cond_4
    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v6

    .line 384
    sget-object v7, Lorg/apache/commons/imaging/formats/png/ChunkType;->zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {v0, v1, v7}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v7

    .line 385
    sget-object v8, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {v0, v1, v8}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v8

    .line 387
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 388
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 390
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 391
    check-cast v10, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;

    .line 392
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v10, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->keyword:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->text:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-virtual {v10}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->getContents()Lorg/apache/commons/imaging/formats/png/PngText;

    move-result-object v10

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 395
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 396
    check-cast v7, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;

    .line 397
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v7, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->keyword:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->text:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->getContents()Lorg/apache/commons/imaging/formats/png/PngText;

    move-result-object v7

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 400
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 401
    check-cast v7, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;

    .line 402
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v7, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->keyword:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->text:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->getContents()Lorg/apache/commons/imaging/formats/png/PngText;

    move-result-object v7

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 406
    :cond_7
    iget v6, v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->bitDepth:I

    iget-object v7, v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/png/PngColorType;->getSamplesPerPixel()I

    move-result v7

    mul-int v8, v6, v7

    .line 407
    sget-object v10, Lorg/apache/commons/imaging/ImageFormats;->PNG:Lorg/apache/commons/imaging/ImageFormats;

    .line 409
    iget v12, v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->height:I

    .line 412
    iget v14, v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->width:I

    .line 413
    iget-object v6, v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->interlaceMethod:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->isProgressive()Z

    move-result v20

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, -0x1

    if-eqz v5, :cond_8

    .line 429
    iget v11, v5, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->unitSpecifier:I

    if-ne v11, v4, :cond_8

    .line 432
    iget v6, v5, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->pixelsPerUnitXAxis:I

    int-to-double v6, v6

    const-wide v16, 0x3f9a027525460aa6L    # 0.0254

    mul-double v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-double v3, v14

    .line 433
    iget v7, v5, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->pixelsPerUnitXAxis:I

    move/from16 v26, v6

    int-to-double v6, v7

    mul-double v6, v6, v16

    div-double/2addr v3, v6

    double-to-float v3, v3

    .line 434
    iget v4, v5, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->pixelsPerUnitYAxis:I

    int-to-double v6, v4

    mul-double v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v4, v6

    int-to-double v6, v12

    .line 435
    iget v5, v5, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->pixelsPerUnitYAxis:I

    move/from16 v27, v3

    move/from16 v28, v4

    int-to-double v3, v5

    mul-double v3, v3, v16

    div-double/2addr v6, v3

    double-to-float v3, v6

    move/from16 v16, v3

    move/from16 v17, v26

    move/from16 v18, v27

    goto :goto_4

    :cond_8
    move/from16 v16, v6

    move/from16 v18, v16

    move/from16 v17, v7

    move/from16 v28, v17

    .line 442
    :goto_4
    sget-object v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v0

    .line 443
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    move/from16 v22, v1

    goto :goto_5

    :cond_9
    const/16 v22, 0x0

    .line 448
    :goto_5
    sget-object v0, Lorg/apache/commons/imaging/formats/png/PngImageParser$1;->$SwitchMap$org$apache$commons$imaging$formats$png$PngColorType:[I

    iget-object v1, v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/png/PngColorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 459
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Png: Unknown ColorType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :pswitch_0
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_6

    .line 451
    :pswitch_1
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    :goto_6
    move-object/from16 v23, v0

    .line 462
    sget-object v24, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PNG_FILTER:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 464
    new-instance v0, Lorg/apache/commons/imaging/formats/png/PngImageInfo;

    const-string v7, "Png"

    const-string v11, "PNG Portable Network Graphics"

    const-string v13, "image/png"

    const/4 v1, 0x1

    move-object v6, v0

    move v2, v14

    move v14, v1

    move-object v1, v15

    move/from16 v15, v28

    move/from16 v19, v2

    move-object/from16 v25, v1

    invoke-direct/range {v6 .. v25}, Lorg/apache/commons/imaging/formats/png/PngImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;Ljava/util/List;)V

    return-object v0

    .line 352
    :cond_a
    :goto_7
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "PNG: no chunks"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    const/4 p2, 0x1

    .line 268
    new-array v0, p2, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    sget-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 270
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p2, :cond_1

    .line 275
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PNG contains more than one Header"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 278
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;

    .line 280
    new-instance p1, Ljava/awt/Dimension;

    iget p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->width:I

    iget p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->height:I

    invoke-direct {p1, p2, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object p1

    .line 271
    :cond_2
    :goto_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Png: No chunks"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
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

    const/4 p2, 0x2

    .line 286
    new-array p2, p2, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    sget-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    sget-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v1, 0x1

    aput-object v0, p2, v1

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 288
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 292
    :cond_0
    new-instance p1, Lorg/apache/commons/imaging/common/GenericImageMetadata;

    invoke-direct {p1}, Lorg/apache/commons/imaging/common/GenericImageMetadata;-><init>()V

    .line 294
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 295
    check-cast p2, Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;

    .line 297
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "Png-Custom"

    return-object p0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
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

    .line 704
    new-array v0, p2, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    sget-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_5

    .line 706
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 710
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 711
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    .line 712
    check-cast v1, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;

    .line 713
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->getKeyword()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XML:com.adobe.xmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 716
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 719
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object p1

    .line 722
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, p2, :cond_4

    .line 723
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PNG contains more than one XMP chunk."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 727
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;

    .line 728
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    return-object p1
.end method

.method public hasChuckType(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/png/ChunkType;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 122
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 124
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readSignature(Ljava/io/InputStream;)V

    .line 125
    new-array v2, v1, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object p2, v2, v0

    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Ljava/io/InputStream;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    :try_start_2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    xor-int/2addr p0, v1

    .line 129
    new-array p2, v1, [Ljava/io/Closeable;

    aput-object p1, p2, v0

    invoke-static {v1, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return p0

    :catchall_0
    move-exception p0

    move-object p2, p1

    move p1, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :catchall_2
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    move-object p2, p1

    move p1, v0

    :goto_1
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p2, v1, v0

    invoke-static {p1, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method public readSignature(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    sget-object p0, Lorg/apache/commons/imaging/formats/png/PngConstants;->PNG_SIGNATURE:Lorg/apache/commons/imaging/common/BinaryConstant;

    const-string v0, "Not a Valid PNG Segment: Incorrect Signature"

    invoke-static {p1, p0, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;Lorg/apache/commons/imaging/common/BinaryConstant;Ljava/lang/String;)V

    return-void
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 0
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

    .line 697
    new-instance p0, Lorg/apache/commons/imaging/formats/png/PngWriter;

    invoke-direct {p0, p3}, Lorg/apache/commons/imaging/formats/png/PngWriter;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V

    return-void
.end method
