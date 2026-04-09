.class public Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;
.super Ljava/io/InputStream;
.source "MyBitInputStream.java"


# instance fields
.field private bitCache:I

.field private bitsInCache:I

.field private final byteOrder:Ljava/nio/ByteOrder;

.field private bytesRead:J

.field private final is:Ljava/io/InputStream;

.field private tiffLZWMode:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 32
    iput-object p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    .line 33
    iput-object p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->is:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public flushCache()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitsInCache:I

    .line 90
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    return-void
.end method

.method public getBytesRead()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bytesRead:J

    return-wide v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 38
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->readBits(I)I

    move-result p0

    return p0
.end method

.method public readBits(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    :goto_0
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitsInCache:I

    if-ge v0, p1, :cond_3

    .line 47
    iget-object v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    .line 50
    iget-boolean p0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->tiffLZWMode:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x101

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    const/16 v1, 0xff

    and-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_2

    .line 60
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    goto :goto_1

    .line 62
    :cond_2
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitsInCache:I

    shl-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    .line 65
    :goto_1
    iget-wide v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bytesRead:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bytesRead:J

    .line 66
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitsInCache:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitsInCache:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    shl-int v1, v0, p1

    sub-int/2addr v1, v0

    .line 72
    iget-object v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_4

    .line 73
    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitsInCache:I

    sub-int/2addr v3, p1

    shr-int/2addr v2, v3

    and-int/2addr v1, v2

    goto :goto_2

    .line 75
    :cond_4
    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    and-int/2addr v1, v2

    .line 76
    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    shr-int/2addr v2, p1

    iput v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    .line 81
    :goto_2
    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitsInCache:I

    sub-int/2addr v2, p1

    iput v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitsInCache:I

    .line 82
    iget p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitsInCache:I

    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    .line 83
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    and-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    return v1
.end method

.method public setTiffLZWMode()V
    .locals 1

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->tiffLZWMode:Z

    return-void
.end method
