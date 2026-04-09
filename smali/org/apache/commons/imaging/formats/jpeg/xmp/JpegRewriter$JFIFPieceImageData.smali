.class public Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;
.super Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;
.source "JpegRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "JFIFPieceImageData"
.end annotation


# instance fields
.field public final imageData:[B

.field public final markerBytes:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;-><init>()V

    .line 167
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;->markerBytes:[B

    .line 168
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;->imageData:[B

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

    .line 173
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;->markerBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 174
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;->imageData:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
