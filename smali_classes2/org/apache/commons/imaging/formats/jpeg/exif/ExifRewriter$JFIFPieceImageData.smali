.class Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceImageData;
.super Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;
.source "ExifRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JFIFPieceImageData"
.end annotation


# instance fields
.field public final imageData:[B

.field public final markerBytes:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;-><init>(Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$1;)V

    .line 127
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceImageData;->markerBytes:[B

    .line 128
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceImageData;->imageData:[B

    return-void
.end method


# virtual methods
.method protected write(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceImageData;->markerBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 134
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceImageData;->imageData:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
