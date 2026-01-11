.class public final Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;
.super Ljava/lang/Object;
.source "MolecularDynamicsGelTagConstants.java"


# static fields
.field public static final ALL_MOLECULAR_DYNAMICS_GEL_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TAG_MD_COLOR_TABLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final EXIF_TAG_MD_FILE_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

.field public static final EXIF_TAG_MD_FILE_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_MD_LAB_NAME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_MD_PREP_DATE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_MD_PREP_TIME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_MD_SAMPLE_INFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_MD_SCALE_PIXEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 36
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v2, "MD FileTag"

    const v3, 0x82a5

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_FILE_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 40
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const v2, 0x82a6

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v5, "MD ScalePixel"

    invoke-direct {v1, v5, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_SCALE_PIXEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 44
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v5, "MD ColorTable"

    const v6, 0x82a7

    const/4 v7, -0x1

    invoke-direct {v2, v5, v6, v7, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_COLOR_TABLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 48
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const v5, 0x82a8

    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v8, "MD LabName"

    invoke-direct {v3, v8, v5, v7, v6}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_LAB_NAME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 52
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const v6, 0x82a9

    sget-object v8, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v9, "MD SampleInfo"

    invoke-direct {v5, v9, v6, v7, v8}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_SAMPLE_INFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 56
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const v8, 0x82aa

    sget-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v10, "MD PrepDate"

    invoke-direct {v6, v10, v8, v7, v9}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_PREP_DATE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 60
    new-instance v8, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const v9, 0x82ab

    sget-object v10, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v11, "MD PrepTime"

    invoke-direct {v8, v11, v9, v7, v10}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v8, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_PREP_TIME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 64
    new-instance v9, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const v10, 0x82ac

    sget-object v11, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v12, "MD FileUnits"

    invoke-direct {v9, v12, v10, v7, v11}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_FILE_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/16 v7, 0x8

    .line 68
    new-array v7, v7, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v10, 0x0

    aput-object v0, v7, v10

    aput-object v1, v7, v4

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v5, v7, v0

    const/4 v0, 0x5

    aput-object v6, v7, v0

    const/4 v0, 0x6

    aput-object v8, v7, v0

    const/4 v0, 0x7

    aput-object v9, v7, v0

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->ALL_MOLECULAR_DYNAMICS_GEL_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
