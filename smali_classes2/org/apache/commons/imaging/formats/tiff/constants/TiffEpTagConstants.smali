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
    .locals 23

    .line 38
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v2, "CFARepeatPatternDim"

    const v3, 0x828d

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_CFAREPEAT_PATTERN_DIM:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 42
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v3, "CFAPattern2"

    const v5, 0x828e

    const/4 v6, -0x1

    invoke-direct {v1, v3, v5, v6, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_CFAPATTERN_2:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    .line 46
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;

    const v3, 0x828f

    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_ROOT:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v7, "BatteryLevel"

    invoke-direct {v2, v7, v3, v6, v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_BATTERY_LEVEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;

    .line 50
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    const v5, 0x8773

    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v8, "InterColorProfile"

    invoke-direct {v3, v8, v5, v6, v7}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_INTER_COLOR_PROFILE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    .line 54
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v8, "Interlace"

    const v9, 0x8829

    const/4 v10, 0x1

    invoke-direct {v5, v8, v9, v10, v7}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_INTERLACE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 58
    new-instance v7, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;

    const v8, 0x882a

    sget-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v11, "TimeZoneOffset"

    invoke-direct {v7, v11, v8, v6, v9}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_TIME_ZONE_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;

    .line 62
    new-instance v8, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const v9, 0x882b

    sget-object v11, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v12, "SelfTimerMode"

    invoke-direct {v8, v12, v9, v10, v11}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v8, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_SELF_TIMER_MODE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 66
    new-instance v9, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const v11, 0x920b

    sget-object v12, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v13, "FlashEnergy"

    invoke-direct {v9, v13, v11, v6, v12}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_FLASH_ENERGY:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 70
    new-instance v11, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    const v12, 0x920c

    sget-object v13, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v14, "SpatialFrequencyResponse"

    invoke-direct {v11, v14, v12, v6, v13}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v11, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_SPATIAL_FREQUENCY_RESPONSE_1:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    .line 74
    new-instance v12, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    const v13, 0x920d

    sget-object v14, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v15, "Noise"

    invoke-direct {v12, v15, v13, v6, v14}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v12, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_NOISE_1:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    .line 78
    new-instance v13, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const v14, 0x920e

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v4, "FocalPlaneXResolution"

    invoke-direct {v13, v4, v14, v10, v15}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v13, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_FOCAL_PLANE_XRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 82
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const v14, 0x920f

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v6, "FocalPlaneYResolution"

    invoke-direct {v4, v6, v14, v10, v15}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_FOCAL_PLANE_YRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 86
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const v14, 0x9210

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    move-object/from16 v17, v4

    const-string v4, "FocalPlaneResolutionUnit"

    invoke-direct {v6, v4, v14, v10, v15}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_FOCAL_PLANE_RESOLUTION_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 95
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const v14, 0x9211

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    move-object/from16 v18, v6

    const-string v6, "ImageNumber"

    invoke-direct {v4, v6, v14, v10, v15}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_IMAGE_NUMBER_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 99
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const v14, 0x9212

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v10, "SecurityClassification"

    move-object/from16 v19, v4

    const/4 v4, -0x1

    invoke-direct {v6, v10, v14, v4, v15}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_SECURITY_CLASSIFICATION_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 103
    new-instance v10, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const v14, 0x9213

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    move-object/from16 v16, v6

    const-string v6, "ImageHistory"

    invoke-direct {v10, v6, v14, v4, v15}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v10, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_IMAGE_HISTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 107
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const v14, 0x9215

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    move-object/from16 v20, v10

    const-string v10, "ExposureIndex"

    invoke-direct {v6, v10, v14, v4, v15}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_EXPOSURE_INDEX:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    .line 111
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    sget-object v10, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v14, "TIFF/EPStandardID"

    const v15, 0x9216

    move-object/from16 v21, v6

    const/4 v6, 0x4

    invoke-direct {v4, v14, v15, v6, v10}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_TIFF_EPSTANDARD_ID_1:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    .line 115
    new-instance v10, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const v14, 0x9217

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v6, "SensingMethod"

    move-object/from16 v22, v4

    const/4 v4, 0x1

    invoke-direct {v10, v6, v14, v4, v15}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v10, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_SENSING_METHOD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/16 v6, 0x13

    .line 127
    new-array v6, v6, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v14, 0x0

    aput-object v0, v6, v14

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v5, v6, v0

    const/4 v0, 0x5

    aput-object v7, v6, v0

    const/4 v0, 0x6

    aput-object v8, v6, v0

    const/4 v0, 0x7

    aput-object v9, v6, v0

    const/16 v0, 0x8

    aput-object v11, v6, v0

    const/16 v0, 0x9

    aput-object v12, v6, v0

    const/16 v0, 0xa

    aput-object v13, v6, v0

    const/16 v0, 0xb

    aput-object v17, v6, v0

    const/16 v0, 0xc

    aput-object v18, v6, v0

    const/16 v0, 0xd

    aput-object v19, v6, v0

    const/16 v0, 0xe

    aput-object v16, v6, v0

    const/16 v0, 0xf

    aput-object v20, v6, v0

    const/16 v0, 0x10

    aput-object v21, v6, v0

    const/16 v0, 0x11

    aput-object v22, v6, v0

    const/16 v0, 0x12

    aput-object v10, v6, v0

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

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
