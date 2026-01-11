.class public Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;
.super Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;
.source "TiffImageWriterLossy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;-><init>(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private updateOffsetsStep(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/16 p1, 0x8

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    int-to-long v1, p1

    .line 60
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->setOffset(J)V

    .line 61
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getItemLength()I

    move-result v0

    add-int/2addr p1, v0

    .line 64
    invoke-static {v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;->imageDataPaddingLength(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeStep(Lorg/apache/commons/imaging/common/BinaryOutputStream;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/BinaryOutputStream;",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;->writeImageFileHeader(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    .line 74
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    .line 75
    invoke-virtual {p2, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->writeItem(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    .line 77
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getItemLength()I

    move-result p2

    .line 79
    invoke-static {p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;->imageDataPaddingLength(I)I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 81
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public write(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;->validateDirectories(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;

    move-result-object v0

    .line 44
    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getOutputItems(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;)Ljava/util/List;

    move-result-object p2

    .line 47
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;->updateOffsetsStep(Ljava/util/List;)V

    .line 49
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->updateOffsets(Ljava/nio/ByteOrder;)V

    .line 51
    new-instance v0, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 53
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;->writeStep(Lorg/apache/commons/imaging/common/BinaryOutputStream;Ljava/util/List;)V

    return-void
.end method
