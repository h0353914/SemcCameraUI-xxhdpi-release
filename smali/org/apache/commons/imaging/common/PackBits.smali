.class public Lorg/apache/commons/imaging/common/PackBits;
.super Ljava/lang/Object;
.source "PackBits.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findNextDuplicate([BI)I
    .locals 2

    .line 77
    array-length p0, p1

    const/4 v0, -0x1

    if-lt p2, p0, :cond_0

    return v0

    .line 81
    :cond_0
    aget-byte p0, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 83
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_2

    .line 84
    aget-byte v1, p1, p2

    if-ne v1, p0, :cond_1

    add-int/lit8 p2, p2, -0x1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    move p0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private findRunLength([BI)I
    .locals 2

    .line 97
    aget-byte p0, p1, p2

    add-int/lit8 v0, p2, 0x1

    .line 101
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    if-ne v1, p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method public compress([B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    :try_start_0
    new-instance v3, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;

    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v2, v0

    .line 116
    :goto_0
    :try_start_1
    array-length v4, p1

    if-ge v2, v4, :cond_4

    .line 117
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/imaging/common/PackBits;->findNextDuplicate([BI)I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v2, :cond_0

    .line 121
    invoke-direct {p0, p1, v4}, Lorg/apache/commons/imaging/common/PackBits;->findRunLength([BI)I

    move-result v4

    .line 122
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    neg-int v5, v5

    .line 123
    invoke-virtual {v3, v5}, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->write(I)V

    .line 124
    aget-byte v5, p1, v2

    invoke-virtual {v3, v5}, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->write(I)V

    add-int/2addr v2, v4

    goto :goto_0

    :cond_0
    sub-int v6, v4, v2

    if-lez v4, :cond_1

    .line 131
    invoke-direct {p0, p1, v4}, Lorg/apache/commons/imaging/common/PackBits;->findRunLength([BI)I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_1

    add-int v8, v2, v6

    add-int/2addr v8, v7

    .line 135
    invoke-direct {p0, p1, v8}, Lorg/apache/commons/imaging/common/PackBits;->findNextDuplicate([BI)I

    move-result v7

    if-eq v7, v8, :cond_1

    sub-int v6, v7, v2

    move v4, v7

    :cond_1
    if-gez v4, :cond_2

    .line 145
    array-length v4, p1

    sub-int v6, v4, v2

    .line 147
    :cond_2
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    .line 149
    invoke-virtual {v3, v5}, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->write(I)V

    move v5, v2

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_3

    .line 151
    aget-byte v6, p1, v5

    invoke-virtual {v3, v6}, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_0

    .line 156
    :cond_4
    invoke-virtual {v3}, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v3, p1, v0

    invoke-static {v1, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v3, v2

    :goto_2
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v3, p1, v0

    invoke-static {v0, p1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method public decompress([BI)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 31
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_5

    .line 37
    array-length v3, p1

    if-lt v2, v3, :cond_0

    .line 38
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tiff: Unpack bits source exhausted: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", done + "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", expected + "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 44
    aget-byte v2, p1, v2

    if-ltz v2, :cond_2

    const/16 v4, 0x7f

    if-gt v2, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    move v4, v3

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 52
    aget-byte v4, p1, v4

    invoke-virtual {p0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    const/16 v4, -0x7f

    if-lt v2, v4, :cond_3

    const/4 v4, -0x1

    if-gt v2, v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 58
    aget-byte v3, p1, v3

    neg-int v2, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    move v5, v0

    :goto_2
    if-ge v5, v2, :cond_1

    .line 63
    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const/16 v4, -0x80

    if-ne v2, v4, :cond_4

    .line 67
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Packbits: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    move v2, v3

    goto :goto_0

    .line 71
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
