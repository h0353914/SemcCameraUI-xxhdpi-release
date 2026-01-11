.class public Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/AppnSegment;
.source "App2Segment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/imaging/formats/jpeg/segments/AppnSegment;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;",
        ">;"
    }
.end annotation


# instance fields
.field public final curMarker:I

.field private final iccBytes:[B

.field public final numMarkers:I


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/segments/AppnSegment;-><init>(IILjava/io/InputStream;)V

    .line 42
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->getSegmentData()[B

    move-result-object p1

    sget-object p3, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->ICC_PROFILE_LABEL:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-static {p1, p3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->startsWith([BLorg/apache/commons/imaging/common/BinaryConstant;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->getSegmentData()[B

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 46
    sget-object p3, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->ICC_PROFILE_LABEL:Lorg/apache/commons/imaging/common/BinaryConstant;

    const-string v0, "Not a Valid App2 Segment: missing ICC Profile label"

    invoke-static {p1, p3, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;Lorg/apache/commons/imaging/common/BinaryConstant;Ljava/lang/String;)V

    .line 49
    const-string p3, "curMarker"

    const-string v0, "Not a valid App2 Marker"

    invoke-static {p3, p1, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p3

    iput p3, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    .line 50
    const-string p3, "numMarkers"

    invoke-static {p3, p1, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p3

    iput p3, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->numMarkers:I

    .line 52
    sget-object p3, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->ICC_PROFILE_LABEL:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {p3}, Lorg/apache/commons/imaging/common/BinaryConstant;->size()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x2

    .line 55
    const-string p3, "App2 Data"

    const-string v0, "Invalid App2 Segment: insufficient data"

    invoke-static {p3, p1, p2, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->iccBytes:[B

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 58
    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    .line 59
    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->numMarkers:I

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->iccBytes:[B

    :goto_0
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    array-length v0, p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->compareTo(Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    iget p1, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 66
    instance-of v0, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 67
    check-cast p1, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    .line 68
    iget p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    iget p1, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getIccBytes()[B
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->iccBytes:[B

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 75
    iget p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    return p0
.end method
