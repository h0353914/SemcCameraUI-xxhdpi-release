.class public Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;
.super Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
.source "TagInfoShortOrLong.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .locals 7

    .line 27
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT_OR_LONG:Ljava/util/List;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILjava/util/List;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;Z)V
    .locals 7

    .line 31
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT_OR_LONG:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILjava/util/List;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;Z)V

    return-void
.end method


# virtual methods
.method public varargs encodeValue(Ljava/nio/ByteOrder;[I)[B
    .locals 0

    .line 39
    invoke-static {p2, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([ILjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method public varargs encodeValue(Ljava/nio/ByteOrder;[S)[B
    .locals 0

    .line 35
    invoke-static {p2, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([SLjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method
