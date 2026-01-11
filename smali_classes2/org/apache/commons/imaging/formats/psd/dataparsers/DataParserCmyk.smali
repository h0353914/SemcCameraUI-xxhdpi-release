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
    .locals 2

    const/4 p0, 0x0

    .line 26
    aget-object p0, p1, p0

    aget-object p0, p0, p3

    aget p0, p0, p2

    and-int/lit16 p0, p0, 0xff

    const/4 p4, 0x1

    .line 27
    aget-object p4, p1, p4

    aget-object p4, p4, p3

    aget p4, p4, p2

    and-int/lit16 p4, p4, 0xff

    const/4 v0, 0x2

    .line 28
    aget-object v0, p1, v0

    aget-object v0, v0, p3

    aget v0, v0, p2

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    .line 29
    aget-object p1, p1, v1

    aget-object p1, p1, p3

    aget p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    rsub-int p0, p0, 0xff

    rsub-int p2, p4, 0xff

    rsub-int p3, v0, 0xff

    rsub-int p1, p1, 0xff

    .line 37
    invoke-static {p0, p2, p3, p1}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCMYKtoRGB(IIII)I

    move-result p0

    return p0
.end method
