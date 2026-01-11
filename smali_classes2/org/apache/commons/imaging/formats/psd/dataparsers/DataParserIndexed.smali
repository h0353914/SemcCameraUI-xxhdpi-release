.class public Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;
.super Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;
.source "DataParserIndexed.java"


# instance fields
.field private final colorTable:[I


# direct methods
.method public constructor <init>([B)V
    .locals 6

    .line 24
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;-><init>()V

    const/16 v0, 0x100

    .line 25
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;->colorTable:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 27
    aget-byte v2, p1, v1

    add-int/lit16 v3, v1, 0x100

    .line 28
    aget-byte v3, p1, v3

    add-int/lit16 v4, v1, 0x200

    .line 29
    aget-byte v4, p1, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    const/high16 v5, -0x1000000

    or-int/2addr v2, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    and-int/lit16 v3, v4, 0xff

    or-int/2addr v2, v3

    .line 35
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;->colorTable:[I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

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

    and-int/lit16 p1, p1, 0xff

    .line 42
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;->colorTable:[I

    aget p0, p0, p1

    return p0
.end method
