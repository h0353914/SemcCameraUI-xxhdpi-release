.class public Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserGrayscale;
.super Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;
.source "DataParserGrayscale.java"


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

    const/4 p0, 0x1

    return p0
.end method

.method protected getRGB([[[IIILorg/apache/commons/imaging/formats/psd/ImageContents;)I
    .locals 0

    const/4 p0, 0x0

    .line 25
    aget-object p0, p1, p0

    aget-object p0, p0, p3

    aget p0, p0, p2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, p0, 0x10

    const/high16 p2, -0x1000000

    or-int/2addr p1, p2

    shl-int/lit8 p2, p0, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method
