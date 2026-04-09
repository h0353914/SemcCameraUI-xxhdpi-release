.class Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;
.super Ljava/io/InputStream;
.source "ByteSourceInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheReadingInputStream"
.end annotation


# instance fields
.field private block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

.field private blockIndex:I

.field private readFirst:Z

.field final synthetic this$0:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;


# direct methods
.method private constructor <init>(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->this$0:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$1;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 97
    iget-boolean v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->readFirst:Z

    if-eqz v0, :cond_0

    return v1

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->this$0:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-static {v0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->access$100(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->readFirst:Z

    .line 104
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    iget-object v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v2, v2, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 105
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->getNext()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    .line 109
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    if-nez v0, :cond_3

    return v1

    .line 113
    :cond_3
    iget v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    iget-object v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v2, v2, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v2, v2

    if-lt v0, v2, :cond_4

    return v1

    :cond_4
    const/16 v0, 0xff

    .line 117
    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    iget v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    aget-byte p0, v1, v2

    and-int/2addr p0, v0

    return p0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 124
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    :cond_0
    if-ltz p2, :cond_8

    .line 125
    array-length v0, p1

    if-gt p2, v0, :cond_8

    if-ltz p3, :cond_8

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_8

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-nez p3, :cond_2

    return v0

    .line 134
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    const/4 v2, -0x1

    if-nez v1, :cond_4

    .line 135
    iget-boolean v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->readFirst:Z

    if-eqz v1, :cond_3

    return v2

    .line 138
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->this$0:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-static {v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->access$100(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    const/4 v1, 0x1

    .line 139
    iput-boolean v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->readFirst:Z

    .line 142
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    if-eqz v1, :cond_5

    iget v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    iget-object v3, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v3, v3, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v3, v3

    if-lt v1, v3, :cond_5

    .line 143
    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->getNext()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    .line 144
    iput v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    .line 147
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    if-nez v0, :cond_6

    return v2

    .line 151
    :cond_6
    iget v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_7

    return v2

    .line 155
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v0, v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 156
    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v0, v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    iget v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget p1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    return p3

    .line 127
    :cond_8
    :goto_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    move-wide v2, p1

    :goto_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_6

    .line 172
    iget-object v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    if-nez v4, :cond_2

    .line 173
    iget-boolean v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->readFirst:Z

    if-eqz v4, :cond_1

    const-wide/16 p0, -0x1

    return-wide p0

    .line 176
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->this$0:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-static {v4}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->access$100(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    const/4 v4, 0x1

    .line 177
    iput-boolean v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->readFirst:Z

    .line 181
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    if-eqz v4, :cond_3

    iget v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    iget-object v5, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v5, v5, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 182
    iget-object v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->getNext()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    const/4 v4, 0x0

    .line 183
    iput v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    .line 186
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    if-nez v4, :cond_4

    goto :goto_1

    .line 190
    :cond_4
    iget v4, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    iget-object v5, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v5, v5, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v5, v5

    if-lt v4, v5, :cond_5

    goto :goto_1

    :cond_5
    const-wide/16 v4, 0x400

    .line 194
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v5, v5, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v5, v5

    iget v6, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 196
    iget v5, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_6
    :goto_1
    sub-long/2addr p1, v2

    return-wide p1
.end method
