.class public final Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUnknown;
.super Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;
.source "TagInfoUnknown.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .locals 6

    .line 27
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ANY:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;ILjava/util/List;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    return-void
.end method
