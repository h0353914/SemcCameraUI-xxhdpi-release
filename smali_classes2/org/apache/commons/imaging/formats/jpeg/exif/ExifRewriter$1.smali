.class Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$1;
.super Ljava/lang/Object;
.source "ExifRewriter.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;

.field final synthetic val$exifPieces:Ljava/util/List;

.field final synthetic val$pieces:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$1;->this$0:Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$1;->val$pieces:Ljava/util/List;

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$1;->val$exifPieces:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginSOS()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public visitSOS(I[B[B)V
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$1;->val$pieces:Ljava/util/List;

    new-instance p1, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceImageData;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceImageData;-><init>([B[B)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitSegment(I[BI[B[B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const p3, 0xffe1

    if-eq p1, p3, :cond_0

    .line 162
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$1;->val$pieces:Ljava/util/List;

    new-instance p3, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;

    invoke-direct {p3, p1, p2, p4, p5}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;-><init>(I[B[B[B)V

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_0
    sget-object p3, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->EXIF_IDENTIFIER_CODE:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-static {p5, p3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->startsWith([BLorg/apache/commons/imaging/common/BinaryConstant;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 166
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$1;->val$pieces:Ljava/util/List;

    new-instance p3, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;

    invoke-direct {p3, p1, p2, p4, p5}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;-><init>(I[B[B[B)V

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_1
    new-instance p3, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegmentExif;

    invoke-direct {p3, p1, p2, p4, p5}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegmentExif;-><init>(I[B[B[B)V

    .line 175
    iget-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$1;->val$pieces:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$1;->val$exifPieces:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
