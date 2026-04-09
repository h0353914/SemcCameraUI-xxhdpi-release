.class public Lorg/apache/commons/imaging/palette/PaletteFactory;
.super Ljava/lang/Object;
.source "PaletteFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;
    }
.end annotation


# static fields
.field public static final COMPONENTS:I = 0x3

.field private static final DEBUG:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private divide(Ljava/util/List;I[II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/ColorSpaceSubset;",
            ">;I[II)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/ColorSpaceSubset;",
            ">;"
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    .line 277
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 280
    :cond_2
    iget v5, v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    if-le v5, v1, :cond_1

    :goto_1
    move-object v2, v4

    move v1, v5

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    return-object p1

    .line 298
    :cond_5
    invoke-direct {p0, p3, v2, p4}, Lorg/apache/commons/imaging/palette/PaletteFactory;->divideSubset2([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;I)Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 301
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 302
    invoke-static {v1}, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->access$000(Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-static {v1}, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->access$100(Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 305
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, p2, :cond_0

    return-object p1
.end method

.method private divideSubset2([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;II)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lorg/apache/commons/imaging/palette/ColorSpaceSubset;",
            "II)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;",
            ">;"
        }
    .end annotation

    move-object v6, p2

    .line 181
    iget v0, v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    .line 183
    iget-object v1, v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    array-length v1, v1

    new-array v1, v1, [I

    .line 184
    iget-object v2, v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    iget-object v3, v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget-object v2, v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    array-length v2, v2

    new-array v2, v2, [I

    .line 186
    iget-object v3, v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    iget-object v5, v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    array-length v5, v5

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget-object v3, v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v3, v3, p3

    move v5, v3

    move v3, v4

    :goto_0
    iget-object v7, v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v7, v7, p3

    add-int/lit8 v7, v7, 0x1

    if-eq v5, v7, :cond_1

    .line 193
    aput v5, v1, p3

    .line 194
    aput v5, v2, p3

    move-object v7, p0

    move-object v8, p1

    move/from16 v9, p4

    .line 196
    invoke-direct {v7, v8, v1, v2, v9}, Lorg/apache/commons/imaging/palette/PaletteFactory;->getFrequencyTotal([I[I[II)I

    move-result v3

    add-int/2addr v4, v3

    .line 200
    div-int/lit8 v10, v0, 0x2

    if-lt v4, v10, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v7, p0

    move/from16 v9, p4

    :goto_1
    sub-int v8, v4, v3

    add-int/lit8 v10, v5, -0x1

    move-object v0, v7

    move-object v1, v6

    move v2, p3

    move v3, v9

    .line 208
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/palette/PaletteFactory;->finishDivision(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;IIII)Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;

    move-result-object v11

    move v4, v8

    move v5, v10

    .line 209
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/palette/PaletteFactory;->finishDivision(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;IIII)Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_2

    .line 214
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v0, :cond_3

    .line 217
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v1
.end method

.method private divideSubset2([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;I)Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;
    .locals 5

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 227
    invoke-direct {p0, p1, p2, v1, p3}, Lorg/apache/commons/imaging/palette/PaletteFactory;->divideSubset2([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    .line 228
    invoke-direct {p0, p1, p2, v1, p3}, Lorg/apache/commons/imaging/palette/PaletteFactory;->divideSubset2([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x2

    .line 229
    invoke-direct {p0, p1, p2, v1, p3}, Lorg/apache/commons/imaging/palette/PaletteFactory;->divideSubset2([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;II)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 234
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    const-wide p2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;

    .line 235
    invoke-static {v0}, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->access$000(Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    move-result-object v1

    .line 236
    invoke-static {v0}, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->access$100(Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    move-result-object v2

    .line 237
    iget v1, v1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    .line 238
    iget v2, v2, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    sub-int v3, v1, v2

    .line 240
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v3, v3

    .line 241
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v3, v1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    cmpg-double v1, v3, p2

    if-gez v1, :cond_0

    :goto_1
    move-object p1, v0

    move-wide p2, v3

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private finishDivision(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;IIII)Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;
    .locals 6

    .line 134
    iget p0, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    .line 136
    iget-object v0, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v0, v0, p2

    const/4 v1, 0x0

    if-lt p5, v0, :cond_5

    iget-object v0, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v0, v0, p2

    if-lt p5, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-lt p4, v0, :cond_4

    if-lt p4, p0, :cond_1

    goto :goto_1

    :cond_1
    sub-int v2, p0, p4

    if-lt v2, v0, :cond_3

    if-lt v2, p0, :cond_2

    goto :goto_0

    .line 150
    :cond_2
    iget-object p0, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    array-length p0, p0

    new-array p0, p0, [I

    .line 151
    iget-object v1, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    iget-object v3, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, p0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget-object v1, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    array-length v1, v1

    new-array v1, v1, [I

    .line 153
    iget-object v3, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    iget-object v5, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    array-length v5, v5

    invoke-static {v3, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    aput p5, v1, p2

    add-int/2addr p5, v0

    .line 156
    aput p5, p0, p2

    .line 168
    new-instance p2, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    iget-object p5, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    invoke-direct {p2, p4, p3, p5, v1}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;-><init>(II[I[I)V

    .line 169
    new-instance p4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    iget-object p1, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    invoke-direct {p4, v2, p3, p0, p1}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;-><init>(II[I[I)V

    .line 171
    new-instance p0, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;

    invoke-direct {p0, p2, p4}, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;-><init>(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;Lorg/apache/commons/imaging/palette/ColorSpaceSubset;)V

    return-object p0

    :cond_3
    :goto_0
    return-object v1

    :cond_4
    :goto_1
    return-object v1

    :cond_5
    :goto_2
    return-object v1
.end method

.method private getFrequencyTotal([I[I[II)I
    .locals 9

    const/4 p0, 0x2

    .line 113
    aget v0, p2, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    aget v3, p3, p0

    if-gt v0, v3, :cond_2

    mul-int v3, p0, p4

    shl-int v3, v0, v3

    const/4 v4, 0x1

    .line 115
    aget v5, p2, v4

    :goto_1
    aget v6, p3, v4

    if-gt v5, v6, :cond_1

    mul-int v6, v4, p4

    shl-int v6, v5, v6

    .line 117
    aget v7, p2, v1

    :goto_2
    aget v8, p3, v1

    if-gt v7, v8, :cond_0

    or-int v8, v3, v6

    or-int/2addr v8, v7

    .line 120
    aget v8, p1, v8

    add-int/2addr v2, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private pixelToQuantizationTableIndex(II)I
    .locals 4

    const/4 p0, 0x1

    shl-int v0, p0, p2

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    move v1, p0

    :goto_0
    const/4 v2, 0x3

    if-ge p0, v2, :cond_0

    and-int/lit16 v2, p1, 0xff

    shr-int/lit8 p1, p1, 0x8

    rsub-int/lit8 v3, p2, 0x8

    shr-int/2addr v2, v3

    shl-int/2addr v1, p2

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public countTransparentColors(Ljava/awt/image/BufferedImage;)I
    .locals 8

    .line 501
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    .line 502
    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 506
    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p0

    .line 507
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    const/4 v2, -0x1

    move v3, v2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    move v4, v3

    move v3, v0

    :goto_1
    if-ge v3, p0, :cond_3

    .line 513
    invoke-virtual {p1, v3, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v5

    shr-int/lit8 v6, v5, 0x18

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ge v6, v7, :cond_2

    if-gez v4, :cond_1

    move v4, v5

    goto :goto_2

    :cond_1
    if-eq v5, v4, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_4
    if-gez v3, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public countTrasparentColors([I)I
    .locals 6

    .line 483
    array-length p0, p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    aget v3, p1, v1

    shr-int/lit8 v4, v3, 0x18

    const/16 v5, 0xff

    and-int/2addr v4, v5

    if-ge v4, v5, :cond_1

    if-gez v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    if-eq v3, v2, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-gez v2, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public hasTransparency(Ljava/awt/image/BufferedImage;)Z
    .locals 1

    const/16 v0, 0xff

    .line 457
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;I)Z

    move-result p0

    return p0
.end method

.method public hasTransparency(Ljava/awt/image/BufferedImage;I)Z
    .locals 6

    .line 461
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p0

    .line 462
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    .line 464
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_3

    move v3, v2

    :goto_1
    if-ge v3, p0, :cond_2

    .line 470
    invoke-virtual {p1, v3, v1}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v4

    const/16 v5, 0xff

    shr-int/lit8 v4, v4, 0x18

    and-int/2addr v4, v5

    if-ge v4, p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public isGrayscale(Ljava/awt/image/BufferedImage;)Z
    .locals 9

    .line 432
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p0

    .line 433
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    .line 435
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-ne v3, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_4

    move v4, v1

    :goto_1
    if-ge v4, p0, :cond_3

    .line 442
    invoke-virtual {p1, v4, v3}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v5

    shr-int/lit8 v6, v5, 0x10

    const/16 v7, 0xff

    and-int/2addr v6, v7

    shr-int/lit8 v8, v5, 0x8

    and-int/2addr v8, v7

    shr-int/2addr v5, v1

    and-int/2addr v5, v7

    if-ne v6, v8, :cond_2

    if-eq v6, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public makeExactRgbPaletteFancy(Ljava/awt/image/BufferedImage;)Lorg/apache/commons/imaging/palette/Palette;
    .locals 11

    const/high16 p0, 0x200000

    .line 48
    new-array p0, p0, [B

    .line 50
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 51
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x7

    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    move v6, v2

    :goto_1
    if-ge v6, v0, :cond_0

    .line 55
    invoke-virtual {p1, v6, v3}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v7

    const v8, 0x1fffff

    and-int/2addr v8, v7

    shr-int/lit8 v7, v7, 0x15

    and-int/2addr v7, v4

    shl-int v7, v5, v7

    .line 59
    aget-byte v9, p0, v8

    or-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, p0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_1
    array-length p1, p0

    move v0, v2

    move v1, v0

    :goto_2
    const/16 v3, 0xff

    if-ge v0, p1, :cond_2

    aget-byte v6, p0, v0

    and-int/2addr v3, v6

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 73
    :cond_2
    new-array p1, v1, [I

    move v0, v2

    move v1, v0

    .line 75
    :goto_3
    array-length v6, p0

    if-ge v0, v6, :cond_5

    .line 76
    aget-byte v6, p0, v0

    and-int/2addr v6, v3

    const/16 v7, 0x80

    move v8, v1

    move v1, v2

    :goto_4
    const/16 v9, 0x8

    if-ge v1, v9, :cond_4

    and-int v9, v6, v7

    ushr-int/2addr v7, v5

    if-lez v9, :cond_3

    rsub-int/lit8 v9, v1, 0x7

    shl-int/lit8 v9, v9, 0x15

    or-int/2addr v9, v0

    add-int/lit8 v10, v8, 0x1

    .line 85
    aput v9, p1, v8

    move v8, v10

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v1, v8

    goto :goto_3

    .line 90
    :cond_5
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 91
    new-instance p0, Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/palette/SimplePalette;-><init>([I)V

    return-object p0
.end method

.method public makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;
    .locals 7

    .line 405
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 407
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 408
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_1

    .line 412
    invoke-virtual {p1, v4, v3}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v5, v6

    .line 415
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v5

    if-le v5, p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 421
    :cond_2
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 423
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 v0, v2, 0x1

    .line 424
    aput p2, p1, v2

    move v2, v0

    goto :goto_2

    .line 426
    :cond_3
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 428
    new-instance p0, Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/palette/SimplePalette;-><init>([I)V

    return-object p0
.end method

.method public makeQuantizedRgbPalette(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/Palette;
    .locals 10

    const/high16 v0, 0x40000

    .line 328
    new-array v0, v0, [I

    .line 330
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    .line 331
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    .line 333
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 334
    new-instance v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    mul-int v5, v1, v2

    const/4 v6, 0x6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;-><init>(II)V

    .line 335
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    move v7, v4

    :goto_1
    if-ge v7, v1, :cond_0

    .line 345
    invoke-virtual {p1, v7, v5}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v8

    .line 347
    invoke-direct {p0, v8, v6}, Lorg/apache/commons/imaging/palette/PaletteFactory;->pixelToQuantizationTableIndex(II)I

    move-result v8

    .line 349
    aget v9, v0, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 359
    :cond_1
    invoke-direct {p0, v3, p2, v0, v6}, Lorg/apache/commons/imaging/palette/PaletteFactory;->divide(Ljava/util/List;I[II)Ljava/util/List;

    move-result-object p0

    .line 366
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v4, p1, :cond_2

    .line 367
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    .line 369
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->setAverageRGB([I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 376
    :cond_2
    sget-object p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->RGB_COMPARATOR:Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 378
    new-instance p1, Lorg/apache/commons/imaging/palette/QuantizedPalette;

    invoke-direct {p1, p0, v6}, Lorg/apache/commons/imaging/palette/QuantizedPalette;-><init>(Ljava/util/List;I)V

    return-object p1
.end method

.method public makeQuantizedRgbaPalette(Ljava/awt/image/BufferedImage;ZI)Lorg/apache/commons/imaging/palette/Palette;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 392
    new-instance p0, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;-><init>(Z)V

    new-instance p2, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;

    invoke-direct {p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, p2, v0}, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->process(Ljava/awt/image/BufferedImage;ILorg/apache/commons/imaging/palette/MedianCut;Z)Lorg/apache/commons/imaging/palette/Palette;

    move-result-object p0

    return-object p0
.end method
