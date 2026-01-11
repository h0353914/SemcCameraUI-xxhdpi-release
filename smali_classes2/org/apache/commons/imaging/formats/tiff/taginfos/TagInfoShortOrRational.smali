.class public Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;
.super Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
.source "TagInfoShortOrRational.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .locals 7

    .line 28
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT_OR_RATIONAL:Ljava/util/List;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILjava/util/List;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;Z)V

    return-void
.end method


# virtual methods
.method public varargs encodeValue(Ljava/nio/ByteOrder;[Lorg/apache/commons/imaging/common/RationalNumber;)[B
    .locals 0

    .line 36
    invoke-static {p2, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method public varargs encodeValue(Ljava/nio/ByteOrder;[S)[B
    .locals 0

    .line 32
    invoke-static {p2, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([SLjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method
