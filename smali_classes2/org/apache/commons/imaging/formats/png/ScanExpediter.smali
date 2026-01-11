.class abstract Lorg/apache/commons/imaging/formats/png/ScanExpediter;
.super Ljava/lang/Object;
.source "ScanExpediter.java"


# instance fields
.field protected final bi:Ljava/awt/image/BufferedImage;

.field protected final bitDepth:I

.field protected final bitsPerPixel:I

.field protected final bytesPerPixel:I

.field protected final gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

.field protected final height:I

.field protected final is:Ljava/io/InputStream;

.field protected final pngChunkPLTE:Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;

.field protected final pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

.field protected final transparencyFilter:Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;

.field protected final width:I


# direct methods
.method public constructor <init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->width:I

    .line 55
    iput p2, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->height:I

    .line 56
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->is:Ljava/io/InputStream;

    .line 57
    iput-object p4, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->bi:Ljava/awt/image/BufferedImage;

    .line 58
    iput-object p5, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    .line 59
    iput p6, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->bitDepth:I

    .line 60
    invoke-virtual {p0, p7}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->getBitsToBytesRoundingUp(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->bytesPerPixel:I

    .line 61
    iput p7, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->bitsPerPixel:I

    .line 62
    iput-object p8, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->pngChunkPLTE:Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;

    .line 63
    iput-object p9, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    .line 64
    iput-object p10, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;

    return-void
.end method


# virtual methods
.method public abstract drive()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final getBitsToBytesRoundingUp(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x7

    .line 68
    div-int/lit8 p1, p1, 0x8

    return p1
.end method

.method protected getNextScanline(Ljava/io/InputStream;I[BI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    .line 206
    invoke-static {}, Lorg/apache/commons/imaging/formats/png/FilterType;->values()[Lorg/apache/commons/imaging/formats/png/FilterType;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 210
    const-string v1, "scanline"

    const-string v2, "PNG: missing image data"

    invoke-static {v1, p1, p2, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p1

    .line 212
    invoke-static {}, Lorg/apache/commons/imaging/formats/png/FilterType;->values()[Lorg/apache/commons/imaging/formats/png/FilterType;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-virtual {p0, p2, p1, p3, p4}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->unfilterScanline(Lorg/apache/commons/imaging/formats/png/FilterType;[B[BI)[B

    move-result-object p0

    return-object p0

    .line 207
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "PNG: unknown filterType: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 204
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PNG: missing filter type"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final getPixelARGB(IIII)I
    .locals 0

    and-int/lit16 p0, p1, 0xff

    shl-int/lit8 p0, p0, 0x18

    and-int/lit16 p1, p2, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    and-int/lit16 p1, p3, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p4, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method protected final getPixelRGB(III)I
    .locals 1

    const/16 v0, 0xff

    .line 79
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->getPixelARGB(IIII)I

    move-result p0

    return p0
.end method

.method protected getRGB(Lorg/apache/commons/imaging/formats/png/BitParser;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    sget-object v0, Lorg/apache/commons/imaging/formats/png/ScanExpediter$1;->$SwitchMap$org$apache$commons$imaging$formats$png$PngColorType:[I

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/png/PngColorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v5, 0x4

    if-eq v0, v5, :cond_2

    const/4 v5, 0x5

    if-ne v0, v5, :cond_1

    .line 156
    invoke-virtual {p1, p2, v2}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v0

    .line 157
    invoke-virtual {p1, p2, v1}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v1

    .line 158
    invoke-virtual {p1, p2, v3}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v2

    .line 159
    invoke-virtual {p1, p2, v4}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result p1

    .line 161
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    if-eqz p2, :cond_0

    .line 162
    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v0

    .line 163
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v1

    .line 164
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    invoke-virtual {p2, v2}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v2

    .line 167
    :cond_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->getPixelARGB(IIII)I

    move-result p0

    return p0

    .line 170
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "PNG: unknown color type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_2
    invoke-virtual {p1, p2, v2}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v0

    .line 146
    invoke-virtual {p1, p2, v1}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result p1

    .line 148
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    if-eqz p2, :cond_3

    .line 149
    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v0

    .line 152
    :cond_3
    invoke-virtual {p0, p1, v0, v0, v0}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->getPixelARGB(IIII)I

    move-result p0

    return p0

    .line 132
    :cond_4
    invoke-virtual {p1, p2, v2}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSample(II)I

    move-result p1

    .line 134
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->pngChunkPLTE:Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;

    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->getRGB(I)I

    move-result p2

    .line 136
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;

    if-eqz p0, :cond_5

    .line 137
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;->filter(II)I

    move-result p2

    :cond_5
    return p2

    .line 107
    :cond_6
    invoke-virtual {p1, p2, v2}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v0

    .line 108
    invoke-virtual {p1, p2, v1}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result v1

    .line 109
    invoke-virtual {p1, p2, v3}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result p1

    .line 111
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->getPixelRGB(III)I

    move-result p2

    .line 113
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;

    if-eqz v2, :cond_7

    const/4 v3, -0x1

    .line 114
    invoke-virtual {v2, p2, v3}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;->filter(II)I

    move-result p2

    .line 117
    :cond_7
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    if-eqz v2, :cond_8

    const/high16 v3, -0x1000000

    and-int/2addr p2, v3

    shr-int/lit8 p2, p2, 0x18

    .line 120
    invoke-virtual {v2, v0}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v0

    .line 121
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    invoke-virtual {v2, v1}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result v1

    .line 122
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    invoke-virtual {v2, p1}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result p1

    .line 123
    invoke-virtual {p0, p2, v0, v1, p1}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->getPixelARGB(IIII)I

    move-result p2

    :cond_8
    return p2

    .line 90
    :cond_9
    invoke-virtual {p1, p2, v2}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSampleAsByte(II)I

    move-result p1

    .line 92
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->gammaCorrection:Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    if-eqz p2, :cond_a

    .line 93
    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctSample(I)I

    move-result p1

    .line 96
    :cond_a
    invoke-virtual {p0, p1, p1, p1}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->getPixelRGB(III)I

    move-result p2

    .line 98
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->transparencyFilter:Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;

    if-eqz p0, :cond_b

    .line 99
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;->filter(II)I

    move-result p2

    :cond_b
    return p2
.end method

.method protected getScanlineFilter(Lorg/apache/commons/imaging/formats/png/FilterType;I)Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 175
    sget-object p0, Lorg/apache/commons/imaging/formats/png/ScanExpediter$1;->$SwitchMap$org$apache$commons$imaging$formats$png$FilterType:[I

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/png/FilterType;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 185
    :cond_0
    new-instance p0, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterPaeth;

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterPaeth;-><init>(I)V

    return-object p0

    .line 183
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterAverage;

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterAverage;-><init>(I)V

    return-object p0

    .line 181
    :cond_2
    new-instance p0, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterUp;

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterUp;-><init>()V

    return-object p0

    .line 179
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterSub;

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterSub;-><init>(I)V

    return-object p0

    .line 177
    :cond_4
    new-instance p0, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterNone;

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilterNone;-><init>()V

    return-object p0
.end method

.method protected unfilterScanline(Lorg/apache/commons/imaging/formats/png/FilterType;[B[BI)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1, p4}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->getScanlineFilter(Lorg/apache/commons/imaging/formats/png/FilterType;I)Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilter;

    move-result-object p0

    .line 195
    array-length p1, p2

    new-array p1, p1, [B

    .line 196
    invoke-interface {p0, p2, p1, p3}, Lorg/apache/commons/imaging/formats/png/scanlinefilters/ScanlineFilter;->unfilter([B[B[B)V

    return-object p1
.end method
