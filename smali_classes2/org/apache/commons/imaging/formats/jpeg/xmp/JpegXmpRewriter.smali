.class public Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;
.super Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;
.source "JpegXmpRewriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;-><init>()V

    return-void
.end method

.method private writeXmpSegment([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 198
    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->XMP_IDENTIFIER:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v0, p0}, Lorg/apache/commons/imaging/common/BinaryConstant;->writeTo(Ljava/io/OutputStream;)V

    .line 199
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 201
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public removeXmpXml(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 56
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeXmpXml(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    move-result-object p1

    .line 104
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 105
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpSegments(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 106
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V

    return-void
.end method

.method public removeXmpXml([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    .line 72
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public updateXmpXml(Ljava/io/File;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 156
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 157
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->updateXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public updateXmpXml(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 139
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->updateXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public updateXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    move-result-object p1

    .line 175
    iget-object p1, p1, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 176
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpSegments(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    const-string v1, "utf-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    const/4 v1, 0x0

    .line 181
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 182
    array-length v2, p3

    const v3, 0xffff

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 183
    invoke-direct {p0, p3, v1, v2}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->writeXmpSegment([BII)[B

    move-result-object v3

    .line 185
    new-instance v4, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    const v5, 0xffe1

    invoke-direct {v4, v5, v3}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;-><init>(I[B)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v2

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->insertAfterLastAppSegments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 191
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V

    return-void
.end method

.method public updateXmpXml([BLjava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 122
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    .line 123
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->updateXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method
