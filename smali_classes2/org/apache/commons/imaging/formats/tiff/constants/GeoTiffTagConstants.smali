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
    .locals 12

    .line 35
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v2, "ModelPixelScaleTag"

    const v3, 0x830e

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_MODEL_PIXEL_SCALE_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    .line 39
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v3, "IntergraphMatrixTag"

    const v5, 0x8480

    const/4 v6, -0x1

    invoke-direct {v1, v3, v5, v6, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_INTERGRAPH_MATRIX_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    .line 43
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    const v3, 0x8482

    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v7, "ModelTiepointTag"

    invoke-direct {v2, v7, v3, v6, v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_MODEL_TIEPOINT_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    .line 47
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    const/16 v5, 0x10

    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v8, "ModelTransformationTag"

    const v9, 0x85d8

    invoke-direct {v3, v8, v9, v5, v7}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_MODEL_TRANSFORMATION_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    .line 51
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const v7, 0x87af

    sget-object v8, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v9, "GeoKeyDirectoryTag"

    invoke-direct {v5, v9, v7, v6, v8}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_GEO_KEY_DIRECTORY_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 55
    new-instance v7, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    const v8, 0x87b0

    sget-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v10, "GeoDoubleParamsTag"

    invoke-direct {v7, v10, v8, v6, v9}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_GEO_DOUBLE_PARAMS_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;

    .line 59
    new-instance v8, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const v9, 0x87b1

    sget-object v10, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v11, "GeoAsciiParamsTag"

    invoke-direct {v8, v11, v9, v6, v10}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v8, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->EXIF_TAG_GEO_ASCII_PARAMS_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v6, 0x7

    .line 63
    new-array v6, v6, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v9, 0x0

    aput-object v0, v6, v9

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    aput-object v3, v6, v4

    const/4 v0, 0x4

    aput-object v5, v6, v0

    const/4 v0, 0x5

    aput-object v7, v6, v0

    const/4 v0, 0x6

    aput-object v8, v6, v0

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

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
