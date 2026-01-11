.class public Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "JpegRewriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JpegSegmentOverflowException;,
        Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;,
        Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;,
        Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;,
        Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;,
        Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;
    }
.end annotation


# static fields
.field private static final EXIF_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

.field private static final JPEG_BYTE_ORDER:Ljava/nio/ByteOrder;

.field private static final PHOTOSHOP_APP13_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

.field private static final XMP_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->JPEG_BYTE_ORDER:Ljava/nio/ByteOrder;

    .line 42
    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$1;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$1;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->EXIF_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    .line 47
    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$2;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$2;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->XMP_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    .line 52
    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$3;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$3;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->PHOTOSHOP_APP13_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    .line 63
    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->JPEG_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method static synthetic access$000()Ljava/nio/ByteOrder;
    .locals 1

    .line 40
    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->JPEG_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-object v0
.end method


# virtual methods
.method protected analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    new-instance v2, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$4;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$4;-><init>(Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;Ljava/util/List;Ljava/util/List;)V

    .line 208
    new-instance p0, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    .line 210
    new-instance p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method protected filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;",
            "Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 242
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    .line 245
    instance-of v1, v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    if-eqz v1, :cond_1

    .line 246
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    invoke-interface {p2, v1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;->filter(Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;)Z

    move-result v1

    xor-int/lit8 v2, p3, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 247
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez p3, :cond_0

    .line 250
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method protected findPhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 228
    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->PHOTOSHOP_APP13_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected insertAfterLastAppSegments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            "U:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TU;>;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 p0, -0x1

    const/4 v0, 0x0

    move v1, p0

    .line 285
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 286
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    .line 287
    instance-of v3, v2, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    if-nez v3, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    check-cast v2, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    .line 292
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->isAppSegment()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x1

    if-ne v1, p0, :cond_4

    .line 299
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lt p0, v2, :cond_3

    .line 302
    invoke-interface {v0, v2, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_2

    .line 300
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p1, "JPEG file has no APP segments."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    add-int/2addr v1, v2

    .line 304
    invoke-interface {v0, v1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :goto_2
    return-object v0
.end method

.method protected insertBeforeFirstAppSegments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            "U:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TU;>;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 p0, -0x1

    const/4 v0, 0x0

    move v1, p0

    .line 260
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 261
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    .line 262
    instance-of v3, v2, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    if-nez v3, :cond_0

    goto :goto_1

    .line 266
    :cond_0
    check-cast v2, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    .line 267
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->isAppSegment()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v1, p0, :cond_1

    move v1, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eq v1, p0, :cond_3

    .line 278
    invoke-interface {v0, v1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-object v0

    .line 276
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p1, "JPEG file has no APP segments."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected removeExifSegments(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 232
    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->EXIF_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected removePhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 223
    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->PHOTOSHOP_APP13_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected removeXmpSegments(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 218
    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->XMP_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x1

    const/4 v0, 0x0

    .line 314
    :try_start_0
    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->SOI:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v1, p1}, Lorg/apache/commons/imaging/common/BinaryConstant;->writeTo(Ljava/io/OutputStream;)V

    .line 316
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    .line 317
    invoke-virtual {v1, p1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 321
    :cond_0
    new-array p2, p0, [Ljava/io/Closeable;

    aput-object p1, p2, v0

    invoke-static {p0, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p2

    new-array p0, p0, [Ljava/io/Closeable;

    aput-object p1, p0, v0

    invoke-static {v0, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p2
.end method
