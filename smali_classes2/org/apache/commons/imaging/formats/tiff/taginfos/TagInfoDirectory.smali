.class public Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;
.super Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;
.source "TagInfoDirectory.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 27
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;Z)V

    return-void
.end method
