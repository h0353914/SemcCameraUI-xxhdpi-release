.class public Lorg/apache/commons/imaging/palette/MedianCutQuantizer;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"


# instance fields
.field private final ignoreAlpha:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->ignoreAlpha:Z

    return-void
.end method

.method private groupColors1(Ljava/awt/image/BufferedImage;II)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "II)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/imaging/palette/ColorCount;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v9

    .line 40
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v10

    .line 42
    new-array v11, v9, [I

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v10, :cond_4

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    move v3, v13

    move v4, v9

    move-object v6, v11

    move v8, v9

    .line 44
    invoke-virtual/range {v1 .. v8}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    move v1, v12

    :goto_1
    if-ge v1, v9, :cond_3

    .line 46
    aget v2, v11, v1

    move-object v3, p0

    .line 48
    iget-boolean v4, v3, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->ignoreAlpha:Z

    if-eqz v4, :cond_0

    const v4, 0xffffff

    and-int/2addr v2, v4

    :cond_0
    move v4, v2

    and-int v4, v4, p3

    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/palette/ColorCount;

    if-nez v5, :cond_1

    .line 55
    new-instance v5, Lorg/apache/commons/imaging/palette/ColorCount;

    invoke-direct {v5, v4}, Lorg/apache/commons/imaging/palette/ColorCount;-><init>(I)V

    .line 56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    move/from16 v6, p2

    if-le v4, v6, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_1
    move/from16 v6, p2

    .line 61
    :cond_2
    iget v4, v5, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v5, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v3, p0

    move/from16 v6, p2

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public groupColors(Ljava/awt/image/BufferedImage;I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/imaging/palette/ColorCount;",
            ">;"
        }
    .end annotation

    const/4 p2, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge p2, v0, :cond_1

    const/16 v0, 0xff

    shl-int v1, v0, p2

    and-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x8

    or-int/2addr v1, v0

    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mask("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    const v1, 0x7fffffff

    .line 77
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->groupColors1(Ljava/awt/image/BufferedImage;II)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    new-instance p0, Ljava/lang/Error;

    const-string p1, ""

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public process(Ljava/awt/image/BufferedImage;ILorg/apache/commons/imaging/palette/MedianCut;Z)Lorg/apache/commons/imaging/palette/Palette;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->groupColors(Ljava/awt/image/BufferedImage;I)Ljava/util/Map;

    move-result-object p1

    .line 90
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p2, :cond_3

    if-eqz p4, :cond_0

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "lossless palette: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 96
    :cond_0
    new-array p2, v0, [I

    .line 97
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    .line 101
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/palette/ColorCount;

    .line 102
    iget p1, p1, Lorg/apache/commons/imaging/palette/ColorCount;->argb:I

    aput p1, p2, v1

    .line 103
    iget-boolean p1, p0, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->ignoreAlpha:Z

    if-eqz p1, :cond_1

    .line 104
    aget p1, p2, v1

    const/high16 p4, -0x1000000

    or-int/2addr p1, p4

    aput p1, p2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/palette/SimplePalette;-><init>([I)V

    return-object p0

    :cond_3
    if-eqz p4, :cond_4

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "discrete colors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 115
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    new-instance v3, Lorg/apache/commons/imaging/palette/ColorGroup;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean p1, p0, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->ignoreAlpha:Z

    invoke-direct {v3, v4, p1}, Lorg/apache/commons/imaging/palette/ColorGroup;-><init>(Ljava/util/List;Z)V

    .line 117
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, p2, :cond_6

    .line 120
    iget-boolean p1, p0, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->ignoreAlpha:Z

    invoke-interface {p3, v2, p1}, Lorg/apache/commons/imaging/palette/MedianCut;->performNextMedianCut(Ljava/util/List;Z)Z

    move-result p1

    if-nez p1, :cond_5

    .line 125
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p4, :cond_7

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "palette size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 130
    :cond_7
    new-array p1, p0, [I

    .line 132
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_9

    .line 133
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/imaging/palette/ColorGroup;

    .line 135
    invoke-virtual {p2}, Lorg/apache/commons/imaging/palette/ColorGroup;->getMedianValue()I

    move-result p3

    aput p3, p1, v1

    .line 137
    iput v1, p2, Lorg/apache/commons/imaging/palette/ColorGroup;->paletteIndex:I

    .line 139
    iget-object p3, p2, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x1

    if-ge p3, p4, :cond_8

    .line 140
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "empty color_group: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    if-le p0, v0, :cond_a

    .line 146
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p1, "palette_size > discrete_colors"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_a
    new-instance p0, Lorg/apache/commons/imaging/palette/MedianCutPalette;

    invoke-direct {p0, v3, p1}, Lorg/apache/commons/imaging/palette/MedianCutPalette;-><init>(Lorg/apache/commons/imaging/palette/ColorGroup;[I)V

    return-object p0
.end method
