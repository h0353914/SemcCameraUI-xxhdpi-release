.class public Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;
.super Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;
.source "JpegRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "JFIFPieceSegment"
.end annotation


# instance fields
.field public final marker:I

.field public final markerBytes:[B

.field public final segmentData:[B

.field public final segmentLengthBytes:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 3

    int-to-short v0, p1

    .line 94
    invoke-static {}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->access$000()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;)[B

    move-result-object v0

    array-length v1, p2

    add-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    invoke-static {}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->access$000()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;)[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;-><init>(I[B[B[B)V

    return-void
.end method

.method public constructor <init>(I[B[B[B)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;-><init>()V

    .line 102
    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    .line 103
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->markerBytes:[B

    .line 104
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentLengthBytes:[B

    .line 105
    iput-object p4, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentData:[B

    return-void
.end method


# virtual methods
.method public isApp1Segment()Z
    .locals 1

    .line 122
    iget p0, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    const v0, 0xffe1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAppSegment()Z
    .locals 2

    .line 126
    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    const v1, 0xffe0

    if-lt v0, v1, :cond_0

    iget p0, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    const v0, 0xffef

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExifSegment()Z
    .locals 3

    .line 130
    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    const/4 v1, 0x0

    const v2, 0xffe1

    if-eq v0, v2, :cond_0

    return v1

    .line 133
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentData:[B

    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->EXIF_IDENTIFIER_CODE:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-static {p0, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->startsWith([BLorg/apache/commons/imaging/common/BinaryConstant;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isPhotoshopApp13Segment()Z
    .locals 3

    .line 140
    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    const/4 v1, 0x0

    const v2, 0xffed

    if-eq v0, v2, :cond_0

    return v1

    .line 143
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;-><init>()V

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentData:[B

    invoke-virtual {v0, p0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->isPhotoshopJpegSegment([B)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isXmpSegment()Z
    .locals 3

    .line 150
    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    const/4 v1, 0x0

    const v2, 0xffe1

    if-eq v0, v2, :cond_0

    return v1

    .line 153
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentData:[B

    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->XMP_IDENTIFIER:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-static {p0, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->startsWith([BLorg/apache/commons/imaging/common/BinaryConstant;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected write(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->markerBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 117
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentLengthBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 118
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentData:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
