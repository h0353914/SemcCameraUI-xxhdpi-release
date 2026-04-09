.class public Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterTrueColor;
.super Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;
.source "TransparencyFilterTrueColor.java"


# instance fields
.field private final transparentColor:I


# direct methods
.method public constructor <init>([B)V
    .locals 5
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

    const-string p1, "transparentRed"

    const-string v1, "tRNS: Missing transparentColor"

    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterTrueColor;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result p1

    const-string v1, "transparentGreen"

    const-string v2, "tRNS: Missing transparentColor"

    .line 34
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterTrueColor;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    const-string v2, "transparentBlue"

    const-string v3, "tRNS: Missing transparentColor"

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterTrueColor;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    const/16 v2, 0xff

    and-int/2addr p1, v2

    shl-int/lit8 p1, p1, 0x10

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr p1, v0

    .line 37
    iput p1, p0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterTrueColor;->transparentColor:I

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

    const p2, 0xffffff

    and-int/2addr p2, p1

    .line 46
    iget p0, p0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterTrueColor;->transparentColor:I

    if-ne p2, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method
