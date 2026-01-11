.class Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;
.super Lorg/apache/commons/imaging/formats/png/ScanExpediter;
.source "ScanExpediterInterlaced.java"


# static fields
.field private static final COL_INCREMENT:[I

.field private static final ROW_INCREMENT:[I

.field private static final STARTING_COL:[I

.field private static final STARTING_ROW:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    .line 28
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->STARTING_ROW:[I

    .line 29
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->STARTING_COL:[I

    .line 30
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->ROW_INCREMENT:[I

    .line 31
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->COL_INCREMENT:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x4
        0x0
        0x2
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
        0x0
        0x2
        0x0
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x8
        0x8
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x8
        0x4
        0x4
        0x2
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V
    .locals 0

    .line 43
    invoke-direct/range {p0 .. p10}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V

    return-void
.end method

.method private visit(IILjava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/BitParser;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p4, p5}, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->getRGB(Lorg/apache/commons/imaging/formats/png/BitParser;I)I

    move-result p0

    .line 51
    invoke-virtual {p3, p1, p2, p0}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    return-void
.end method


# virtual methods
.method public drive()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-gt v1, v2, :cond_2

    .line 61
    sget-object v2, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->STARTING_ROW:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    const/4 v4, 0x0

    .line 64
    :goto_1
    iget v5, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->height:I

    if-ge v2, v5, :cond_1

    .line 65
    sget-object v5, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->STARTING_COL:[I

    aget v6, v5, v3

    .line 68
    iget v7, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->width:I

    if-ge v6, v7, :cond_0

    .line 70
    iget v7, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->width:I

    aget v5, v5, v3

    sub-int/2addr v7, v5

    sub-int/2addr v7, v0

    sget-object v5, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->COL_INCREMENT:[I

    aget v5, v5, v3

    div-int/2addr v7, v5

    add-int/2addr v7, v0

    .line 71
    iget v5, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->bitsPerPixel:I

    mul-int/2addr v5, v7

    .line 72
    invoke-virtual {p0, v5}, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->getBitsToBytesRoundingUp(I)I

    move-result v5

    .line 74
    iget-object v7, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->is:Ljava/io/InputStream;

    iget v8, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->bytesPerPixel:I

    invoke-virtual {p0, v7, v5, v4, v8}, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->getNextScanline(Ljava/io/InputStream;I[BI)[B

    move-result-object v4

    .line 78
    new-instance v11, Lorg/apache/commons/imaging/formats/png/BitParser;

    iget v5, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->bitsPerPixel:I

    iget v7, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->bitDepth:I

    invoke-direct {v11, v4, v5, v7}, Lorg/apache/commons/imaging/formats/png/BitParser;-><init>([BII)V

    const/4 v5, 0x0

    move v12, v5

    move v13, v6

    .line 80
    :goto_2
    iget v5, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->width:I

    if-ge v13, v5, :cond_0

    .line 81
    iget-object v8, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->bi:Ljava/awt/image/BufferedImage;

    move-object v5, p0

    move v6, v13

    move v7, v2

    move-object v9, v11

    move v10, v12

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->visit(IILjava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/BitParser;I)V

    .line 83
    sget-object v5, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->COL_INCREMENT:[I

    aget v5, v5, v3

    add-int/2addr v13, v5

    add-int/2addr v12, v0

    goto :goto_2

    .line 87
    :cond_0
    sget-object v5, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->ROW_INCREMENT:[I

    aget v5, v5, v3

    add-int/2addr v2, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
