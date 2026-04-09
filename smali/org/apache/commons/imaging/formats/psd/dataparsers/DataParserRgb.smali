.class public Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserRgb;
.super Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;
.source "DataParserRgb.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasicChannelsCount()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method protected getRGB([[[IIILorg/apache/commons/imaging/formats/psd/ImageContents;)I
    .locals 3

    const/4 p0, 0x0

    .line 25
    aget-object p4, p1, p0

    aget-object p4, p4, p3

    aget p4, p4, p2

    const/16 v0, 0xff

    and-int/2addr p4, v0

    const/4 v1, 0x1

    .line 26
    aget-object v1, p1, v1

    aget-object v1, v1, p3

    aget v1, v1, p2

    and-int/2addr v1, v0

    const/4 v2, 0x2

    .line 27
    aget-object p1, p1, v2

    aget-object p1, p1, p3

    aget p1, p1, p2

    and-int/2addr p1, v0

    and-int p2, v0, p4

    shl-int/lit8 p2, p2, 0x10

    const/high16 p3, -0x1000000

    or-int/2addr p2, p3

    and-int p3, v0, v1

    shl-int/lit8 p3, p3, 0x8

    or-int/2addr p2, p3

    and-int/2addr p1, v0

    shl-int/lit8 p0, p1, 0x0

    or-int/2addr p0, p2

    return p0
.end method
