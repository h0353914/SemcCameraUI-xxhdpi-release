.class public Lorg/apache/commons/imaging/formats/jpeg/segments/App13Segment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/AppnSegment;
.source "App13Segment.java"


# instance fields
.field protected final parser:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;IILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/commons/imaging/formats/jpeg/segments/AppnSegment;-><init>(IILjava/io/InputStream;)V

    .line 44
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App13Segment;->parser:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    array-length v0, p3

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/App13Segment;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;IILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public isPhotoshopJpegSegment()Z
    .locals 1

    .line 62
    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/App13Segment;->getSegmentData()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->isPhotoshopJpegSegment([B)Z

    move-result p0

    return p0
.end method

.method public parsePhotoshopSegment(Ljava/util/Map;)Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/App13Segment;->isPhotoshopJpegSegment()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/App13Segment;->getSegmentData()[B

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->parsePhotoshopSegment([BLjava/util/Map;)Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;

    move-result-object p0

    return-object p0
.end method
