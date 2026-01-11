.class public Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterGrayscale;
.super Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;
.source "TransparencyFilterGrayscale.java"


# instance fields
.field private final transparentColor:I


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;-><init>([B)V

    .line 32
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 33
    const-string p1, "tRNS: Missing transparentColor"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterGrayscale;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    const-string v2, "transparentColor"

    invoke-static {v2, v0, p1, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterGrayscale;->transparentColor:I

    return-void
.end method


# virtual methods
.method public filter(II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget p0, p0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterGrayscale;->transparentColor:I

    if-eq p2, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
