.class Lorg/apache/commons/imaging/palette/MedianCutPalette;
.super Lorg/apache/commons/imaging/palette/SimplePalette;
.source "MedianCutPalette.java"


# instance fields
.field private final root:Lorg/apache/commons/imaging/palette/ColorGroup;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/palette/ColorGroup;[I)V
    .locals 0

    .line 23
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/palette/SimplePalette;-><init>([I)V

    .line 24
    iput-object p1, p0, Lorg/apache/commons/imaging/palette/MedianCutPalette;->root:Lorg/apache/commons/imaging/palette/ColorGroup;

    return-void
.end method


# virtual methods
.method public getPaletteIndex(I)I
    .locals 1

    .line 29
    iget-object p0, p0, Lorg/apache/commons/imaging/palette/MedianCutPalette;->root:Lorg/apache/commons/imaging/palette/ColorGroup;

    .line 31
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->cut:Lorg/apache/commons/imaging/palette/ColorGroupCut;

    if-eqz v0, :cond_0

    .line 32
    iget-object p0, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->cut:Lorg/apache/commons/imaging/palette/ColorGroupCut;

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/palette/ColorGroupCut;->getColorGroup(I)Lorg/apache/commons/imaging/palette/ColorGroup;

    move-result-object p0

    goto :goto_0

    .line 35
    :cond_0
    iget p0, p0, Lorg/apache/commons/imaging/palette/ColorGroup;->paletteIndex:I

    return p0
.end method
