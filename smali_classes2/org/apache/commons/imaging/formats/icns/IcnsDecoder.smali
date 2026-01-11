.class final Lorg/apache/commons/imaging/formats/icns/IcnsDecoder;
.super Ljava/lang/Object;
.source "IcnsDecoder.java"


# static fields
.field private static final PALETTE_4BPP:[I

.field private static final PALETTE_8BPP:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 28
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsDecoder;->PALETTE_4BPP:[I

    const/16 v0, 0x100

    .line 33
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsDecoder;->PALETTE_8BPP:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x30cfb
        -0x9bfe
        -0x22f7fa
        -0xdf77c
        -0xb9ff5b
        -0xffff2c
        -0xfd5416
        -0xe048ec
        -0xff9bef
        -0xa9d3fb
        -0x6f8ec6
        -0x3f3f40
        -0x7f7f80
        -0xbfbfc0
        -0x1000000
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x34
        -0x67
        -0x9a
        -0xcd
        -0x100
        -0x3301
        -0x3334
        -0x3367
        -0x339a
        -0x33cd
        -0x3400
        -0x6601
        -0x6634
        -0x6667
        -0x669a
        -0x66cd
        -0x6700
        -0x9901
        -0x9934
        -0x9967
        -0x999a
        -0x99cd
        -0x9a00
        -0xcc01
        -0xcc34
        -0xcc67
        -0xcc9a
        -0xcccd
        -0xcd00
        -0xff01
        -0xff34
        -0xff67
        -0xff9a
        -0xffcd
        -0x10000
        -0x330001
        -0x330034
        -0x330067
        -0x33009a
        -0x3300cd
        -0x330100
        -0x333301
        -0x333334
        -0x333367
        -0x33339a
        -0x3333cd
        -0x333400
        -0x336601
        -0x336634
        -0x336667
        -0x33669a
        -0x3366cd
        -0x336700
        -0x339901
        -0x339934
        -0x339967
        -0x33999a
        -0x3399cd
        -0x339a00
        -0x33cc01
        -0x33cc34
        -0x33cc67
        -0x33cc9a
        -0x33cccd
        -0x33cd00
        -0x33ff01
        -0x33ff34
        -0x33ff67
        -0x33ff9a
        -0x33ffcd
        -0x340000
        -0x660001
        -0x660034
        -0x660067
        -0x66009a
        -0x6600cd
        -0x660100
        -0x663301
        -0x663334
        -0x663367
        -0x66339a
        -0x6633cd
        -0x663400
        -0x666601
        -0x666634
        -0x666667
        -0x66669a
        -0x6666cd
        -0x666700
        -0x669901
        -0x669934
        -0x669967
        -0x66999a
        -0x6699cd
        -0x669a00
        -0x66cc01
        -0x66cc34
        -0x66cc67
        -0x66cc9a
        -0x66cccd
        -0x66cd00
        -0x66ff01
        -0x66ff34
        -0x66ff67
        -0x66ff9a
        -0x66ffcd
        -0x670000
        -0x990001
        -0x990034
        -0x990067
        -0x99009a
        -0x9900cd
        -0x990100
        -0x993301
        -0x993334
        -0x993367
        -0x99339a
        -0x9933cd
        -0x993400
        -0x996601
        -0x996634
        -0x996667
        -0x99669a
        -0x9966cd
        -0x996700
        -0x999901
        -0x999934
        -0x999967
        -0x99999a
        -0x9999cd
        -0x999a00
        -0x99cc01
        -0x99cc34
        -0x99cc67
        -0x99cc9a
        -0x99cccd
        -0x99cd00
        -0x99ff01
        -0x99ff34
        -0x99ff67
        -0x99ff9a
        -0x99ffcd
        -0x9a0000
        -0xcc0001
        -0xcc0034
        -0xcc0067
        -0xcc009a
        -0xcc00cd
        -0xcc0100
        -0xcc3301
        -0xcc3334
        -0xcc3367
        -0xcc339a
        -0xcc33cd
        -0xcc3400
        -0xcc6601
        -0xcc6634
        -0xcc6667
        -0xcc669a
        -0xcc66cd
        -0xcc6700
        -0xcc9901
        -0xcc9934
        -0xcc9967
        -0xcc999a
        -0xcc99cd
        -0xcc9a00
        -0xcccc01
        -0xcccc34
        -0xcccc67
        -0xcccc9a
        -0xcccccd
        -0xcccd00
        -0xccff01
        -0xccff34
        -0xccff67
        -0xccff9a
        -0xccffcd
        -0xcd0000
        -0xff0001
        -0xff0034
        -0xff0067
        -0xff009a
        -0xff00cd
        -0xff0100
        -0xff3301
        -0xff3334
        -0xff3367
        -0xff339a
        -0xff33cd
        -0xff3400
        -0xff6601
        -0xff6634
        -0xff6667
        -0xff669a
        -0xff66cd
        -0xff6700
        -0xff9901
        -0xff9934
        -0xff9967
        -0xff999a
        -0xff99cd
        -0xff9a00
        -0xffcc01
        -0xffcc34
        -0xffcc67
        -0xffcc9a
        -0xffcccd
        -0xffcd00
        -0xffff01
        -0xffff34
        -0xffff67
        -0xffff9a
        -0xffffcd
        -0x120000
        -0x230000
        -0x450000
        -0x560000
        -0x780000
        -0x890000
        -0xab0000
        -0xbc0000
        -0xde0000
        -0xef0000
        -0xff1200
        -0xff2300
        -0xff4500
        -0xff5600
        -0xff7800
        -0xff8900
        -0xffab00
        -0xffbc00
        -0xffde00
        -0xffef00
        -0xffff12
        -0xffff23
        -0xffff45
        -0xffff56
        -0xffff78
        -0xffff89
        -0xffffab
        -0xffffbc
        -0xffffde
        -0xffffef
        -0x111112
        -0x222223
        -0x444445
        -0x555556
        -0x777778
        -0x888889
        -0xaaaaab
        -0xbbbbbc
        -0xddddde
        -0xeeeeef
        -0x1000000
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static apply1BPPMask([BLorg/apache/commons/imaging/common/ImageBuilder;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/ImageBuilder;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/ImageBuilder;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    const/16 v1, 0x8

    div-int/2addr v0, v1

    .line 158
    array-length v2, p0

    mul-int/lit8 v3, v0, 0x2

    if-lt v2, v3, :cond_4

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    .line 164
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/ImageBuilder;->getHeight()I

    move-result v6

    if-ge v3, v6, :cond_3

    move v6, v2

    .line 165
    :goto_1
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/ImageBuilder;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_2

    const/16 v7, 0xff

    if-nez v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    .line 167
    aget-byte v0, p0, v0

    and-int/lit16 v5, v0, 0xff

    move v0, v4

    move v4, v1

    :cond_0
    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    move v7, v2

    :goto_2
    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, -0x1

    shl-int/lit8 v7, v7, 0x18

    const v8, 0xffffff

    .line 178
    invoke-virtual {p1, v6, v3}, Lorg/apache/commons/imaging/common/ImageBuilder;->getRGB(II)I

    move-result v9

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    invoke-virtual {p1, v6, v3, v7}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 161
    :cond_4
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "1 BPP mask underrun parsing ICNS file"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static apply8BPPMask([BLorg/apache/commons/imaging/common/ImageBuilder;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 184
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/ImageBuilder;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 185
    :goto_1
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/ImageBuilder;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 186
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/ImageBuilder;->getWidth()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const v4, 0xffffff

    .line 187
    invoke-virtual {p1, v2, v1}, Lorg/apache/commons/imaging/common/ImageBuilder;->getRGB(II)I

    move-result v5

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    invoke-virtual {p1, v2, v1, v3}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static decode1BPPImage(Lorg/apache/commons/imaging/formats/icns/IcnsType;[BLorg/apache/commons/imaging/common/ImageBuilder;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 93
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v5

    if-ge v1, v5, :cond_3

    move v5, v0

    .line 94
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_2

    if-nez v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 96
    aget-byte v2, p1, v2

    and-int/lit16 v4, v2, 0xff

    const/16 v2, 0x8

    move v8, v3

    move v3, v2

    move v2, v8

    :cond_0
    and-int/lit16 v6, v4, 0x80

    const/4 v7, -0x1

    if-eqz v6, :cond_1

    const/high16 v6, -0x1000000

    goto :goto_2

    :cond_1
    move v6, v7

    :goto_2
    shl-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v7

    .line 107
    invoke-virtual {p2, v5, v1, v6}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static decode32BPPImage(Lorg/apache/commons/imaging/formats/icns/IcnsType;[BLorg/apache/commons/imaging/common/ImageBuilder;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 139
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 140
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v4

    mul-int/2addr v4, v1

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v4

    mul-int/2addr v4, v1

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 145
    invoke-virtual {p2, v2, v1, v3}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static decode4BPPImage(Lorg/apache/commons/imaging/formats/icns/IcnsType;[BLorg/apache/commons/imaging/common/ImageBuilder;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 115
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v4

    if-ge v1, v4, :cond_2

    move v4, v0

    .line 116
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_1

    if-nez v3, :cond_0

    .line 119
    aget-byte v5, p1, v2

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v2, 0x1

    .line 121
    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0xf

    move v7, v5

    move v5, v2

    move v2, v7

    :goto_2
    xor-int/lit8 v3, v3, 0x1

    .line 124
    sget-object v6, Lorg/apache/commons/imaging/formats/icns/IcnsDecoder;->PALETTE_4BPP:[I

    aget v5, v6, v5

    invoke-virtual {p2, v4, v1, v5}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static decode8BPPImage(Lorg/apache/commons/imaging/formats/icns/IcnsType;[BLorg/apache/commons/imaging/common/ImageBuilder;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 130
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 131
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 132
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 133
    sget-object v4, Lorg/apache/commons/imaging/formats/icns/IcnsDecoder;->PALETTE_8BPP:[I

    aget v3, v4, v3

    invoke-virtual {p2, v2, v1, v3}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static decodeAllImages([Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;",
            ")",
            "Ljava/util/List<",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_11

    aget-object v4, p0, v3

    .line 197
    iget v5, v4, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;->type:I

    invoke-static {v5}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->findImageType(I)Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-result-object v5

    if-nez v5, :cond_0

    goto/16 :goto_8

    .line 204
    :cond_0
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->hasMask()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v9, v4

    move-object v6, v5

    goto :goto_4

    .line 208
    :cond_1
    invoke-static {v5}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->find8BPPMaskType(Lorg/apache/commons/imaging/formats/icns/IcnsType;)Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 210
    array-length v7, p0

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, p0, v8

    .line 211
    iget v10, v9, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;->type:I

    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getType()I

    move-result v11

    if-ne v10, v11, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_5

    .line 218
    invoke-static {v5}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->find1BPPMaskType(Lorg/apache/commons/imaging/formats/icns/IcnsType;)Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 220
    array-length v7, p0

    move v8, v2

    :goto_3
    if-ge v8, v7, :cond_5

    aget-object v10, p0, v8

    .line 221
    iget v11, v10, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;->type:I

    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getType()I

    move-result v12

    if-ne v11, v12, :cond_4

    move-object v9, v10

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 231
    :cond_5
    :goto_4
    sget-object v7, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_256x256_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    if-eq v5, v7, :cond_10

    sget-object v7, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_512x512_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    if-ne v5, v7, :cond_6

    goto/16 :goto_8

    .line 236
    :cond_6
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getBitsPerPixel()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x7

    const/16 v8, 0x8

    div-int/2addr v7, v8

    .line 239
    iget-object v10, v4, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;->data:[B

    array-length v10, v10

    const/16 v11, 0x20

    if-ge v10, v7, :cond_8

    .line 240
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getBitsPerPixel()I

    move-result v7

    if-ne v7, v11, :cond_7

    .line 241
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v10

    iget-object v4, v4, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;->data:[B

    invoke-static {v7, v10, v4}, Lorg/apache/commons/imaging/formats/icns/Rle24Compression;->decompress(II[B)[B

    move-result-object v4

    goto :goto_5

    .line 245
    :cond_7
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Short image data but not a 32 bit compressed type"

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 248
    :cond_8
    iget-object v4, v4, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;->data:[B

    .line 251
    :goto_5
    new-instance v7, Lorg/apache/commons/imaging/common/ImageBuilder;

    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v10

    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v12

    const/4 v13, 0x1

    invoke-direct {v7, v10, v12, v13}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZ)V

    .line 253
    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getBitsPerPixel()I

    move-result v10

    if-eq v10, v13, :cond_c

    const/4 v12, 0x4

    if-eq v10, v12, :cond_b

    if-eq v10, v8, :cond_a

    if-ne v10, v11, :cond_9

    .line 264
    invoke-static {v5, v4, v7}, Lorg/apache/commons/imaging/formats/icns/IcnsDecoder;->decode32BPPImage(Lorg/apache/commons/imaging/formats/icns/IcnsType;[BLorg/apache/commons/imaging/common/ImageBuilder;)V

    goto :goto_6

    .line 267
    :cond_9
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported bit depth "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getBitsPerPixel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 261
    :cond_a
    invoke-static {v5, v4, v7}, Lorg/apache/commons/imaging/formats/icns/IcnsDecoder;->decode8BPPImage(Lorg/apache/commons/imaging/formats/icns/IcnsType;[BLorg/apache/commons/imaging/common/ImageBuilder;)V

    goto :goto_6

    .line 258
    :cond_b
    invoke-static {v5, v4, v7}, Lorg/apache/commons/imaging/formats/icns/IcnsDecoder;->decode4BPPImage(Lorg/apache/commons/imaging/formats/icns/IcnsType;[BLorg/apache/commons/imaging/common/ImageBuilder;)V

    goto :goto_6

    .line 255
    :cond_c
    invoke-static {v5, v4, v7}, Lorg/apache/commons/imaging/formats/icns/IcnsDecoder;->decode1BPPImage(Lorg/apache/commons/imaging/formats/icns/IcnsType;[BLorg/apache/commons/imaging/common/ImageBuilder;)V

    :goto_6
    if-eqz v9, :cond_f

    .line 271
    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getBitsPerPixel()I

    move-result v4

    if-ne v4, v13, :cond_d

    .line 272
    iget-object v4, v9, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;->data:[B

    invoke-static {v4, v7}, Lorg/apache/commons/imaging/formats/icns/IcnsDecoder;->apply1BPPMask([BLorg/apache/commons/imaging/common/ImageBuilder;)V

    goto :goto_7

    .line 273
    :cond_d
    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getBitsPerPixel()I

    move-result v4

    if-ne v4, v8, :cond_e

    .line 274
    iget-object v4, v9, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;->data:[B

    invoke-static {v4, v7}, Lorg/apache/commons/imaging/formats/icns/IcnsDecoder;->apply8BPPMask([BLorg/apache/commons/imaging/common/ImageBuilder;)V

    goto :goto_7

    .line 276
    :cond_e
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupport mask bit depth "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getBitsPerPixel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 280
    :cond_f
    :goto_7
    invoke-virtual {v7}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_11
    return-object v0
.end method
