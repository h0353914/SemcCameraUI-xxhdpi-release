.class Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;
.super Ljava/lang/Object;
.source "BmpWriterPalette.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/bmp/BmpWriter;


# instance fields
.field private final bitsPerSample:I

.field private final palette:Lorg/apache/commons/imaging/palette/SimplePalette;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/palette/SimplePalette;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->palette:Lorg/apache/commons/imaging/palette/SimplePalette;

    .line 34
    invoke-virtual {p1}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 p1, 0x1

    .line 35
    iput p1, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->bitsPerSample:I

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result p1

    const/16 v0, 0x10

    if-gt p1, v0, :cond_1

    const/4 p1, 0x4

    .line 37
    iput p1, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->bitsPerSample:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 39
    iput p1, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->bitsPerSample:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getBitsPerPixel()I
    .locals 0

    .line 48
    iget p0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->bitsPerSample:I

    return p0
.end method

.method public getImageData(Ljava/awt/image/BufferedImage;)[B
    .locals 12

    .line 67
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 68
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 70
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ltz v1, :cond_5

    move v7, v4

    move v4, v3

    :goto_1
    const/16 v8, 0xff

    const/16 v9, 0x8

    if-ge v4, v0, :cond_2

    .line 78
    invoke-virtual {p1, v4, v1}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v10

    const v11, 0xffffff

    and-int/2addr v10, v11

    .line 81
    iget-object v11, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->palette:Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-virtual {v11, v10}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v10

    .line 83
    iget v11, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->bitsPerSample:I

    if-ne v11, v9, :cond_0

    and-int/2addr v8, v10

    .line 84
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 88
    :cond_0
    iget v11, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->bitsPerSample:I

    shl-int/2addr v7, v11

    or-int/2addr v7, v10

    .line 89
    iget v10, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->bitsPerSample:I

    add-int/2addr v5, v10

    if-lt v5, v9, :cond_1

    and-int v5, v8, v7

    .line 91
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    move v5, v3

    move v7, v5

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-lez v5, :cond_3

    sub-int/2addr v9, v5

    shl-int v4, v7, v9

    and-int/2addr v4, v8

    .line 102
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    move v4, v3

    move v5, v4

    goto :goto_3

    :cond_3
    move v4, v7

    .line 108
    :goto_3
    rem-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_4

    .line 109
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 114
    :cond_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getPaletteSize()I
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->palette:Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result p0

    return p0
.end method

.method public writePalette(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 52
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->palette:Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 53
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->palette:Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-virtual {v2, v1}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result v2

    shr-int/lit8 v3, v2, 0x10

    const/16 v4, 0xff

    and-int/2addr v3, v4

    shr-int/lit8 v5, v2, 0x8

    and-int/2addr v5, v4

    shr-int/2addr v2, v0

    and-int/2addr v2, v4

    .line 59
    invoke-virtual {p1, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 60
    invoke-virtual {p1, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 61
    invoke-virtual {p1, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    .line 62
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
