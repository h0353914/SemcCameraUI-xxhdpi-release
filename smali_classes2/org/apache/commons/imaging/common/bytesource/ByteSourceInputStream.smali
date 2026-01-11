.class public Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;
.super Lorg/apache/commons/imaging/common/bytesource/ByteSource;
.source "ByteSourceInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;,
        Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0x400


# instance fields
.field private cacheHead:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

.field private final is:Ljava/io/InputStream;

.field private readBuffer:[B

.field private streamLength:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    .line 34
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 31
    iput-wide v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->streamLength:J

    .line 35
    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-direct {p2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->is:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->readBlock()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->getFirstBlock()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    move-result-object p0

    return-object p0
.end method

.method private getFirstBlock()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->cacheHead:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->readBlock()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->cacheHead:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    .line 86
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->cacheHead:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    return-object p0
.end method

.method private readBlock()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->readBuffer:[B

    const/16 v1, 0x400

    if-nez v0, :cond_0

    .line 63
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->readBuffer:[B

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->is:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->readBuffer:[B

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    return-object v3

    :cond_1
    if-ge v0, v1, :cond_2

    .line 71
    new-array v1, v0, [B

    .line 72
    iget-object v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->readBuffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;[B)V

    return-object v0

    .line 76
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->readBuffer:[B

    .line 77
    iput-object v3, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->readBuffer:[B

    .line 78
    new-instance v1, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;[B)V

    return-object v1
.end method


# virtual methods
.method public getAll()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 258
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->getFirstBlock()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    .line 260
    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 261
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->getNext()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    move-result-object p0

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getBlock(JI)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    if-ltz p3, :cond_2

    int-to-long v2, p3

    add-long/2addr v2, p1

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    .line 213
    iget-wide v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->streamLength:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_2

    .line 221
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 222
    invoke-static {p0, p1, p2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 224
    new-array p1, p3, [B

    const/4 p2, 0x0

    :cond_0
    sub-int v0, p3, p2

    .line 227
    invoke-virtual {p0, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    add-int/2addr p2, v0

    if-lt p2, p3, :cond_0

    return-object p1

    .line 229
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Could not read block."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 216
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not read block (block start: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", block length: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", data length: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide p2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->streamLength:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inputstream: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->filename:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$1;)V

    return-object v0
.end method

.method public getLength()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    iget-wide v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->streamLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-wide v4, v2

    :goto_0
    const-wide/16 v6, 0x400

    .line 247
    invoke-virtual {v0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-lez v1, :cond_1

    add-long/2addr v4, v6

    goto :goto_0

    .line 250
    :cond_1
    iput-wide v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->streamLength:J

    return-wide v4
.end method
