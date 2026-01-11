.class Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;
.super Ljava/io/InputStream;
.source "BitInputStreamFlexible.java"


# instance fields
.field private bytesRead:J

.field private cache:I

.field private cacheBitsRemaining:I

.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->is:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public flushCache()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    return-void
.end method

.method public getBytesRead()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->bytesRead:J

    return-wide v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    if-gtz v0, :cond_0

    .line 45
    iget-object p0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->is:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0

    .line 43
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "BitInputStream: incomplete bit read"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readBits(I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    if-gt p1, v0, :cond_6

    .line 55
    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    if-lt p1, v0, :cond_0

    shl-int v3, v2, v0

    sub-int/2addr v3, v2

    .line 57
    iget v4, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cache:I

    and-int/2addr v3, v4

    sub-int/2addr p1, v0

    .line 59
    iput v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    move v1, v3

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p1

    .line 62
    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    shl-int p1, v2, p1

    sub-int/2addr p1, v2

    .line 63
    iget v3, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cache:I

    shr-int v0, v3, v0

    and-int/2addr p1, v0

    move v8, v1

    move v1, p1

    move p1, v8

    .line 67
    :cond_1
    :goto_0
    const-string v0, "couldn\'t read bits"

    const-wide/16 v3, 0x1

    const/16 v5, 0x8

    if-lt p1, v5, :cond_3

    .line 68
    iget-object v5, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->is:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cache:I

    if-ltz v5, :cond_2

    .line 75
    iget-wide v6, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->bytesRead:J

    add-long/2addr v6, v3

    iput-wide v6, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->bytesRead:J

    shl-int/lit8 v0, v1, 0x8

    and-int/lit16 v1, v5, 0xff

    or-int/2addr v1, v0

    add-int/lit8 p1, p1, -0x8

    goto :goto_0

    .line 70
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-lez p1, :cond_5

    .line 80
    iget-object v5, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->is:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cache:I

    if-ltz v5, :cond_4

    .line 87
    iget-wide v6, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->bytesRead:J

    add-long/2addr v6, v3

    iput-wide v6, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->bytesRead:J

    rsub-int/lit8 v0, p1, 0x8

    .line 88
    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    shl-int p0, v1, p1

    shl-int p1, v2, p1

    sub-int/2addr p1, v2

    shr-int v0, v5, v0

    and-int/2addr p1, v0

    or-int v1, p0, p1

    goto :goto_1

    .line 82
    :cond_4
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    return v1

    .line 97
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "BitInputStream: unknown error"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
