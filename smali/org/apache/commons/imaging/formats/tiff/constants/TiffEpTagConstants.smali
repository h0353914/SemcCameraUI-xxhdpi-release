.class public final Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;
.super Ljava/lang/Object;
.source "TiffEpTagConstants.java"


# static fields
.field public static final ALL_TIFF_EP_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TAG_BATTERY_LEVEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;

.field public static final EXIF_TAG_CFAPATTERN_2:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

.field public static final EXIF_TAG_CFAREPEAT_PATTERN_DIM:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final EXIF_TAG_EXPOSURE_INDEX:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

.field public static final EXIF_TAG_FLASH_ENERGY:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

.field public static final EXIF_TAG_FOCAL_PLANE_RESOLUTION_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final EXIF_TAG_FOCAL_PLANE_XRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

.field public static final EXIF_TAG_FOCAL_PLANE_YRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

.field public static final EXIF_TAG_IMAGE_HISTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_IMAGE_NUMBER_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

.field public static final EXIF_TAG_INTERLACE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final EXIF_TAG_INTER_COLOR_PROFILE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

.field public static final EXIF_TAG_NOISE_1:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

.field public static final EXIF_TAG_SECURITY_CLASSIFICATION_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_SELF_TIMER_MODE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final EXIF_TAG_SENSING_METHOD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final EXIF_TAG_SPATIAL_FREQUENCY_RESPONSE_1:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

.field public static final EXIF_TAG_TIFF_EPSTANDARD_ID_1:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

.field public static final EXIF_TAG_TIME_ZONE_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;

.field public static final FOCAL_PLANE_RESOLUTION_UNIT_VALUE_CM:I = 0x3

.field public static final FOCAL_PLANE_RESOLUTION_UNIT_VALUE_INCHES:I = 0x2

.field public static final FOCAL_PLANE_RESOLUTION_UNIT_VALUE_MM:I = 0x4

.field public static final FOCAL_PLANE_RESOLUTION_UNIT_VALUE_NONE:I = 0x1

.field public static final FOCAL_PLANE_RESOLUTION_UNIT_VALUE_UM:I = 0x5

.field public static final SENSING_METHOD_VALUE_COLOR_SEQUENTIAL_AREA:I = 0x5

.field public static final SENSING_METHOD_VALUE_COLOR_SEQUENTIAL_LINEAR:I = 0x8

.field public static final SENSING_METHOD_VALUE_MONOCHROME_AREA:I = 0x1

.field public static final SENSING_METHOD_VALUE_MONOCHROME_LINEAR:I = 0x6

.field public static final SENSING_METHOD_VALUE_ONE_CHIP_COLOR_AREA:I = 0x2

.field public static final SENSING_METHOD_VALUE_THREE_CHIP_COLOR_AREA:I = 0x4

.field public static final SENSING_METHOD_VALUE_TRILINEAR:I = 0x7

.field public static final SENSING_METHOD_VALUE_TWO_CHIP_COLOR_AREA:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 38
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "CFARepeatPatternDim"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v3, 0x2

    const v4, 0x828d

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_CFAREPEAT_PATTERN_DIM:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 42
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    const-string v1, "CFAPattern2"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v4, -0x1

    const v5, 0x828e

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_CFAPATTERN_2:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    .line 46
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;

    const-string v1, "BatteryLevel"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_ROOT:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v5, 0x828f

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_BATTERY_LEVEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;

    .line 50
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    const-string v1, "InterColorProfile"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v5, 0x8773

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_INTER_COLOR_PROFILE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    .line 54
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "Interlace"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v5, 0x1

    const v6, 0x8829

    invoke-direct {v0, v1, v6, v5, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_INTERLACE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 58
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;

    const-string v1, "TimeZoneOffset"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v6, 0x882a

    invoke-direct {v0, v1, v6, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_TIME_ZONE_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;

    .line 62
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "SelfTimerMode"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v6, 0x882b

    invoke-direct {v0, v1, v6, v5, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_SELF_TIMER_MODE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 66
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const-string v1, "FlashEnergy"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v6, 0x920b

    invoke-direct {v0, v1, v6, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_FLASH_ENERGY:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 70
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    const-string v1, "SpatialFrequencyResponse"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v6, 0x920c

    invoke-direct {v0, v1, v6, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_SPATIAL_FREQUENCY_RESPONSE_1:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    .line 74
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    const-string v1, "Noise"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v6, 0x920d

    invoke-direct {v0, v1, v6, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_NOISE_1:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    .line 78
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const-string v1, "FocalPlaneXResolution"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v6, 0x920e

    invoke-direct {v0, v1, v6, v5, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_FOCAL_PLANE_XRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 82
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const-string v1, "FocalPlaneYResolution"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v6, 0x920f

    invoke-direct {v0, v1, v6, v5, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_FOCAL_PLANE_YRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 86
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "FocalPlaneResolutionUnit"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v6, 0x9210

    invoke-direct {v0, v1, v6, v5, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_FOCAL_PLANE_RESOLUTION_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 95
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const-string v1, "ImageNumber"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v6, 0x9211

    invoke-direct {v0, v1, v6, v5, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_IMAGE_NUMBER_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 99
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "SecurityClassification"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v6, 0x9212

    invoke-direct {v0, v1, v6, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_SECURITY_CLASSIFICATION_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 103
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "ImageHistory"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v6, 0x9213

    invoke-direct {v0, v1, v6, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_IMAGE_HISTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 107
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const-string v1, "ExposureIndex"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v6, 0x9215

    invoke-direct {v0, v1, v6, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_EXPOSURE_INDEX:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 111
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    const-string v1, "TIFF/EPStandardID"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v4, 0x4

    const v6, 0x9216

    invoke-direct {v0, v1, v6, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_TIFF_EPSTANDARD_ID_1:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    .line 115
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "SensingMethod"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v6, 0x9217

    invoke-direct {v0, v1, v6, v5, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_SENSING_METHOD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/16 v0, 0x13

    .line 127
    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_CFAREPEAT_PATTERN_DIM:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_CFAPATTERN_2:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_BATTERY_LEVEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_INTER_COLOR_PROFILE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_INTERLACE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_TIME_ZONE_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_SELF_TIMER_MODE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_FLASH_ENERGY:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_SPATIAL_FREQUENCY_RESPONSE_1:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_NOISE_1:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_FOCAL_PLANE_XRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_FOCAL_PLANE_YRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_FOCAL_PLANE_RESOLUTION_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_IMAGE_NUMBER_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_SECURITY_CLASSIFICATION_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_IMAGE_HISTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_EXPOSURE_INDEX:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_TIFF_EPSTANDARD_ID_1:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_SENSING_METHOD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->ALL_TIFF_EP_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
