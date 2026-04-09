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
    .locals 7

    .line 42
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const-string v1, "BadFaxLines"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v3, 0x1

    const/16 v4, 0x146

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_BAD_FAX_LINES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    .line 46
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "CleanFaxData"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v4, 0x147

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_CLEAN_FAX_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 53
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const-string v1, "ConsecutiveBadFaxLines"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v4, 0x148

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_CONSECUTIVE_BAD_FAX_LINES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    .line 57
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    const-string v1, "GlobalParametersIFD"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v4, 0x190

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_GLOBAL_PARAMETERS_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    .line 61
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const-string v1, "ProfileType"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v4, 0x191

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_PROFILE_TYPE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 67
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    const-string v1, "FaxProfile"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v4, 0x192

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_FAX_PROFILE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    .line 78
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const-string v1, "CodingMethods"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v4, 0x193

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_CODING_METHODS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 88
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    const-string v1, "VersionYear"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v4, 0x4

    const/16 v5, 0x194

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_VERSION_YEAR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    .line 92
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    const-string v1, "ModeNumber"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v5, 0x195

    invoke-direct {v0, v1, v5, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_MODE_NUMBER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    .line 96
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const-string v1, "Decode"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v5, -0x1

    const/16 v6, 0x1b1

    invoke-direct {v0, v1, v6, v5, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_DECODE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 100
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "DefaultImageColor"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v6, 0x1b2

    invoke-direct {v0, v1, v6, v5, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_DEFAULT_IMAGE_COLOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 104
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const-string v1, "StripRowCounts"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v6, 0x22f

    invoke-direct {v0, v1, v6, v5, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_STRIP_ROW_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 108
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const-string v1, "ImageLayer"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v5, 0x2

    const v6, 0x87ac

    invoke-direct {v0, v1, v6, v5, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_IMAGE_LAYER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const/16 v0, 0xd

    .line 112
    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_BAD_FAX_LINES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_CLEAN_FAX_DATA:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_CONSECUTIVE_BAD_FAX_LINES:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_GLOBAL_PARAMETERS_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_PROFILE_TYPE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_FAX_PROFILE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_CODING_METHODS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_VERSION_YEAR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_MODE_NUMBER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_DECODE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_DEFAULT_IMAGE_COLOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_STRIP_ROW_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->TIFF_TAG_IMAGE_LAYER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

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
