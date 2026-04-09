.class public Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;
.super Lorg/apache/commons/imaging/common/bytesource/ByteSource;
.source "ByteSourceArray.java"


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;->bytes:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;->bytes:[B

    return-void
.end method


# virtual methods
.method public getAll()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;->bytes:[B

    return-object p0
.end method

.method public getBlock(JI)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int p1, p1

    if-ltz p1, :cond_1

    if-ltz p3, :cond_1

    add-int p2, p1, p3

    if-ltz p2, :cond_1

    .line 45
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;->bytes:[B

    array-length v0, v0

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-array p2, p3, [B

    .line 53
    iget-object p0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;->bytes:[B

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 47
    :cond_1
    :goto_0
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not read block (block start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", block length: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", data length: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;->bytes:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;->bytes:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " byte array"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 38
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;->bytes:[B

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 59
    iget-object p0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;->bytes:[B

    array-length p0, p0

    int-to-long v0, p0

    return-wide v0
.end method
