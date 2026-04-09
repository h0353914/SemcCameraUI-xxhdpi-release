.class public final Lorg/apache/commons/imaging/formats/tiff/constants/GdalLibraryTagConstants;
.super Ljava/lang/Object;
.source "GdalLibraryTagConstants.java"


# static fields
.field public static final ALL_GDAL_LIBRARY_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TAG_GDAL_METADATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_GDAL_NO_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "GDALMetadata"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v3, -0x1

    const v4, 0xa480

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GdalLibraryTagConstants;->EXIF_TAG_GDAL_METADATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 39
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "GDALNoData"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v4, 0xa481

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GdalLibraryTagConstants;->EXIF_TAG_GDAL_NO_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v0, 0x2

    .line 43
    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GdalLibraryTagConstants;->EXIF_TAG_GDAL_METADATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GdalLibraryTagConstants;->EXIF_TAG_GDAL_NO_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GdalLibraryTagConstants;->ALL_GDAL_LIBRARY_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
