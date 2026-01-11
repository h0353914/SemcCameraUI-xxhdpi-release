.class public final Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;
.super Ljava/lang/Object;
.source "Rfc2301TagConstants.java"


# static fields
.field public static final ALL_RFC_2301_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLEAN_FAX_DATA_VALUE_CLEAN:I = 0x0

.field public static final CLEAN_FAX_DATA_VALUE_REGENERATED:I = 0x1

.field public static final CLEAN_FAX_DATA_VALUE_UNCLEAN:I = 0x2

.field public static final CODING_METHODS_VALUE_T4_1D:I = 0x2

.field public static final CODING_METHODS_VALUE_T4_2D:I = 0x4

.field public static final CODING_METHODS_VALUE_T6:I = 0x8

.field public static final CODING_METHODS_VALUE_T81:I = 0x20

.field public static final CODING_METHODS_VALUE_T82_T43:I = 0x40

.field public static final CODING_METHODS_VALUE_T82_T85:I = 0x10

.field public static final FAX_PROFILE_VALUE_EXTENDED_B_AND_W_LOSSLESS_F:I = 0x2

.field public static final FAX_PROFILE_VALUE_LOSSLESS_COLOR_AND_GRAYSCALE_L:I = 0x5

.field public static final FAX_PROFILE_VALUE_LOSSLESS_JBIG_B_AND_W_J:I = 0x3

.field public static final FAX_PROFILE_VALUE_LOSSY_COLOR_AND_GRAYSCALE_C:I = 0x4

.field public static final FAX_PROFILE_VALUE_MINIMAL_B_AND_W_LOSSLESS_S:I = 0x1

.field public static final FAX_PROFILE_VALUE_MIXED_RASTER_CONTENT_M:I = 0x6

.field public static final FAX_PROFILE_VALUE_UNKNOWN:I = 0x0

.field public static final PROFILE_TYPE_VALUE_GROUP_3_FAX:I = 0x1

.field public static final PROFILE_TYPE_VALUE_UNSPECIFIED:I

.field public static final TIFF_TAG_BAD_FAX_LINES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

.field public static final TIFF_TAG_CLEAN_FAX_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final TIFF_TAG_CODING_METHODS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

.field public static final TIFF_TAG_CONSECUTIVE_BAD_FAX_LINES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

.field public static final TIFF_TAG_DECODE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

.field public static final TIFF_TAG_DEFAULT_IMAGE_COLOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final TIFF_TAG_FAX_PROFILE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

.field public static final TIFF_TAG_GLOBAL_PARAMETERS_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

.field public static final TIFF_TAG_IMAGE_LAYER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

.field public static final TIFF_TAG_MODE_NUMBER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

.field public static final TIFF_TAG_PROFILE_TYPE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

.field public static final TIFF_TAG_STRIP_ROW_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

.field public static final TIFF_TAG_VERSION_YEAR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 42
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v2, "BadFaxLines"

    const/16 v3, 0x146

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_BAD_FAX_LINES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    .line 46
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/16 v2, 0x147

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v5, "CleanFaxData"

    invoke-direct {v1, v5, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_CLEAN_FAX_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 53
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const/16 v3, 0x148

    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v6, "ConsecutiveBadFaxLines"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_CONSECUTIVE_BAD_FAX_LINES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    .line 57
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    const/16 v5, 0x190

    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v7, "GlobalParametersIFD"

    invoke-direct {v3, v7, v5, v4, v6}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_GLOBAL_PARAMETERS_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    .line 61
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const/16 v6, 0x191

    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v8, "ProfileType"

    invoke-direct {v5, v8, v6, v4, v7}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_PROFILE_TYPE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 67
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    const/16 v7, 0x192

    sget-object v8, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v9, "FaxProfile"

    invoke-direct {v6, v9, v7, v4, v8}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_FAX_PROFILE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    .line 78
    new-instance v7, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const/16 v8, 0x193

    sget-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v10, "CodingMethods"

    invoke-direct {v7, v10, v8, v4, v9}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_CODING_METHODS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 88
    new-instance v8, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    sget-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v10, "VersionYear"

    const/16 v11, 0x194

    const/4 v12, 0x4

    invoke-direct {v8, v10, v11, v12, v9}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v8, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_VERSION_YEAR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    .line 92
    new-instance v9, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    const/16 v10, 0x195

    sget-object v11, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v13, "ModeNumber"

    invoke-direct {v9, v13, v10, v4, v11}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_MODE_NUMBER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    .line 96
    new-instance v10, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    sget-object v11, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v13, "Decode"

    const/16 v14, 0x1b1

    const/4 v15, -0x1

    invoke-direct {v10, v13, v14, v15, v11}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v10, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_DECODE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 100
    new-instance v11, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/16 v13, 0x1b2

    sget-object v14, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v12, "DefaultImageColor"

    invoke-direct {v11, v12, v13, v15, v14}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v11, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_DEFAULT_IMAGE_COLOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 104
    new-instance v12, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const/16 v13, 0x22f

    sget-object v14, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v4, "StripRowCounts"

    invoke-direct {v12, v4, v13, v15, v14}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v12, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_STRIP_ROW_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 108
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    sget-object v13, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v14, "ImageLayer"

    const v15, 0x87ac

    move-object/from16 v16, v12

    const/4 v12, 0x2

    invoke-direct {v4, v14, v15, v12, v13}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_IMAGE_LAYER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const/16 v13, 0xd

    .line 112
    new-array v13, v13, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    const/4 v0, 0x1

    aput-object v1, v13, v0

    aput-object v2, v13, v12

    const/4 v0, 0x3

    aput-object v3, v13, v0

    const/4 v0, 0x4

    aput-object v5, v13, v0

    const/4 v0, 0x5

    aput-object v6, v13, v0

    const/4 v0, 0x6

    aput-object v7, v13, v0

    const/4 v0, 0x7

    aput-object v8, v13, v0

    const/16 v0, 0x8

    aput-object v9, v13, v0

    const/16 v0, 0x9

    aput-object v10, v13, v0

    const/16 v0, 0xa

    aput-object v11, v13, v0

    const/16 v0, 0xb

    aput-object v16, v13, v0

    const/16 v0, 0xc

    aput-object v4, v13, v0

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->ALL_RFC_2301_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
