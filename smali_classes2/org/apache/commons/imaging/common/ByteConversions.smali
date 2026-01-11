.class public final Lorg/apache/commons/imaging/common/ByteConversions;
.super Ljava/lang/Object;
.source "ByteConversions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static toBytes(DLjava/nio/ByteOrder;[BI)V
    .locals 14

    .line 142
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 143
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x38

    const/16 v4, 0x30

    const/16 v5, 0x28

    const/16 v6, 0x20

    const/16 v7, 0x18

    const/16 v8, 0x10

    const/16 v9, 0x8

    const-wide/16 v10, 0xff

    move-object/from16 v12, p2

    if-ne v12, v2, :cond_0

    and-long v12, v0, v10

    long-to-int v2, v12

    int-to-byte v2, v2

    .line 144
    aput-byte v2, p3, p4

    add-int/lit8 v2, p4, 0x1

    shr-long v12, v0, v9

    and-long/2addr v12, v10

    long-to-int v9, v12

    int-to-byte v9, v9

    .line 145
    aput-byte v9, p3, v2

    add-int/lit8 v2, p4, 0x2

    shr-long v8, v0, v8

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    .line 146
    aput-byte v8, p3, v2

    add-int/lit8 v2, p4, 0x3

    shr-long v7, v0, v7

    and-long/2addr v7, v10

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 147
    aput-byte v7, p3, v2

    add-int/lit8 v2, p4, 0x4

    shr-long v6, v0, v6

    and-long/2addr v6, v10

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 148
    aput-byte v6, p3, v2

    add-int/lit8 v2, p4, 0x5

    shr-long v5, v0, v5

    and-long/2addr v5, v10

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 149
    aput-byte v5, p3, v2

    add-int/lit8 v2, p4, 0x6

    shr-long v4, v0, v4

    and-long/2addr v4, v10

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 150
    aput-byte v4, p3, v2

    add-int/lit8 v2, p4, 0x7

    shr-long/2addr v0, v3

    and-long/2addr v0, v10

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 151
    aput-byte v0, p3, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x7

    and-long v12, v0, v10

    long-to-int v12, v12

    int-to-byte v12, v12

    .line 153
    aput-byte v12, p3, v2

    add-int/lit8 v2, p4, 0x6

    shr-long v12, v0, v9

    and-long/2addr v12, v10

    long-to-int v9, v12

    int-to-byte v9, v9

    .line 154
    aput-byte v9, p3, v2

    add-int/lit8 v2, p4, 0x5

    shr-long v8, v0, v8

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    .line 155
    aput-byte v8, p3, v2

    add-int/lit8 v2, p4, 0x4

    shr-long v7, v0, v7

    and-long/2addr v7, v10

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 156
    aput-byte v7, p3, v2

    add-int/lit8 v2, p4, 0x3

    shr-long v6, v0, v6

    and-long/2addr v6, v10

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 157
    aput-byte v6, p3, v2

    add-int/lit8 v2, p4, 0x2

    shr-long v5, v0, v5

    and-long/2addr v5, v10

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 158
    aput-byte v5, p3, v2

    add-int/lit8 v2, p4, 0x1

    shr-long v4, v0, v4

    and-long/2addr v4, v10

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 159
    aput-byte v4, p3, v2

    shr-long/2addr v0, v3

    and-long/2addr v0, v10

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 160
    aput-byte v0, p3, p4

    :goto_0
    return-void
.end method

