.class public Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;
.super Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;
.source "JpegIptcRewriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;-><init>()V

    return-void
.end method


# virtual methods
.method public removeIPTC(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 60
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->removeIPTC(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeIPTC(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 93
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->removeIPTC(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeIPTC(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    move-result-object p1

    .line 111
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 112
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->findPhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 115
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Image contains more than one Photoshop App13 segment."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->removePhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 119
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v2, 0x0

    .line 120
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    .line 122
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 123
    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;

    invoke-direct {v3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;-><init>()V

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentData:[B

    invoke-virtual {v3, v4, v2}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->parsePhotoshopSegment([BLjava/util/Map;)Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;->getNonIptcBlocks()Ljava/util/List;

    move-result-object v2

    .line 126
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v4, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;

    invoke-direct {v4, v3, v2}, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 129
    new-instance v2, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;

    invoke-direct {v2}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;-><init>()V

    invoke-virtual {v2, v4}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->writePhotoshopApp13Segment(Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)[B

    move-result-object v2

    .line 131
    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    iget v4, v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;-><init>(I[B)V

    .line 133
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {v1, p1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 135
    :cond_1
    invoke-virtual {p0, p2, v1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V

    return-void
.end method

.method public removeIPTC([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 76
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    .line 77
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->removeIPTC(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public writeIPTC(Ljava/io/File;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 190
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 191
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->writeIPTC(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)V

    return-void
.end method

.method public writeIPTC(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 172
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->writeIPTC(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)V

    return-void
.end method

.method public writeIPTC(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 209
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    move-result-object p1

    .line 210
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 211
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->findPhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 214
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Image contains more than one Photoshop App13 segment."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 217
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->removePhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 221
    invoke-virtual {p3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;->getNonIptcBlocks()Ljava/util/List;

    move-result-object v0

    .line 222
    new-instance v2, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;

    invoke-direct {v2}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;-><init>()V

    invoke-virtual {p3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;->getRecords()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->writeIPTCBlock(Ljava/util/List;)[B

    move-result-object v2

    const/4 v3, 0x0

    .line 225
    new-array v4, v3, [B

    .line 226
    new-instance v5, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;

    const/16 v6, 0x404

    invoke-direct {v5, v6, v4, v2}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;-><init>(I[B[B)V

    .line 227
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v2, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;

    invoke-virtual {p3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;->getRecords()Ljava/util/List;

    move-result-object p3

    invoke-direct {v2, p3, v0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 231
    new-instance p3, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;

    invoke-direct {p3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;-><init>()V

    invoke-virtual {p3, v2}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->writePhotoshopApp13Segment(Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)[B

    move-result-object p3

    .line 232
    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    const v2, 0xffed

    invoke-direct {v0, v2, p3}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;-><init>(I[B)V

    .line 234
    new-array p3, v1, [Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    aput-object v0, p3, v3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->insertAfterLastAppSegments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 237
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V

    return-void
.end method

.method public writeIPTC([BLjava/io/OutputStream;Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 153
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    .line 154
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->writeIPTC(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)V

    return-void
.end method
