.class Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;
.super Ljava/lang/Object;
.source "PngWriter.java"

# interfaces
.implements Lorg/apache/commons/imaging/palette/Palette;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/png/PngWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransparentPalette"
.end annotation


# instance fields
.field private final palette:Lorg/apache/commons/imaging/palette/Palette;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/palette/Palette;)V
    .locals 0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;->palette:Lorg/apache/commons/imaging/palette/Palette;

    return-void
.end method


# virtual methods
.method public getEntry(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 323
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;->palette:Lorg/apache/commons/imaging/palette/Palette;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Lorg/apache/commons/imaging/palette/Palette;->getEntry(I)I

    move-result p0

    return p0
.end method

.method public getPaletteIndex(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 334
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;->palette:Lorg/apache/commons/imaging/palette/Palette;

    invoke-interface {p0, p1}, Lorg/apache/commons/imaging/palette/Palette;->getPaletteIndex(I)I

    move-result p0

    if-ltz p0, :cond_1

    add-int/lit8 p0, p0, 0x1

    :cond_1
    return p0
.end method

.method public length()I
    .locals 0

    .line 327
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;->palette:Lorg/apache/commons/imaging/palette/Palette;

    invoke-interface {p0}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
