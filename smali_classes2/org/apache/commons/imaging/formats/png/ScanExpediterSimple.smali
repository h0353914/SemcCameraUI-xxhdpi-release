.class Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;
.super Lorg/apache/commons/imaging/formats/png/ScanExpediter;
.source "ScanExpediterSimple.java"


# direct methods
.method public constructor <init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p10}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V

    return-void
.end method


# virtual methods
.method public drive()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget v0, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->bitsPerPixel:I

    iget v1, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->width:I

    mul-int/2addr v0, v1

    .line 41
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->getBitsToBytesRoundingUp(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    .line 44
    :goto_0
    iget v4, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->height:I

    if-ge v3, v4, :cond_1

    .line 45
    iget-object v4, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->is:Ljava/io/InputStream;

    iget v5, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->bytesPerPixel:I

    invoke-virtual {p0, v4, v0, v1, v5}, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->getNextScanline(Ljava/io/InputStream;I[BI)[B

    move-result-object v1

    .line 49
    new-instance v4, Lorg/apache/commons/imaging/formats/png/BitParser;

    iget v5, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->bitsPerPixel:I

    iget v6, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->bitDepth:I

    invoke-direct {v4, v1, v5, v6}, Lorg/apache/commons/imaging/formats/png/BitParser;-><init>([BII)V

    move v5, v2

    .line 52
    :goto_1
    iget v6, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->width:I

    if-ge v5, v6, :cond_0

    .line 53
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->getRGB(Lorg/apache/commons/imaging/formats/png/BitParser;I)I

    move-result v6

    .line 55
    iget-object v7, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->bi:Ljava/awt/image/BufferedImage;

    invoke-virtual {v7, v5, v3, v6}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
