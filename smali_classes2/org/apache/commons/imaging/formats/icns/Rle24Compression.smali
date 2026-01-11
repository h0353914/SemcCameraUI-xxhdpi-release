.class final Lorg/apache/commons/imaging/formats/icns/Rle24Compression;
.super Ljava/lang/Object;
.source "Rle24Compression.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decompress(II[B)[B
    .locals 10

    mul-int v0, p0, p1

    mul-int/lit8 v1, v0, 0x4

    .line 25
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x80

    if-lt p0, v3, :cond_0

    if-lt p1, v3, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    const/4 p1, 0x1

    move v3, p1

    :goto_1
    const/4 v4, 0x3

    if-gt v3, v4, :cond_5

    move v4, v0

    move v5, v2

    :goto_2
    if-lez v4, :cond_4

    .line 48
    aget-byte v6, p2, p0

    and-int/lit16 v7, v6, 0x80

    if-eqz v7, :cond_2

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v6, v6, -0x7d

    move v7, v2

    :goto_3
    if-ge v7, v6, :cond_1

    add-int/lit8 v8, v5, 0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v3

    add-int/lit8 v9, p0, 0x1

    .line 51
    aget-byte v9, p2, v9

    aput-byte v9, v1, v5

    add-int/lit8 v7, v7, 0x1

    move v5, v8

    goto :goto_3

    :cond_1
    add-int/lit8 p0, p0, 0x2

    goto :goto_5

    :cond_2
    and-int/lit16 v6, v6, 0xff

    add-int/2addr v6, p1

    add-int/lit8 p0, p0, 0x1

    move v7, v2

    :goto_4
    if-ge v7, v6, :cond_3

    add-int/lit8 v8, v5, 0x1

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v3

    add-int/lit8 v9, p0, 0x1

    .line 59
    aget-byte p0, p2, p0

    aput-byte p0, v1, v5

    add-int/lit8 v7, v7, 0x1

    move v5, v8

    move p0, v9

    goto :goto_4

    :cond_3
    :goto_5
    sub-int/2addr v4, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object v1
.end method
