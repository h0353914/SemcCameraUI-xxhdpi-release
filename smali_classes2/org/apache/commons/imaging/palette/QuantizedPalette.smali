.class public Lorg/apache/commons/imaging/palette/QuantizedPalette;
.super Ljava/lang/Object;
.source "QuantizedPalette.java"

# interfaces
.implements Lorg/apache/commons/imaging/palette/Palette;


# instance fields
.field private final precision:I

.field private final straight:[Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

.field private final subsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/ColorSpaceSubset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/ColorSpaceSubset;",
            ">;I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->subsets:Ljava/util/List;

    .line 29
    iput p2, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->precision:I

    mul-int/lit8 v0, p2, 0x3

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 31
    new-array v0, v0, [Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    iput-object v0, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->straight:[Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    const/4 v0, 0x0

    move v2, v0

    .line 33
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 34
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    .line 35
    invoke-virtual {v3, v2}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->setIndex(I)V

    .line 37
    iget-object v4, v3, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v4, v4, v0

    :goto_1
    iget-object v5, v3, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v5, v5, v0

    if-gt v4, v5, :cond_2

    .line 38
    iget-object v5, v3, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v5, v5, v1

    :goto_2
    iget-object v6, v3, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v1

    if-gt v5, v6, :cond_1

    .line 39
    iget-object v6, v3, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    :goto_3
    iget-object v8, v3, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v8, v8, v7

    if-gt v6, v8, :cond_0

    mul-int/lit8 v8, p2, 0x2

    shl-int v8, v4, v8

    shl-int v9, v5, p2

    or-int/2addr v8, v9

    or-int/2addr v8, v6

    .line 43
    iget-object v9, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->straight:[Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    aput-object v3, v9, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getEntry(I)I
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->subsets:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    .line 62
    iget p0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->rgb:I

    return p0
.end method

.method public getPaletteIndex(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 51
    iget v0, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->precision:I

    const/4 v1, 0x1

    shl-int v2, v1, v0

    sub-int/2addr v2, v1

    mul-int/lit8 v1, v0, 0x3

    rsub-int/lit8 v1, v1, 0x18

    shr-int v1, p1, v1

    shl-int/lit8 v3, v0, 0x1

    shl-int v3, v2, v3

    and-int/2addr v1, v3

    mul-int/lit8 v3, v0, 0x2

    rsub-int/lit8 v3, v3, 0x10

    shr-int v3, p1, v3

    shl-int v4, v2, v0

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    rsub-int/lit8 v0, v0, 0x8

    shr-int/2addr p1, v0

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    .line 57
    iget-object p0, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->straight:[Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->getIndex()I

    move-result p0

    return p0
.end method

.method public length()I
    .locals 0

    .line 66
    iget-object p0, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->subsets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
