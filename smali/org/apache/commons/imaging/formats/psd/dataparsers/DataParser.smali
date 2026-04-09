.class public abstract Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;
.super Ljava/lang/Object;
.source "DataParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBasicChannelsCount()I
.end method

.method protected abstract getRGB([[[IIILorg/apache/commons/imaging/formats/psd/ImageContents;)I
.end method

.method public final parseData([[[ILjava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/psd/ImageContents;)V
    .locals 7

    .line 28
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p2

    invoke-virtual {p2}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object p2

    .line 30
    iget-object v0, p3, Lorg/apache/commons/imaging/formats/psd/ImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    .line 31
    iget v1, v0, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->columns:I

    .line 32
    iget v0, v0, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->rows:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_0

    .line 36
    invoke-virtual {p0, p1, v4, v3, p3}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;->getRGB([[[IIILorg/apache/commons/imaging/formats/psd/ImageContents;)I

    move-result v5

    mul-int v6, v3, v1

    add-int/2addr v6, v4

    .line 37
    invoke-virtual {p2, v6, v5}, Ljava/awt/image/DataBuffer;->setElem(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
