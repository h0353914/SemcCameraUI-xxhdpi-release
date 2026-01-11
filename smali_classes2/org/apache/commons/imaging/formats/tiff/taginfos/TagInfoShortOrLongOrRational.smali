.class public Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;
.super Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
.source "TagInfoShortOrLongOrRational.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .locals 6

    .line 28
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT_OR_LONG_OR_RATIONAL:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILjava/util/List;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    return-void
.end method


# virtual methods
.method public varargs encodeValue(Ljava/nio/ByteOrder;[I)[B
    .locals 0

    .line 36
    invoke-static {p2, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([ILjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method public varargs encodeValue(Ljava/nio/ByteOrder;[Lorg/apache/commons/imaging/common/RationalNumber;)[B
    .locals 0

    .line 40
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
