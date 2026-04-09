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
    .locals 6

    .line 36
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const-string v1, "MD FileTag"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v3, 0x1

    const v4, 0x82a5

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_FILE_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 40
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const-string v1, "MD ScalePixel"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v4, 0x82a6

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_SCALE_PIXEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 44
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "MD ColorTable"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v4, -0x1

    const v5, 0x82a7

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_COLOR_TABLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 48
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "MD LabName"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v5, 0x82a8

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_LAB_NAME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 52
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "MD SampleInfo"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v5, 0x82a9

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_SAMPLE_INFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 56
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "MD PrepDate"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v5, 0x82aa

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_PREP_DATE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 60
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "MD PrepTime"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v5, 0x82ab

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_PREP_TIME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 64
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "MD FileUnits"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v5, 0x82ac

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_FILE_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/16 v0, 0x8

    .line 68
    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_FILE_TAG:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_SCALE_PIXEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_COLOR_TABLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_LAB_NAME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_SAMPLE_INFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_PREP_DATE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_PREP_TIME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->EXIF_TAG_MD_FILE_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

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
