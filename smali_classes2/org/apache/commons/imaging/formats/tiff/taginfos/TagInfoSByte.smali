.class public Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;
.super Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
.source "TagInfoSByte.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .locals 6

    .line 26
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SBYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    return-void
.end method


# virtual methods
.method public varargs encodeValue(Ljava/nio/ByteOrder;[B)[B
    .locals 0

    return-object p2
.end method
