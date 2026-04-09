.class public Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;
.super Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;
.source "DataParserIndexed.java"


# instance fields
.field private final colorTable:[I


# direct methods
.method public constructor <init>([B)V
    .locals 8

    .line 24
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;-><init>()V

    const/16 v0, 0x100

    .line 25
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;->colorTable:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    add-int v3, v1, v2

    .line 27
    aget-byte v3, p1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    add-int v5, v0, v2

    .line 28
    aget-byte v5, p1, v5

    and-int/2addr v5, v4

    const/16 v6, 0x200

    add-int/2addr v6, v2

    .line 29
    aget-byte v6, p1, v6

    and-int/2addr v6, v4

    const/high16 v7, -0x1000000

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v7

    and-int/2addr v5, v4

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    and-int/2addr v4, v6

    shl-int/2addr v4, v1

    or-int/2addr v3, v4

    .line 35
    iget-object v4, p0, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;->colorTable:[I

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
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

    const/4 p4, 0x0

    .line 41
    aget-object p1, p1, p4

    aget-object p1, p1, p3

    aget p1, p1, p2

    const/16 p2, 0xff

    and-int/2addr p1, p2

    .line 42
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;->colorTable:[I

    aget p0, p0, p1

    return p0
.end method
