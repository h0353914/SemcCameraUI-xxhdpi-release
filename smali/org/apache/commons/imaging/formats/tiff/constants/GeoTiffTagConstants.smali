.class public final Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;
.super Ljava/lang/Object;
.source "GeoTiffTagConstants.java"


# static fields
.field public static final ALL_GEO_TIFF_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TAG_GEO_ASCII_PARAMS_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_GEO_DOUBLE_PARAMS_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

.field public static final EXIF_TAG_GEO_KEY_DIRECTORY_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final EXIF_TAG_INTERGRAPH_MATRIX_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

.field public static final EXIF_TAG_MODEL_PIXEL_SCALE_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

.field public static final EXIF_TAG_MODEL_TIEPOINT_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

.field public static final EXIF_TAG_MODEL_TRANSFORMATION_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 35
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    const-string v1, "ModelPixelScaleTag"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v3, 0x3

    const v4, 0x830e

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_MODEL_PIXEL_SCALE_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    .line 39
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    const-string v1, "IntergraphMatrixTag"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v4, -0x1

    const v5, 0x8480

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_INTERGRAPH_MATRIX_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    .line 43
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    const-string v1, "ModelTiepointTag"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v5, 0x8482

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_MODEL_TIEPOINT_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    .line 47
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    const-string v1, "ModelTransformationTag"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v5, 0x85d8

    const/16 v6, 0x10

    invoke-direct {v0, v1, v5, v6, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_MODEL_TRANSFORMATION_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    .line 51
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "GeoKeyDirectoryTag"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v5, 0x87af

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_GEO_KEY_DIRECTORY_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 55
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    const-string v1, "GeoDoubleParamsTag"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v5, 0x87b0

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_GEO_DOUBLE_PARAMS_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    .line 59
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "GeoAsciiParamsTag"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v5, 0x87b1

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_GEO_ASCII_PARAMS_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v0, 0x7

    .line 63
    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_MODEL_PIXEL_SCALE_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_INTERGRAPH_MATRIX_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_MODEL_TIEPOINT_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_MODEL_TRANSFORMATION_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_GEO_KEY_DIRECTORY_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_GEO_DOUBLE_PARAMS_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_GEO_ASCII_PARAMS_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->ALL_GEO_TIFF_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