.method private static toBytes(FLjava/nio/ByteOrder;[BI)V
    .locals 1

    .line 108
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    .line 109
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_0

    and-int/lit16 p1, p0, 0xff

    int-to-byte p1, p1

    .line 110
    aput-byte p1, p2, p3

    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 111
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x2

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 112
    aput-byte v0, p2, p1

    add-int/lit8 p3, p3, 0x3

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 113
    aput-byte p0, p2, p3

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p3, 0x3

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    .line 115
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x2

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 116
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 117
    aput-byte v0, p2, p1

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 118
    aput-byte p0, p2, p3

    :goto_0
    return-void
.end method

.method private static toBytes(ILjava/nio/ByteOrder;[BI)V
    .locals 1

    .line 76
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_0

    shr-int/lit8 p1, p0, 0x18

    int-to-byte p1, p1

    .line 77
    aput-byte p1, p2, p3

    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    .line 78
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x2

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 79
    aput-byte v0, p2, p1

    add-int/lit8 p3, p3, 0x3

    int-to-byte p0, p0

    .line 80
    aput-byte p0, p2, p3

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p3, 0x3

    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    .line 82
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x2

    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    .line 83
    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 84
    aput-byte v0, p2, p1

    int-to-byte p0, p0

    .line 85
    aput-byte p0, p2, p3

    :goto_0
    return-void
.end method

.method private static toBytes(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;[BI)V
    .locals 1

    .line 185
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_0

    .line 186
    iget p1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    add-int/lit8 p1, p3, 0x1

    .line 187
    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x2

    .line 188
    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x3

    .line 189
    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x4

    .line 190
    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x5

    .line 191
    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x6

    .line 192
    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/lit8 p3, p3, 0x7

    .line 193
    iget p0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p3, 0x3

    .line 195
    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x2

    .line 196
    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x1

    .line 197
    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    .line 198
    iget p1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    add-int/lit8 p1, p3, 0x7

    .line 199
    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x6

    .line 200
    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x5

    .line 201
    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    add-int/lit8 p3, p3, 0x4

    .line 202
    iget p0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    :goto_0
    return-void
.end method

.method private static toBytes(SLjava/nio/ByteOrder;[BI)V
    .locals 1

    .line 48
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_0

    shr-int/lit8 p1, p0, 0x8

    int-to-byte p1, p1

    .line 49
    aput-byte p1, p2, p3

    add-int/lit8 p3, p3, 0x1

    int-to-byte p0, p0

    .line 50
    aput-byte p0, p2, p3

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 52
    aput-byte v0, p2, p1

    int-to-byte p0, p0

    .line 53
    aput-byte p0, p2, p3

    :goto_0
    return-void
.end method

.method public static toBytes(DLjava/nio/ByteOrder;)[B
    .locals 2

    const/16 v0, 0x8

    .line 123
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 124
    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(DLjava/nio/ByteOrder;[BI)V

    return-object v0
.end method

.method public static toBytes(FLjava/nio/ByteOrder;)[B
    .locals 2

    const/4 v0, 0x4

    .line 90
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 91
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(FLjava/nio/ByteOrder;[BI)V

    return-object v0
.end method

.method public static toBytes(ILjava/nio/ByteOrder;)[B
    .locals 2

    const/4 v0, 0x4

    .line 58
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 59
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(ILjava/nio/ByteOrder;[BI)V

    return-object v0
.end method

.method public static toBytes(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B
    .locals 2

    const/16 v0, 0x8

    .line 165
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 166
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;[BI)V

    return-object v0
.end method

.method public static toBytes(SLjava/nio/ByteOrder;)[B
    .locals 2

    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 31
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;[BI)V

    return-object v0
.end method

.method private static toBytes([DIILjava/nio/ByteOrder;)[B
    .locals 5

    mul-int/lit8 v0, p2, 0x8

    .line 134
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    .line 136
    aget-wide v2, p0, v2

    mul-int/lit8 v4, v1, 0x8

    invoke-static {v2, v3, p3, v0, v4}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(DLjava/nio/ByteOrder;[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toBytes([DLjava/nio/ByteOrder;)[B
    .locals 2

    const/4 v0, 0x0

    .line 129
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([DIILjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method private static toBytes([FIILjava/nio/ByteOrder;)[B
    .locals 4

    mul-int/lit8 v0, p2, 0x4

    .line 100
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    .line 102
    aget v2, p0, v2

    mul-int/lit8 v3, v1, 0x4

    invoke-static {v2, p3, v0, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(FLjava/nio/ByteOrder;[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toBytes([FLjava/nio/ByteOrder;)[B
    .locals 2

    const/4 v0, 0x0

    .line 96
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([FIILjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method private static toBytes([IIILjava/nio/ByteOrder;)[B
    .locals 4

    mul-int/lit8 v0, p2, 0x4

    .line 68
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    .line 70
    aget v2, p0, v2

    mul-int/lit8 v3, v1, 0x4

    invoke-static {v2, p3, v0, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(ILjava/nio/ByteOrder;[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toBytes([ILjava/nio/ByteOrder;)[B
    .locals 2

    const/4 v0, 0x0

    .line 64
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([IIILjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method private static toBytes([Lorg/apache/commons/imaging/common/RationalNumber;IILjava/nio/ByteOrder;)[B
    .locals 4

    mul-int/lit8 v0, p2, 0x8

    .line 176
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    .line 178
    aget-object v2, p0, v2

    mul-int/lit8 v3, v1, 0x8

    invoke-static {v2, p3, v0, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toBytes([Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B
    .locals 2

    const/4 v0, 0x0

    .line 171
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([Lorg/apache/commons/imaging/common/RationalNumber;IILjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method private static toBytes([SIILjava/nio/ByteOrder;)[B
    .locals 4

    mul-int/lit8 v0, p2, 0x2

    .line 40
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    .line 42
    aget-short v2, p0, v2

    mul-int/lit8 v3, v1, 0x2

    invoke-static {v2, p3, v0, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toBytes([SLjava/nio/ByteOrder;)[B
    .locals 2

    const/4 v0, 0x0

    .line 36
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([SIILjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method private static toDouble([BILjava/nio/ByteOrder;)D
    .locals 24

    .line 319
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    .line 320
    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x2

    .line 321
    aget-byte v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p1, 0x3

    .line 322
    aget-byte v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int/lit8 v10, p1, 0x4

    .line 323
    aget-byte v10, p0, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-int/lit8 v12, p1, 0x5

    .line 324
    aget-byte v12, p0, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    add-int/lit8 v14, p1, 0x6

    .line 325
    aget-byte v14, p0, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    add-int/lit8 v16, p1, 0x7

    move-wide/from16 v17, v14

    .line 326
    aget-byte v14, p0, v16

    int-to-long v14, v14

    and-long/2addr v2, v14

    .line 328
    sget-object v14, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v16, 0x10

    const/16 v19, 0x18

    const/16 v20, 0x20

    const/16 v21, 0x28

    const/16 v22, 0x30

    const/16 v23, 0x38

    move-object/from16 v15, p2

    if-ne v15, v14, :cond_0

    shl-long v0, v0, v23

    shl-long v4, v4, v22

    or-long/2addr v0, v4

    shl-long v4, v6, v21

    or-long/2addr v0, v4

    shl-long v4, v8, v20

    or-long/2addr v0, v4

    shl-long v4, v10, v19

    or-long/2addr v0, v4

    shl-long v4, v12, v16

    or-long/2addr v0, v4

    const/16 v4, 0x8

    shl-long v4, v17, v4

    or-long/2addr v0, v4

    or-long/2addr v0, v2

    goto :goto_0

    :cond_0
    shl-long v2, v2, v23

    shl-long v14, v17, v22

    or-long/2addr v2, v14

    shl-long v12, v12, v21

    or-long/2addr v2, v12

    shl-long v10, v10, v20

    or-long/2addr v2, v10

    shl-long v8, v8, v19

    or-long/2addr v2, v8

    shl-long v6, v6, v16

    or-long/2addr v2, v6

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 337
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble([BLjava/nio/ByteOrder;)D
    .locals 1

    const/4 v0, 0x0

    .line 315
    invoke-static {p0, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toDouble([BILjava/nio/ByteOrder;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static toDoubles([BIILjava/nio/ByteOrder;)[D
    .locals 4

    .line 346
    div-int/lit8 p2, p2, 0x8

    new-array v0, p2, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int/lit8 v2, v1, 0x8

    add-int/2addr v2, p1

    .line 348
    invoke-static {p0, v2, p3}, Lorg/apache/commons/imaging/common/ByteConversions;->toDouble([BILjava/nio/ByteOrder;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toDoubles([BLjava/nio/ByteOrder;)[D
    .locals 2

    const/4 v0, 0x0

    .line 341
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toDoubles([BIILjava/nio/ByteOrder;)[D

    move-result-object p0

    return-object p0
.end method

.method private static toFloat([BILjava/nio/ByteOrder;)F
    .locals 3

    .line 288
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 289
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    .line 290
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    .line 291
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    .line 293
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, p1, :cond_0

    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 p2, v1, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    goto :goto_0

    :cond_0
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, v2, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, v0

    .line 298
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static toFloat([BLjava/nio/ByteOrder;)F
    .locals 1

    const/4 v0, 0x0

    .line 284
    invoke-static {p0, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toFloat([BILjava/nio/ByteOrder;)F

    move-result p0

    return p0
.end method

.method private static toFloats([BIILjava/nio/ByteOrder;)[F
    .locals 3

    .line 307
    div-int/lit8 p2, p2, 0x4

    new-array v0, p2, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p1

    .line 309
    invoke-static {p0, v2, p3}, Lorg/apache/commons/imaging/common/ByteConversions;->toFloat([BILjava/nio/ByteOrder;)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toFloats([BLjava/nio/ByteOrder;)[F
    .locals 2

    const/4 v0, 0x0

    .line 302
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toFloats([BIILjava/nio/ByteOrder;)[F

    move-result-object p0

    return-object p0
.end method

.method public static toInt([BILjava/nio/ByteOrder;)I
    .locals 3

    .line 259
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 260
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    .line 261
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    .line 262
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    .line 263
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, p1, :cond_0

    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 p2, v1, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0

    :cond_0
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, v2, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static toInt([BLjava/nio/ByteOrder;)I
    .locals 1

    const/4 v0, 0x0

    .line 255
    invoke-static {p0, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toInt([BILjava/nio/ByteOrder;)I

    move-result p0

    return p0
.end method

.method private static toInts([BIILjava/nio/ByteOrder;)[I
    .locals 3

    .line 276
    div-int/lit8 p2, p2, 0x4

    new-array v0, p2, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p1

    .line 278
    invoke-static {p0, v2, p3}, Lorg/apache/commons/imaging/common/ByteConversions;->toInt([BILjava/nio/ByteOrder;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toInts([BLjava/nio/ByteOrder;)[I
    .locals 2

    const/4 v0, 0x0

    .line 271
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toInts([BIILjava/nio/ByteOrder;)[I

    move-result-object p0

    return-object p0
.end method

.method private static toRational([BILjava/nio/ByteOrder;)Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 7

    .line 358
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 359
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    .line 360
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p1, 0x3

    .line 361
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p1, 0x4

    .line 362
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, p1, 0x5

    .line 363
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, p1, 0x6

    .line 364
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 p1, p1, 0x7

    .line 365
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    .line 368
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, p1, :cond_0

    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 p2, v1, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, v3

    shl-int/lit8 p2, v4, 0x18

    shl-int/lit8 v0, v5, 0x10

    or-int/2addr p2, v0

    shl-int/lit8 v0, v6, 0x8

    or-int/2addr p2, v0

    or-int/2addr p0, p2

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, v3, 0x18

    shl-int/lit8 p2, v2, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v1, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p2, v6, 0x10

    or-int/2addr p0, p2

    shl-int/lit8 p2, v5, 0x8

    or-int/2addr p0, p2

    or-int/2addr p0, v4

    .line 375
    :goto_0
    new-instance p2, Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-direct {p2, p1, p0}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    return-object p2
.end method

.method public static toRational([BLjava/nio/ByteOrder;)Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 1

    const/4 v0, 0x0

    .line 354
    invoke-static {p0, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toRational([BILjava/nio/ByteOrder;)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p0

    return-object p0
.end method

.method private static toRationals([BIILjava/nio/ByteOrder;)[Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 3

    .line 384
    div-int/lit8 p2, p2, 0x8

    new-array v0, p2, [Lorg/apache/commons/imaging/common/RationalNumber;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int/lit8 v2, v1, 0x8

    add-int/2addr v2, p1

    .line 386
    invoke-static {p0, v2, p3}, Lorg/apache/commons/imaging/common/ByteConversions;->toRational([BILjava/nio/ByteOrder;)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toRationals([BLjava/nio/ByteOrder;)[Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 2

    const/4 v0, 0x0

    .line 379
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toRationals([BIILjava/nio/ByteOrder;)[Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p0

    return-object p0
.end method

.method private static toShort([BILjava/nio/ByteOrder;)S
    .locals 0

    .line 211
    invoke-static {p0, p1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public static toShort([BLjava/nio/ByteOrder;)S
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-static {p0, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toShort([BILjava/nio/ByteOrder;)S

    move-result p0

    return p0
.end method

.method private static toShorts([BIILjava/nio/ByteOrder;)[S
    .locals 3

    .line 220
    div-int/lit8 p2, p2, 0x2

    new-array v0, p2, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    .line 222
    invoke-static {p0, v2, p3}, Lorg/apache/commons/imaging/common/ByteConversions;->toShort([BILjava/nio/ByteOrder;)S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toShorts([BLjava/nio/ByteOrder;)[S
    .locals 2

    const/4 v0, 0x0

    .line 215
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toShorts([BIILjava/nio/ByteOrder;)[S

    move-result-object p0

    return-object p0
.end method

.method public static toUInt16([BILjava/nio/ByteOrder;)I
    .locals 1

    .line 232
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    .line 233
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    .line 234
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, p1, :cond_0

    shl-int/lit8 p1, v0, 0x8

    or-int/2addr p0, p1

    return p0

    :cond_0
    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method public static toUInt16([BLjava/nio/ByteOrder;)I
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-static {p0, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result p0

    return p0
.end method

.method private static toUInt16s([BIILjava/nio/ByteOrder;)[I
    .locals 3

    .line 247
    div-int/lit8 p2, p2, 0x2

    new-array v0, p2, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    .line 249
    invoke-static {p0, v2, p3}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toUInt16s([BLjava/nio/ByteOrder;)[I
    .locals 2

    const/4 v0, 0x0

    .line 242
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16s([BIILjava/nio/ByteOrder;)[I

    move-result-object p0

    return-object p0
.end method
