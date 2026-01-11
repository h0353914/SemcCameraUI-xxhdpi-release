.class public Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "ExifRewriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$ExifOverflowException;,
        Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceImageData;,
        Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegmentExif;,
        Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;,
        Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;,
        Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;-><init>(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    new-instance v2, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$1;-><init>(Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;Ljava/util/List;Ljava/util/List;)V

    .line 182
    new-instance p0, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    .line 191
    new-instance p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method private writeExifSegment(Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;Z)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 578
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p3, :cond_0

    .line 581
    sget-object p3, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->EXIF_IDENTIFIER_CODE:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {p3, p0}, Lorg/apache/commons/imaging/common/BinaryConstant;->writeTo(Ljava/io/OutputStream;)V

    const/4 p3, 0x0

    .line 582
    invoke-virtual {p0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 583
    invoke-virtual {p0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 586
    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->write(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    .line 588
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private writeSegmentsReplacingExif(Ljava/io/OutputStream;Ljava/util/List;[B)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;",
            ">;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 503
    :try_start_0
    sget-object v2, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->SOI:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v2, p1}, Lorg/apache/commons/imaging/common/BinaryConstant;->writeTo(Ljava/io/OutputStream;)V

    .line 507
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;

    .line 508
    instance-of v4, v4, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegmentExif;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    move v3, v0

    goto :goto_0

    .line 513
    :cond_1
    const-string v2, "APP1 Segment is too long: "

    const v4, 0xffff

    const/16 v5, -0x1f

    if-nez v3, :cond_4

    if-eqz p3, :cond_4

    .line 514
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v5, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;)[B

    move-result-object v3

    .line 515
    array-length v6, p3

    if-gt v6, v4, :cond_3

    .line 519
    array-length v6, p3

    add-int/lit8 v6, v6, 0x2

    int-to-short v6, v6

    .line 520
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;)[B

    move-result-object v6

    .line 523
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;

    .line 525
    iget v7, v7, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;->marker:I

    const v8, 0xffe0

    if-ne v7, v8, :cond_2

    move v7, v0

    goto :goto_1

    :cond_2
    move v7, v1

    .line 528
    :goto_1
    new-instance v8, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegmentExif;

    const v9, 0xffe1

    invoke-direct {v8, v9, v3, v6, p3}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegmentExif;-><init>(I[B[B[B)V

    invoke-interface {p2, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 516
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$ExifOverflowException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$ExifOverflowException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 534
    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v3, v1

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;

    .line 535
    instance-of v7, v6, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegmentExif;

    if-eqz v7, :cond_8

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    if-nez p3, :cond_6

    :goto_4
    move v3, v0

    goto :goto_3

    .line 546
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v5, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;)[B

    move-result-object v3

    .line 547
    array-length v6, p3

    if-gt v6, v4, :cond_7

    .line 551
    array-length v6, p3

    add-int/lit8 v6, v6, 0x2

    int-to-short v6, v6

    .line 552
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;)[B

    move-result-object v6

    .line 554
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 555
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 556
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_4

    .line 548
    :cond_7
    new-instance p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$ExifOverflowException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$ExifOverflowException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 558
    :cond_8
    invoke-virtual {v6, p1}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;->write(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 563
    :cond_9
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object p1, p0, v1

    invoke-static {v0, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    new-array p2, v0, [Ljava/io/Closeable;

    aput-object p1, p2, v1

    invoke-static {v1, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public removeExifMetadata(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 211
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 212
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->removeExifMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeExifMetadata(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 243
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->removeExifMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeExifMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 259
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;

    move-result-object p1

    .line 260
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;->pieces:Ljava/util/List;

    const/4 v0, 0x0

    .line 268
    invoke-direct {p0, p2, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->writeSegmentsReplacingExif(Ljava/io/OutputStream;Ljava/util/List;[B)V

    return-void
.end method

.method public removeExifMetadata([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 227
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    .line 228
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->removeExifMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public updateExifMetadataLossless(Ljava/io/File;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 293
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 294
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->updateExifMetadataLossless(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    return-void
.end method

.method public updateExifMetadataLossless(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 345
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->updateExifMetadataLossless(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    return-void
.end method

.method public updateExifMetadataLossless(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 372
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;

    move-result-object p1

    .line 373
    iget-object v0, p1, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 378
    iget-object v1, p1, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;->exifPieces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 380
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;->exifPieces:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;

    .line 382
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;->segmentData:[B

    .line 383
    const-string v1, "trimmed exif bytes"

    const/4 v2, 0x6

    invoke-static {v1, p1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->remainingBytes(Ljava/lang/String;[BI)[B

    move-result-object p1

    .line 385
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;

    iget-object v2, p3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v1, v2, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;-><init>(Ljava/nio/ByteOrder;[B)V

    goto :goto_0

    .line 388
    :cond_0
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;

    iget-object p1, p3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v1, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;-><init>(Ljava/nio/ByteOrder;)V

    :goto_0
    const/4 p1, 0x1

    .line 392
    invoke-direct {p0, v1, p3, p1}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->writeExifSegment(Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;Z)[B

    move-result-object p1

    .line 394
    invoke-direct {p0, p2, v0, p1}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->writeSegmentsReplacingExif(Ljava/io/OutputStream;Ljava/util/List;[B)V

    return-void
.end method

.method public updateExifMetadataLossless([BLjava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 319
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    .line 320
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->updateExifMetadataLossless(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    return-void
.end method

.method public updateExifMetadataLossy(Ljava/io/File;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 462
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 463
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->updateExifMetadataLossy(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    return-void
.end method

.method public updateExifMetadataLossy(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 439
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->updateExifMetadataLossy(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    return-void
.end method

.method public updateExifMetadataLossy(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 485
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;

    move-result-object p1

    .line 486
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 488
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;

    iget-object v1, p3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;-><init>(Ljava/nio/ByteOrder;)V

    const/4 v1, 0x1

    .line 492
    invoke-direct {p0, v0, p3, v1}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->writeExifSegment(Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;Z)[B

    move-result-object p3

    .line 494
    invoke-direct {p0, p2, p1, p3}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->writeSegmentsReplacingExif(Ljava/io/OutputStream;Ljava/util/List;[B)V

    return-void
.end method

.method public updateExifMetadataLossy([BLjava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 416
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    .line 417
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->updateExifMetadataLossy(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    return-void
.end method
