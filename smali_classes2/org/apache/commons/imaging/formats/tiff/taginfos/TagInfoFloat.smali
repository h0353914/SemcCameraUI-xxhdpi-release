.class public Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;
.super Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
.source "TagInfoFloat.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .locals 6

    .line 27
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->FLOAT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    return-void
.end method


# virtual methods
.method public varargs encodeValue(Ljava/nio/ByteOrder;[F)[B
    .locals 0

    .line 35
    invoke-static {p2, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([FLjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method public getValue(Ljava/nio/ByteOrder;[B)[F
    .locals 0

    .line 31
    invoke-static {p2, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toFloats([BLjava/nio/ByteOrder;)[F

    move-result-object p0

    return-object p0
.end method
