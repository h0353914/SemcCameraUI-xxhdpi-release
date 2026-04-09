.class Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;
.super Ljava/io/InputStream;
.source "BitInputStream.java"


# instance fields
.field private final byteOrder:Ljava/nio/ByteOrder;

.field private bytesRead:J

.field private cache:I

.field private cacheBitsRemaining:I

.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    .line 37
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method public flushCache()V
    .locals 1

    const/4 v0, 0x0

    .line 135
    iput v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    return-void
.end method

.method public getBytesRead()J
    .locals 2

    .line 139
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

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
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    if-lez v0, :cond_0

    .line 43
    new-instance p0, Ljava/io/IOException;

    const-string v0, "BitInputStream: incomplete bit read"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0
.end method

.method public final readBits(I)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    const/16 v2, 0x8

    if-ge p1, v2, :cond_2

    .line 50
    iget v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    if-nez v3, :cond_0

    .line 52
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cache:I

    .line 53
    iput v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    .line 54
    iget-wide v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    add-long/2addr v3, v0

    iput-wide v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    .line 56
    :cond_0
    iget v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    if-le p1, v3, :cond_1

    .line 57
    new-instance p0, Ljava/io/IOException;

    const-string p1, "BitInputStream: can\'t read bit fields across bytes"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_1
    iget v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    sub-int/2addr v3, p1

    iput v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    .line 63
    iget v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cache:I

    iget v4, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    shr-int/2addr v3, v4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    and-int/lit8 p0, v3, 0x7f

    return p0

    :pswitch_1
    and-int/lit8 p0, v3, 0x3f

    return p0

    :pswitch_2
    and-int/lit8 p0, v3, 0x1f

    return p0

    :pswitch_3
    and-int/lit8 p0, v3, 0xf

    return p0

    :pswitch_4
    and-int/lit8 p0, v3, 0x7

    return p0

    :pswitch_5
    and-int/lit8 p0, v3, 0x3

    return p0

    :pswitch_6
    and-int/lit8 p0, v3, 0x1

    return p0

    .line 83
    :cond_2
    :goto_0
    iget v3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    if-lez v3, :cond_3

    .line 84
    new-instance p0, Ljava/io/IOException;

    const-string p1, "BitInputStream: incomplete bit read"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-ne p1, v2, :cond_4

    .line 88
    iget-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    .line 89
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0

    .line 97
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const-wide/16 v3, 0x4

    const/16 v5, 0x20

    const-wide/16 v6, 0x3

    const-wide/16 v8, 0x2

    const/16 v10, 0x18

    const/16 v11, 0x10

    if-ne v0, v1, :cond_7

    if-ne p1, v11, :cond_5

    .line 99
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    .line 100
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    shl-int/2addr p1, v2

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    shl-int/lit8 p0, p0, 0x0

    or-int/2addr p0, p1

    return p0

    :cond_5
    if-ne p1, v10, :cond_6

    .line 104
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    .line 105
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    shl-int/2addr p1, v11

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/2addr v0, v2

    or-int/2addr p1, v0

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    shl-int/lit8 p0, p0, 0x0

    or-int/2addr p0, p1

    return p0

    :cond_6
    if-ne p1, v5, :cond_a

    .line 109
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    .line 110
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    shl-int/2addr p1, v10

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/2addr v0, v11

    or-int/2addr p1, v0

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/2addr v0, v2

    or-int/2addr p1, v0

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    shl-int/lit8 p0, p0, 0x0

    or-int/2addr p0, p1

    return p0

    :cond_7
    if-ne p1, v11, :cond_8

    .line 115
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    .line 116
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    shl-int/lit8 p1, p1, 0x0

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    shl-int/2addr p0, v2

    or-int/2addr p0, p1

    return p0

    :cond_8
    if-ne p1, v10, :cond_9

    .line 120
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    .line 121
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    shl-int/lit8 p1, p1, 0x0

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/2addr v0, v2

    or-int/2addr p1, v0

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    shl-int/2addr p0, v11

    or-int/2addr p0, p1

    return p0

    :cond_9
    if-ne p1, v5, :cond_a

    .line 125
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    .line 126
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    shl-int/lit8 p1, p1, 0x0

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/2addr v0, v2

    or-int/2addr p1, v0

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/2addr v0, v11

    or-int/2addr p1, v0

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    shl-int/2addr p0, v10

    or-int/2addr p0, p1

    return p0

    .line 131
    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "BitInputStream: unknown error"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
