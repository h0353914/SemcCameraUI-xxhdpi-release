.class public Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserBitmap;
.super Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;
.source "DataParserBitmap.java"


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

    .line 26
    aget-object p1, p1, p0

    aget-object p1, p1, p3

    aget p1, p1, p2

    const/16 p2, 0xff

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p0

    :goto_0
    const/high16 p3, -0x1000000

    and-int/2addr p1, p2

    shl-int/lit8 p2, p1, 0x10

    or-int/2addr p2, p3

    shl-int/lit8 p3, p1, 0x8

    or-int/2addr p2, p3

    shl-int/lit8 p0, p1, 0x0

    or-int/2addr p0, p2

    return p0
.end method
