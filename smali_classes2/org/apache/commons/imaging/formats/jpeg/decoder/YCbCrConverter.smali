.class final Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;
.super Ljava/lang/Object;
.source "YCbCrConverter.java"


# static fields
.field private static final BLUES:[I

.field private static final GREENS1:[I

.field private static final GREENS2:[I

.field private static final REDS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/high16 v0, 0x10000

    .line 19
    new-array v1, v0, [I

    sput-object v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->REDS:[I

    .line 20
    new-array v1, v0, [I

    sput-object v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->BLUES:[I

    .line 21
    new-array v0, v0, [I

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->GREENS1:[I

    const/high16 v0, 0x20000

    .line 22
    new-array v0, v0, [I

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->GREENS2:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xff

    const/16 v3, 0x100

    if-ge v1, v3, :cond_3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_2

    add-int/lit8 v5, v4, -0x80

    int-to-float v5, v5

    const v6, 0x3fb374bc    # 1.402f

    mul-float/2addr v5, v6

    .line 33
    invoke-static {v5}, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->fastRound(F)I

    move-result v5

    add-int/2addr v5, v1

    if-gez v5, :cond_0

    move v5, v0

    :cond_0
    if-le v5, v2, :cond_1

    move v5, v2

    .line 40
    :cond_1
    sget-object v6, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->REDS:[I

    shl-int/lit8 v7, v4, 0x8

    or-int/2addr v7, v1

    shl-int/lit8 v5, v5, 0x10

    aput v5, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_7

    move v4, v0

    :goto_3
    if-ge v4, v3, :cond_6

    add-int/lit8 v5, v4, -0x80

    int-to-float v5, v5

    const v6, 0x3fe2d0e5    # 1.772f

    mul-float/2addr v5, v6

    .line 45
    invoke-static {v5}, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->fastRound(F)I

    move-result v5

    add-int/2addr v5, v1

    if-gez v5, :cond_4

    move v5, v0

    :cond_4
    if-le v5, v2, :cond_5

    move v5, v2

    .line 52
    :cond_5
    sget-object v6, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->BLUES:[I

    shl-int/lit8 v7, v4, 0x8

    or-int/2addr v7, v1

    aput v5, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move v1, v0

    :goto_4
    if-ge v1, v3, :cond_9

    move v4, v0

    :goto_5
    if-ge v4, v3, :cond_8

    add-int/lit8 v5, v1, -0x80

    int-to-float v5, v5

    const v6, 0x3eb0331e    # 0.34414f

    mul-float/2addr v5, v6

    add-int/lit8 v6, v4, -0x80

    int-to-float v6, v6

    const v7, 0x3f36d1e1    # 0.71414f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 84
    invoke-static {v5}, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->fastRound(F)I

    move-result v5

    .line 86
    sget-object v6, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->GREENS1:[I

    shl-int/lit8 v7, v1, 0x8

    or-int/2addr v7, v4

    add-int/lit16 v5, v5, 0x87

    aput v5, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    move v1, v0

    :goto_6
    if-ge v1, v3, :cond_d

    move v4, v0

    :goto_7
    const/16 v5, 0x10e

    if-ge v4, v5, :cond_c

    add-int/lit16 v5, v4, -0x87

    sub-int v5, v1, v5

    if-gez v5, :cond_a

    move v5, v0

    goto :goto_8

    :cond_a
    if-le v5, v2, :cond_b

    move v5, v2

    .line 97
    :cond_b
    :goto_8
    sget-object v6, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->GREENS2:[I

    shl-int/lit8 v7, v4, 0x8

    or-int/2addr v7, v1

    shl-int/lit8 v5, v5, 0x8

    aput v5, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertYCbCrToRGB(III)I
    .locals 2

    .line 111
    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->REDS:[I

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v1, p0

    aget v0, v0, v1

    .line 112
    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->GREENS1:[I

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p2, p1

    aget p2, v1, p2

    .line 113
    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->GREENS2:[I

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, p0

    aget p2, v1, p2

    .line 114
    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->BLUES:[I

    or-int/2addr p0, p1

    aget p0, v1, p0

    or-int p1, v0, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private static fastRound(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method
