.class public Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserCmyk;
.super Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;
.source "DataParserCmyk.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasicChannelsCount()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method protected getRGB([[[IIILorg/apache/commons/imaging/formats/psd/ImageContents;)I
    .locals 3

    const/4 p0, 0x0

    .line 26
    aget-object p0, p1, p0

    aget-object p0, p0, p3

    aget p0, p0, p2

    const/16 p4, 0xff

    and-int/2addr p0, p4

    const/4 v0, 0x1

    .line 27
    aget-object v0, p1, v0

    aget-object v0, v0, p3

    aget v0, v0, p2

    and-int/2addr v0, p4

    const/4 v1, 0x2

    .line 28
    aget-object v1, p1, v1

    aget-object v1, v1, p3

    aget v1, v1, p2

    and-int/2addr v1, p4

    const/4 v2, 0x3

    .line 29
    aget-object p1, p1, v2

    aget-object p1, p1, p3

    aget p1, p1, p2

    and-int/2addr p1, p4

    rsub-int p0, p0, 0xff

    rsub-int p2, v0, 0xff

    rsub-int p3, v1, 0xff

    sub-int/2addr p4, p1

    .line 37
    invoke-static {p0, p2, p3, p4}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCMYKtoRGB(IIII)I

    move-result p0

    return p0
.end method
