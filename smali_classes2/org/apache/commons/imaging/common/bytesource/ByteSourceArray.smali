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

    if-ltz p1, :cond_0

    if-ltz p3, :cond_0

    add-int p2, p1, p3

    if-ltz p2, :cond_0

    .line 45
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;->bytes:[B

    array-length v1, v0

    if-gt p2, v1, :cond_0

    .line 52
    new-array p0, p3, [B

    const/4 p2, 0x0

    .line 53
    invoke-static {v0, p1, p0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 47
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not read block (block start: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", block length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", data length: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;->bytes:[B

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    move-result-object p0

    const-string v0, " byte array"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
