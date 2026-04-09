.class Lorg/apache/commons/imaging/formats/bmp/BmpWriterRgb;
.super Ljava/lang/Object;
.source "BmpWriterRgb.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/bmp/BmpWriter;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitsPerPixel()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public getImageData(Ljava/awt/image/BufferedImage;)[B
    .locals 9

    .line 47
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p0

    .line 48
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    .line 50
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_2

    move v4, v3

    move v3, v2

    :goto_1
    if-ge v3, p0, :cond_0

    .line 58
    invoke-virtual {p1, v3, v0}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v5, v6

    shr-int/lit8 v6, v5, 0x10

    const/16 v7, 0xff

    and-int/2addr v6, v7

    shr-int/lit8 v8, v5, 0x8

    and-int/2addr v8, v7

    shr-int/2addr v5, v2

    and-int/2addr v5, v7

    .line 65
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 66
    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 67
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v4

    .line 70
    :goto_2
    rem-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_1

    .line 71
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getPaletteSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writePalette(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
