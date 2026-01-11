.class public Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$Orientation;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$Flash;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$WhiteBalance;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$GpsLatitudeRef;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$GpsLongitudeRef;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$GpsDifferential;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$GpsTrackRef;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$GpsSpeedRef;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$GpsMeasureMode;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$GpsStatus;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$GpsAltitudeRef;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$SubjectDistance;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$Sharpness;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$Saturation;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$Contrast;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$GainControl;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$SceneType;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$FileSource;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$SensingMethod;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$LightSource;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$ComponentsConfiguration;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$SceneCapture;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$ExposureMode;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$ColorSpace;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$MeteringMode;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$ExposureProgram;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$PlanarConfiguration;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$PhotometricInterpretation;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$ResolutionUnit;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$Compression;,
        Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface$YCbCrPositioning;
    }
.end annotation


# static fields
.field private static final DATETIME_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd kk:mm:ss"

.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final DEFINITION_NULL:I = 0x0

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field public static final IFD_NULL:I = -0x1

.field private static final NULL_ARGUMENT_STRING:Ljava/lang/String; = "Argument is null"

.field public static final TAG_APERTURE_VALUE:I

.field public static final TAG_ARTIST:I

.field public static final TAG_BITS_PER_SAMPLE:I

.field public static final TAG_BRIGHTNESS_VALUE:I

.field public static final TAG_CFA_PATTERN:I

.field public static final TAG_COLOR_SPACE:I

.field public static final TAG_COMPONENTS_CONFIGURATION:I

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:I

.field public static final TAG_COMPRESSION:I

.field public static final TAG_CONTRAST:I

.field public static final TAG_COPYRIGHT:I

.field public static final TAG_CUSTOM_RENDERED:I

.field public static final TAG_DATE_TIME:I

.field public static final TAG_DATE_TIME_DIGITIZED:I

.field public static final TAG_DATE_TIME_ORIGINAL:I

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:I

.field public static final TAG_DIGITAL_ZOOM_RATIO:I

.field public static final TAG_EXIF_IFD:I

.field public static final TAG_EXIF_VERSION:I

.field public static final TAG_EXPOSURE_BIAS_VALUE:I

.field public static final TAG_EXPOSURE_INDEX:I

.field public static final TAG_EXPOSURE_MODE:I

.field public static final TAG_EXPOSURE_PROGRAM:I

.field public static final TAG_EXPOSURE_TIME:I

.field public static final TAG_FILE_SOURCE:I

.field public static final TAG_FLASH:I

.field public static final TAG_FLASHPIX_VERSION:I

.field public static final TAG_FLASH_ENERGY:I

.field public static final TAG_FOCAL_LENGTH:I

.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:I

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:I

.field public static final TAG_F_NUMBER:I

.field public static final TAG_GAIN_CONTROL:I

.field public static final TAG_GPS_ALTITUDE:I

.field public static final TAG_GPS_ALTITUDE_REF:I

.field public static final TAG_GPS_AREA_INFORMATION:I

.field public static final TAG_GPS_DATE_STAMP:I

.field public static final TAG_GPS_DEST_BEARING:I

.field public static final TAG_GPS_DEST_BEARING_REF:I

.field public static final TAG_GPS_DEST_DISTANCE:I

.field public static final TAG_GPS_DEST_DISTANCE_REF:I

.field public static final TAG_GPS_DEST_LATITUDE:I

.field public static final TAG_GPS_DEST_LATITUDE_REF:I

.field public static final TAG_GPS_DEST_LONGITUDE:I

.field public static final TAG_GPS_DEST_LONGITUDE_REF:I

.field public static final TAG_GPS_DIFFERENTIAL:I

.field public static final TAG_GPS_DOP:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GPS_IMG_DIRECTION:I

.field public static final TAG_GPS_IMG_DIRECTION_REF:I

.field public static final TAG_GPS_LATITUDE:I

.field public static final TAG_GPS_LATITUDE_REF:I

.field public static final TAG_GPS_LONGITUDE:I

.field public static final TAG_GPS_LONGITUDE_REF:I

.field public static final TAG_GPS_MAP_DATUM:I

.field public static final TAG_GPS_MEASURE_MODE:I

.field public static final TAG_GPS_PROCESSING_METHOD:I

.field public static final TAG_GPS_SATTELLITES:I

.field public static final TAG_GPS_SPEED:I

.field public static final TAG_GPS_SPEED_REF:I

.field public static final TAG_GPS_STATUS:I

.field public static final TAG_GPS_TIME_STAMP:I

.field public static final TAG_GPS_TRACK:I

.field public static final TAG_GPS_TRACK_REF:I

.field public static final TAG_GPS_VERSION_ID:I

.field public static final TAG_IMAGE_DESCRIPTION:I

.field public static final TAG_IMAGE_LENGTH:I

.field public static final TAG_IMAGE_UNIQUE_ID:I

.field public static final TAG_IMAGE_WIDTH:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field public static final TAG_INTEROPERABILITY_INDEX:I

.field public static final TAG_ISO_SPEED_RATINGS:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_LIGHT_SOURCE:I

.field public static final TAG_MAKE:I

.field public static final TAG_MAKER_NOTE:I

.field public static final TAG_MAX_APERTURE_VALUE:I

.field public static final TAG_METERING_MODE:I

.field public static final TAG_MODEL:I

.field public static final TAG_NULL:I = -0x1

.field public static final TAG_OECF:I

.field public static final TAG_ORIENTATION:I

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field public static final TAG_PLANAR_CONFIGURATION:I

.field public static final TAG_PRIMARY_CHROMATICITIES:I

.field public static final TAG_REFERENCE_BLACK_WHITE:I

.field public static final TAG_RELATED_SOUND_FILE:I

.field public static final TAG_RESOLUTION_UNIT:I

.field public static final TAG_ROWS_PER_STRIP:I

.field public static final TAG_SAMPLES_PER_PIXEL:I

.field public static final TAG_SATURATION:I

.field public static final TAG_SCENE_CAPTURE_TYPE:I

.field public static final TAG_SCENE_TYPE:I

.field public static final TAG_SENSING_METHOD:I

.field public static final TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field public static final TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field public static final TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field public static final TAG_SUBJECT_LOCATION:I

.field public static final TAG_SUB_SEC_TIME:I

.field public static final TAG_SUB_SEC_TIME_DIGITIZED:I

.field public static final TAG_SUB_SEC_TIME_ORIGINAL:I

.field public static final TAG_TRANSFER_FUNCTION:I

.field public static final TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field public static final TAG_WHITE_POINT:I

.field public static final TAG_X_RESOLUTION:I

.field public static final TAG_Y_CB_CR_COEFFICIENTS:I

.field public static final TAG_Y_CB_CR_POSITIONING:I

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:I

.field public static final TAG_Y_RESOLUTION:I

.field protected static sBannedDefines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

.field private final mDateTimeStampFormat:Ljava/text/DateFormat;

.field private final mGPSDateStampFormat:Ljava/text/DateFormat;

.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x100

    const/4 v1, 0x0

    .line 77
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/16 v0, 0x101

    .line 79
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    const/16 v0, 0x102

    .line 81
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/16 v0, 0x103

    .line 83
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_COMPRESSION:I

    const/16 v0, 0x106

    .line 85
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    const/16 v0, 0x10e

    .line 87
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    const/16 v0, 0x10f

    .line 89
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_MAKE:I

    const/16 v0, 0x110

    .line 91
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_MODEL:I

    const/16 v0, 0x111

    .line 93
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    const/16 v2, 0x112

    .line 95
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_ORIENTATION:I

    const/16 v2, 0x115

    .line 97
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    const/16 v2, 0x116

    .line 99
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    const/16 v2, 0x117

    .line 101
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    const/16 v3, 0x11a

    .line 103
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/16 v3, 0x11b

    .line 105
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    const/16 v3, 0x11c

    .line 107
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    const/16 v3, 0x128

    .line 109
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    const/16 v3, 0x12d

    .line 111
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    const/16 v3, 0x131

    .line 113
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SOFTWARE:I

    const/16 v3, 0x132

    .line 115
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_DATE_TIME:I

    const/16 v3, 0x13b

    .line 117
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_ARTIST:I

    const/16 v3, 0x13e

    .line 119
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_WHITE_POINT:I

    const/16 v3, 0x13f

    .line 121
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    const/16 v3, 0x211

    .line 123
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/16 v3, 0x212

    .line 125
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    const/16 v3, 0x213

    .line 127
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    const/16 v3, 0x214

    .line 129
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    const/16 v3, -0x7d68

    .line 131
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_COPYRIGHT:I

    const/16 v3, -0x7897

    .line 133
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXIF_IFD:I

    const/16 v4, -0x77db

    .line 135
    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_IFD:I

    const/16 v5, 0x201

    const/4 v6, 0x1

    .line 138
    invoke-static {v6, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v5

    sput v5, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    const/16 v7, 0x202

    .line 140
    invoke-static {v6, v7}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v7

    sput v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    const/16 v8, -0x7d66

    const/4 v9, 0x2

    .line 143
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    const/16 v8, -0x7d63

    .line 145
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_F_NUMBER:I

    const/16 v8, -0x77de

    .line 147
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    const/16 v8, -0x77dc

    .line 149
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    const/16 v8, -0x77d9

    .line 151
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    const/16 v8, -0x77d8

    .line 153
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_OECF:I

    const/16 v8, -0x7000

    .line 155
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/16 v8, -0x6ffd

    .line 157
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    const/16 v8, -0x6ffc

    .line 159
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    const/16 v8, -0x6eff

    .line 161
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    const/16 v8, -0x6efe

    .line 163
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    const/16 v8, -0x6dff

    .line 165
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/16 v8, -0x6dfe

    .line 167
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    const/16 v8, -0x6dfd

    .line 169
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/16 v8, -0x6dfc

    .line 171
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/16 v8, -0x6dfb

    .line 173
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    const/16 v8, -0x6dfa

    .line 175
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    const/16 v8, -0x6df9

    .line 177
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v8, -0x6df8

    .line 179
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    const/16 v8, -0x6df7

    .line 181
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FLASH:I

    const/16 v8, -0x6df6

    .line 183
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    const/16 v8, -0x6dec

    .line 185
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    const/16 v8, -0x6d84

    .line 187
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_MAKER_NOTE:I

    const/16 v8, -0x6d7a

    .line 189
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_USER_COMMENT:I

    const/16 v8, -0x6d70

    .line 191
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    const/16 v8, -0x6d6f

    .line 193
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    const/16 v8, -0x6d6e

    .line 195
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    const/16 v8, -0x6000

    .line 197
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    const/16 v8, -0x5fff

    .line 199
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_COLOR_SPACE:I

    const/16 v8, -0x5ffe

    .line 201
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    const/16 v8, -0x5ffd

    .line 203
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    const/16 v8, -0x5ffc

    .line 205
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/16 v8, -0x5ffb

    .line 207
    invoke-static {v9, v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    const/16 v10, -0x5df5

    .line 209
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    const/16 v10, -0x5df4

    .line 211
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    const/16 v10, -0x5df2

    .line 213
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    const/16 v10, -0x5df1

    .line 215
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    const/16 v10, -0x5df0

    .line 217
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    const/16 v10, -0x5dec

    .line 219
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    const/16 v10, -0x5deb

    .line 221
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    const/16 v10, -0x5de9

    .line 223
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SENSING_METHOD:I

    const/16 v10, -0x5d00

    .line 225
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FILE_SOURCE:I

    const/16 v10, -0x5cff

    .line 227
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SCENE_TYPE:I

    const/16 v10, -0x5cfe

    .line 229
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_CFA_PATTERN:I

    const/16 v10, -0x5bff

    .line 231
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    const/16 v10, -0x5bfe

    .line 233
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    const/16 v10, -0x5bfd

    .line 235
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/16 v10, -0x5bfc

    .line 237
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    const/16 v10, -0x5bfb

    .line 239
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    const/16 v10, -0x5bfa

    .line 241
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    const/16 v10, -0x5bf9

    .line 243
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    const/16 v10, -0x5bf8

    .line 245
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_CONTRAST:I

    const/16 v10, -0x5bf7

    .line 247
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SATURATION:I

    const/16 v10, -0x5bf6

    .line 249
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SHARPNESS:I

    const/16 v10, -0x5bf5

    .line 251
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    const/16 v10, -0x5bf4

    .line 253
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    const/16 v10, -0x5be0

    .line 255
    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    const/4 v10, 0x4

    .line 258
    invoke-static {v10, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    .line 260
    invoke-static {v10, v6}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 262
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    const/4 v1, 0x3

    .line 264
    invoke-static {v10, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 266
    invoke-static {v10, v10}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    const/4 v9, 0x5

    .line 268
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/4 v9, 0x6

    .line 270
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    const/4 v9, 0x7

    .line 272
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/16 v9, 0x8

    .line 274
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    const/16 v9, 0x9

    .line 276
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_STATUS:I

    const/16 v9, 0xa

    .line 278
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    const/16 v9, 0xb

    .line 280
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DOP:I

    const/16 v9, 0xc

    .line 282
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    const/16 v9, 0xd

    .line 284
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_SPEED:I

    const/16 v9, 0xe

    .line 286
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    const/16 v9, 0xf

    .line 288
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_TRACK:I

    const/16 v9, 0x10

    .line 290
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const/16 v9, 0x11

    .line 292
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    const/16 v9, 0x12

    .line 294
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    const/16 v9, 0x13

    .line 296
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    const/16 v9, 0x14

    .line 298
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    const/16 v9, 0x15

    .line 300
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE_REF:I

    const/16 v9, 0x16

    .line 302
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE:I

    const/16 v9, 0x17

    .line 304
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    const/16 v9, 0x18

    .line 306
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    const/16 v9, 0x19

    .line 308
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    const/16 v9, 0x1a

    .line 310
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    const/16 v9, 0x1b

    .line 312
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/16 v9, 0x1c

    .line 314
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    const/16 v9, 0x1d

    .line 316
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    const/16 v9, 0x1e

    .line 318
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 321
    invoke-static {v1, v6}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    .line 327
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    .line 329
    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {v8}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    .line 341
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 713
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    sget-object v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    .line 1952
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 1953
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 1955
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/4 v2, 0x0

    .line 2157
    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 716
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method protected static closeSilently(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2150
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static convertLatOrLongToDouble([Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;Ljava/lang/String;)D
    .locals 8

    const/4 v0, 0x0

    .line 1914
    :try_start_0
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;->toDouble()D

    move-result-wide v0

    const/4 v2, 0x1

    .line 1915
    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;->toDouble()D

    move-result-wide v2

    const/4 v4, 0x2

    .line 1916
    aget-object p0, p0, v4

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;->toDouble()D

    move-result-wide v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v6

    add-double/2addr v0, v2

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double/2addr v4, v2

    add-double/2addr v0, v4

    .line 1918
    const-string p0, "S"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "W"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    neg-double p0, v0

    return-wide p0

    .line 1923
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static defineTag(IS)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method private doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x400

    .line 2139
    new-array v0, p0, [B

    const/4 v1, 0x0

    .line 2140
    invoke-virtual {p1, v0, v1, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2142
    invoke-virtual {p2, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 2143
    invoke-virtual {p1, v0, v1, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x18

    return p0
.end method

.method protected static getAllowedIfdsFromInfo(I)[I
    .locals 6

    .line 2446
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result p0

    .line 2447
    invoke-static {}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->getIfds()[I

    move-result-object v0

    .line 2448
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    shr-int v4, p0, v3

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    .line 2452
    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2455
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 2458
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 2460
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v3, v2, 0x1

    .line 2461
    aput v1, p0, v2

    move v2, v3

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method protected static getComponentCountFromInfo(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 2478
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    .line 2482
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->getIfds()[I

    move-result-object v1

    move v2, v0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_3

    .line 2484
    array-length v4, p0

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, p0, v5

    .line 2485
    aget v7, v1, v2

    if-ne v7, v6, :cond_1

    const/4 v4, 0x1

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_3
    return v0
.end method

.method public static getOrientationValueForRotation(I)S
    .locals 1

    .line 1864
    rem-int/lit16 p0, p0, 0x168

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x168

    :cond_0
    const/16 v0, 0x5a

    if-ge p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v0, 0xb4

    if-ge p0, v0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    const/16 v0, 0x10e

    if-ge p0, v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/16 p0, 0x8

    return p0
.end method

.method public static getRotationForOrientationValue(S)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0

    :cond_2
    const/16 p0, 0xb4

    return p0
.end method

.method public static getTrueIfd(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static getTrueTagKey(I)S
    .locals 0

    int-to-short p0, p0

    return p0
.end method

.method protected static getTypeFromInfo(I)S
    .locals 0

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private initTagInfo()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2175
    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 2178
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 2179
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_MAKE:I

    const/high16 v5, 0x20000

    or-int v6, v1, v5

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2181
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/high16 v8, 0x40000

    or-int/2addr v8, v1

    const v9, 0x40001

    or-int v10, v1, v9

    invoke-virtual {v3, v7, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2183
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {v3, v7, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2185
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const v11, 0x30003

    or-int/2addr v11, v1

    invoke-virtual {v3, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2187
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_COMPRESSION:I

    const v11, 0x30001

    or-int v12, v1, v11

    invoke-virtual {v3, v7, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2189
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    invoke-virtual {v3, v7, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2191
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v3, v7, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2193
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    invoke-virtual {v3, v7, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2195
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    invoke-virtual {v3, v7, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2197
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    const v13, 0x30002

    or-int v14, v1, v13

    invoke-virtual {v3, v7, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2199
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    invoke-virtual {v3, v7, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2201
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const v14, 0x50001

    or-int v15, v1, v14

    invoke-virtual {v3, v7, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2203
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    invoke-virtual {v3, v7, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2205
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    invoke-virtual {v3, v7, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2207
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v3, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2209
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    invoke-virtual {v3, v7, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2211
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v3, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2213
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    const v8, 0x30300

    or-int/2addr v8, v1

    invoke-virtual {v3, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2215
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_WHITE_POINT:I

    const v8, 0x50002

    or-int/2addr v8, v1

    invoke-virtual {v3, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2217
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    const v8, 0x50006

    or-int/2addr v8, v1

    invoke-virtual {v3, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2219
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const v12, 0x50003

    or-int v15, v1, v12

    invoke-virtual {v3, v7, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2221
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    invoke-virtual {v3, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2223
    iget-object v3, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v7, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_DATE_TIME:I

    const v8, 0x20014

    or-int/2addr v1, v8

    invoke-virtual {v3, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2225
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    invoke-virtual {v1, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2227
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2229
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_MODEL:I

    invoke-virtual {v1, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2231
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SOFTWARE:I

    invoke-virtual {v1, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2233
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_ARTIST:I

    invoke-virtual {v1, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2235
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_COPYRIGHT:I

    invoke-virtual {v1, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2237
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2239
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v1, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2242
    filled-new-array {v2}, [I

    move-result-object v1

    .line 2245
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 2246
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    or-int/2addr v1, v9

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2248
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    .line 2251
    filled-new-array {v1}, [I

    move-result-object v1

    .line 2254
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 2255
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/high16 v4, 0x70000

    or-int v6, v1, v4

    const v7, 0x70004

    or-int/2addr v7, v1

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2257
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2259
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_COLOR_SPACE:I

    const/high16 v10, 0x30000

    or-int/2addr v10, v1

    or-int/2addr v11, v1

    invoke-virtual {v2, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2261
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2263
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    or-int v7, v1, v14

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2265
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    or-int/2addr v9, v1

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2267
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2269
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_MAKER_NOTE:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2271
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2273
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    or-int v15, v1, v5

    const v16, 0x2000d

    or-int v4, v1, v16

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2275
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    or-int v4, v1, v8

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2277
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2279
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    invoke-virtual {v2, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2281
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    invoke-virtual {v2, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2283
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    invoke-virtual {v2, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2285
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    const v4, 0x20021

    or-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2287
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2289
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_F_NUMBER:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2291
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    invoke-virtual {v2, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2293
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    invoke-virtual {v2, v3, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2295
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-virtual {v2, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2297
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_OECF:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2299
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const v4, 0xa0001

    or-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2301
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2303
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2305
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2307
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2309
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2311
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_METERING_MODE:I

    invoke-virtual {v2, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2313
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    invoke-virtual {v2, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2315
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {v2, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2317
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2319
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    invoke-virtual {v2, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2321
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2323
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2325
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2327
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2329
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    invoke-virtual {v2, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2331
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    or-int v4, v1, v13

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2333
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2335
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SENSING_METHOD:I

    invoke-virtual {v2, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2337
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FILE_SOURCE:I

    const v4, 0x70001

    or-int/2addr v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2339
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SCENE_TYPE:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2341
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_CFA_PATTERN:I

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2343
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    invoke-virtual {v1, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2345
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    invoke-virtual {v1, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2347
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    invoke-virtual {v1, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2349
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2351
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    invoke-virtual {v1, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2353
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    invoke-virtual {v1, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2355
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2357
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_CONTRAST:I

    invoke-virtual {v1, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2359
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SATURATION:I

    invoke-virtual {v1, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2361
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SHARPNESS:I

    invoke-virtual {v1, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2363
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2365
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    invoke-virtual {v1, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2367
    iget-object v1, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x4

    .line 2370
    filled-new-array {v1}, [I

    move-result-object v1

    .line 2373
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 2374
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    const v4, 0x10004

    or-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2376
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    or-int v4, v1, v5

    const v6, 0x20002

    or-int/2addr v6, v1

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2378
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2380
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    const v7, 0xa0003

    or-int/2addr v7, v1

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2382
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2384
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const v7, 0x10001

    or-int/2addr v7, v1

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2386
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    or-int v7, v1, v14

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2388
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    or-int v8, v1, v12

    invoke-virtual {v2, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2390
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2392
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_STATUS:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2394
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2396
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DOP:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2398
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2400
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_SPEED:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2402
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2404
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_TRACK:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2406
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2408
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2410
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2412
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2414
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2416
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2418
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2420
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2422
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2424
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/high16 v4, 0x70000

    or-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2426
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2428
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    const v4, 0x2000b

    or-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2430
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    const v4, 0x3000b

    or-int/2addr v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x3

    .line 2433
    filled-new-array {v1}, [I

    move-result-object v1

    .line 2436
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 2437
    iget-object v0, v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    or-int/2addr v1, v5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method protected static isIfdAllowed(II)Z
    .locals 5

    .line 2467
    invoke-static {}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->getIfds()[I

    move-result-object v0

    .line 2468
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    .line 2469
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2470
    aget v3, v0, v2

    if-ne p1, v3, :cond_0

    shr-int v3, p0, v2

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected static isOffsetTag(S)Z
    .locals 1

    .line 1486
    sget-object v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static toExifLatLong(D)[Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;
    .locals 6

    .line 2127
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    double-to-int v0, p0

    int-to-double v1, v0

    sub-double/2addr p0, v1

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, v1

    double-to-int v1, p0

    int-to-double v2, v1

    sub-double/2addr p0, v2

    const-wide v2, 0x40b7700000000000L    # 6000.0

    mul-double/2addr p0, v2

    double-to-int p0, p0

    .line 2133
    new-instance p1, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    int-to-long v2, v0

    const-wide/16 v4, 0x1

    invoke-direct {p1, v2, v3, v4, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;-><init>(JJ)V

    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    int-to-long v1, v1

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;-><init>(JJ)V

    new-instance v1, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    int-to-long v2, p0

    const-wide/16 v4, 0x64

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;-><init>(JJ)V

    filled-new-array {p1, v0, v1}, [Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAperture(Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)V
    .locals 1

    .line 2016
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2018
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    :cond_0
    return-void
.end method

.method public addDateTimeStampTag(IJLjava/util/TimeZone;)Z
    .locals 2

    .line 1968
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_DATE_TIME:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 1970
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1971
    iget-object p4, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    .line 1975
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    const/4 p0, 0x1

    return p0
.end method

.method public addExposureTime(Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)V
    .locals 1

    .line 2024
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2026
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    :cond_0
    return-void
.end method

.method public addFlashTag(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1985
    sget p1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FLASH:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p1

    goto :goto_0

    .line 1987
    :cond_0
    sget p1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FLASH:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 1990
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    :cond_1
    return-void
.end method

.method public addFocalLength(Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)V
    .locals 1

    .line 1996
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1998
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    :cond_0
    return-void
.end method

.method public addGpsDateTimeStampTag(J)Z
    .locals 8

    .line 2088
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2092
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 2093
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2094
    sget p1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    new-instance p2, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    .line 2095
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x1

    invoke-direct {p2, v2, v3, v4, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;-><init>(JJ)V

    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    .line 2096
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;-><init>(JJ)V

    new-instance v2, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v6, 0xd

    .line 2097
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v6, v3

    invoke-direct {v2, v6, v7, v4, v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;-><init>(JJ)V

    filled-new-array {p2, v0, v2}, [Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    move-result-object p2

    .line 2094
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 2102
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    const/4 p0, 0x1

    return p0
.end method

.method public addGpsTags(DD)Z
    .locals 5

    .line 2063
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->toExifLatLong(D)[Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v0

    .line 2064
    sget v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-static {p3, p4}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->toExifLatLong(D)[Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v1

    .line 2065
    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    const-wide/16 v3, 0x0

    cmpl-double p1, p1, v3

    if-ltz p1, :cond_0

    .line 2066
    const-string p1, "N"

    goto :goto_0

    .line 2067
    :cond_0
    const-string p1, "S"

    .line 2065
    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p1

    .line 2068
    sget p2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    cmpl-double p3, p3, v3

    if-ltz p3, :cond_1

    .line 2069
    const-string p3, "E"

    goto :goto_1

    .line 2070
    :cond_1
    const-string p3, "W"

    .line 2068
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p2

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_2

    .line 2074
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 2075
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 2076
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 2077
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public addISO(I)V
    .locals 1

    .line 2032
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2034
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    :cond_0
    return-void
.end method

.method public addMakeAndModelTag()Z
    .locals 3

    .line 2107
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2108
    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2109
    const-string v0, "QCOM-AA"

    .line 2111
    :cond_0
    sget v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_MAKE:I

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 2115
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 2116
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_MODEL:I

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 2120
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    const/4 p0, 0x1

    return p0
.end method

.method public addOrientationTag(I)Z
    .locals 2

    const/16 v0, 0x5a

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    move p1, v1

    .line 2047
    :goto_0
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p0, 0x0

    return p0

    .line 2051
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    return v1
.end method

.method public addWhiteBalanceMode(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2005
    sget p1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p1

    goto :goto_0

    .line 2007
    :cond_0
    sget p1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 2010
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    :cond_1
    return-void
.end method

.method public buildTag(IILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;
    .locals 7

    .line 1501
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    .line 1505
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v3

    .line 1506
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    .line 1508
    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    .line 1511
    :cond_2
    new-instance p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v2

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;-><init>(SSIIZ)V

    .line 1512
    invoke-virtual {p0, p3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public buildTag(ILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;
    .locals 1

    .line 1526
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueIfd(I)I

    move-result v0

    .line 1527
    invoke-virtual {p0, p1, v0, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->buildTag(IILjava/lang/Object;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p0

    return-object p0
.end method

.method protected buildUninitializedTag(I)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;
    .locals 6

    .line 1531
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1535
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 1536
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    move v5, p0

    .line 1538
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueIfd(I)I

    move-result v4

    .line 1539
    new-instance p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;-><init>(SSIIZ)V

    return-object p0
.end method

.method public clearExif()V
    .locals 2

    .line 788
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    sget-object v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    return-void
.end method

.method public deleteTag(I)V
    .locals 1

    .line 1618
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1619
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->deleteTag(II)V

    return-void
.end method

.method public deleteTag(II)V
    .locals 0

    .line 1609
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->removeTag(SI)V

    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1136
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1100
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    .line 1103
    new-instance v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    sget-object v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    const/4 v1, 0x0

    .line 1107
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1108
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1109
    invoke-direct {p0, v2, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1110
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1111
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->readExif([B)V

    .line 1112
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    .line 1113
    invoke-virtual {p0, v1, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->writeExif([BLjava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1118
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1120
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1115
    :goto_0
    :try_start_2
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1116
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1118
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1120
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    .line 1121
    throw p1

    :cond_0
    :goto_2
    return-void
.end method

.method public getActualTagCount(II)I
    .locals 0

    .line 1437
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTag(II)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1441
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result p0

    return p0
.end method

.method public getAllTags()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1145
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDefinedTagCount(I)I
    .locals 0

    .line 1420
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1424
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result p0

    return p0
.end method

.method public getDefinedTagDefaultIfd(I)I
    .locals 0

    .line 1452
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1456
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueIfd(I)I

    move-result p0

    return p0
.end method

.method public getDefinedTagType(I)S
    .locals 0

    .line 1467
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1471
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result p0

    return p0
.end method

.method public getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    if-eqz p1, :cond_0

    .line 968
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;

    invoke-direct {v0, p1, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;)V

    .line 969
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->setExifData(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;)V

    return-object v0

    .line 966
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 991
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 993
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 994
    throw p0

    .line 987
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLatLongAsDoubles()[D
    .locals 5

    .line 1936
    sget v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagRationalValues(I)[Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    move-result-object v0

    .line 1937
    sget v1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v1

    .line 1938
    sget v2, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagRationalValues(I)[Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    move-result-object v2

    .line 1939
    sget v3, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 1940
    array-length v3, v0

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    array-length v3, v2

    if-ge v3, v4, :cond_0

    goto :goto_0

    .line 1945
    :cond_0
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;Ljava/lang/String;)D

    move-result-wide v0

    .line 1946
    invoke-static {v2, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;Ljava/lang/String;)D

    move-result-wide v2

    const/4 p0, 0x2

    new-array p0, p0, [D

    const/4 v4, 0x0

    aput-wide v0, p0, v4

    const/4 v0, 0x1

    aput-wide v2, p0, v0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTag(I)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;
    .locals 1

    .line 1194
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1195
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTag(II)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p0

    return-object p0
.end method

.method public getTag(II)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;
    .locals 1

    .line 1180
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1183
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getTag(SI)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p0

    return-object p0
.end method

.method public getTagByteValue(I)Ljava/lang/Byte;
    .locals 1

    .line 1298
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1299
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagByteValue(II)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public getTagByteValue(II)Ljava/lang/Byte;
    .locals 0

    .line 1287
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1288
    array-length p1, p0

    if-gtz p1, :cond_0

    goto :goto_0

    .line 1291
    :cond_0
    new-instance p1, Ljava/lang/Byte;

    const/4 p2, 0x0

    aget-byte p0, p0, p2

    invoke-direct {p1, p0}, Ljava/lang/Byte;-><init>(B)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTagByteValues(I)[B
    .locals 1

    .line 1374
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1375
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object p0

    return-object p0
.end method

.method public getTagByteValues(II)[B
    .locals 0

    .line 1363
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTag(II)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1367
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAsBytes()[B

    move-result-object p0

    return-object p0
.end method

.method protected getTagDefinition(SI)I
    .locals 0

    .line 1680
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method protected getTagDefinitionForTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)I
    .locals 3

    .line 1702
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getDataType()S

    move-result v0

    .line 1703
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getComponentCount()I

    move-result v1

    .line 1704
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getIfd()I

    move-result v2

    .line 1705
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getTagId()S

    move-result p1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagDefinitionForTag(SSII)I

    move-result p0

    return p0
.end method

.method protected getTagDefinitionForTag(SSII)I
    .locals 11

    .line 1709
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1713
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    .line 1715
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget v4, p1, v3

    .line 1716
    invoke-virtual {p0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 1717
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v6

    .line 1718
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v7

    .line 1719
    invoke-static {v5}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getAllowedIfdsFromInfo(I)[I

    move-result-object v5

    .line 1721
    array-length v8, v5

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_3

    aget v10, v5, v9

    if-ne v10, p4, :cond_2

    if-ne p2, v6, :cond_3

    if-eq p3, v7, :cond_1

    if-nez v7, :cond_3

    :cond_1
    move v0, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v0
.end method

.method protected getTagDefinitionsForTagId(S)[I
    .locals 8

    .line 1684
    invoke-static {}, Lcom/sonyericsson/android/camera/device/xmp/exif/IfdData;->getIfds()[I

    move-result-object v0

    .line 1685
    array-length v1, v0

    new-array v1, v1, [I

    .line 1687
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    .line 1688
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    aget v6, v0, v4

    .line 1689
    invoke-static {v6, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v6

    .line 1690
    invoke-virtual {p0, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v7, v5, 0x1

    .line 1691
    aput v6, v1, v5

    move v5, v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 1698
    :cond_2
    invoke-static {v1, v3, v5}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    return-object p0
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .line 2160
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2161
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 2162
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->initTagInfo()V

    .line 2164
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public getTagIntValue(I)Ljava/lang/Integer;
    .locals 1

    .line 1279
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1280
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagIntValue(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getTagIntValue(II)Ljava/lang/Integer;
    .locals 0

    .line 1268
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1269
    array-length p1, p0

    if-gtz p1, :cond_0

    goto :goto_0

    .line 1272
    :cond_0
    new-instance p1, Ljava/lang/Integer;

    const/4 p2, 0x0

    aget p0, p0, p2

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTagIntValues(I)[I
    .locals 1

    .line 1355
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1356
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object p0

    return-object p0
.end method

.method public getTagIntValues(II)[I
    .locals 0

    .line 1344
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTag(II)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1348
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAsInts()[I

    move-result-object p0

    return-object p0
.end method

.method public getTagLongValue(I)Ljava/lang/Long;
    .locals 1

    .line 1260
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1261
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagLongValue(II)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getTagLongValue(II)Ljava/lang/Long;
    .locals 2

    .line 1249
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1250
    array-length p1, p0

    if-gtz p1, :cond_0

    goto :goto_0

    .line 1253
    :cond_0
    new-instance p1, Ljava/lang/Long;

    const/4 p2, 0x0

    aget-wide v0, p0, p2

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTagLongValues(I)[J
    .locals 1

    .line 1336
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1337
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object p0

    return-object p0
.end method

.method public getTagLongValues(II)[J
    .locals 0

    .line 1325
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTag(II)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1329
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAsLongs()[J

    move-result-object p0

    return-object p0
.end method

.method public getTagRationalValue(I)Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;
    .locals 1

    .line 1317
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1318
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagRationalValue(II)Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    move-result-object p0

    return-object p0
.end method

.method public getTagRationalValue(II)Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;
    .locals 0

    .line 1306
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagRationalValues(II)[Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1307
    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1310
    :cond_0
    new-instance p1, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    const/4 p2, 0x0

    aget-object p0, p0, p2

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;-><init>(Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTagRationalValues(I)[Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;
    .locals 1

    .line 1393
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1394
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagRationalValues(II)[Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    move-result-object p0

    return-object p0
.end method

.method public getTagRationalValues(II)[Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;
    .locals 0

    .line 1382
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTag(II)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1386
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAsRationals()[Lcom/sonyericsson/android/camera/device/xmp/exif/Rational;

    move-result-object p0

    return-object p0
.end method

.method public getTagStringValue(I)Ljava/lang/String;
    .locals 1

    .line 1241
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1242
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagStringValue(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTagStringValue(II)Ljava/lang/String;
    .locals 0

    .line 1230
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTag(II)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1234
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTagValue(I)Ljava/lang/Object;
    .locals 1

    .line 1217
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1218
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagValue(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getTagValue(II)Ljava/lang/Object;
    .locals 0

    .line 1204
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTag(II)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1205
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTagsForIfdId(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1171
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getAllTagsForIfd(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTagsForTagId(S)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1158
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getAllTagsForTagId(S)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail()[B
    .locals 0

    .line 1789
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 1758
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1759
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object p0

    const/4 v0, 0x0

    .line 1760
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 1761
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->hasUncompressedStrip()Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public getThumbnailBytes()[B
    .locals 1

    .line 1775
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1776
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object p0

    return-object p0

    .line 1777
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->hasUncompressedStrip()Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserComment()Ljava/lang/String;
    .locals 0

    .line 1855
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->getUserComment()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasThumbnail()Z
    .locals 0

    .line 1808
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->hasCompressedThumbnail()Z

    move-result p0

    return p0
.end method

.method public isTagCountDefined(I)Z
    .locals 0

    .line 1404
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 1409
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public isThumbnailCompressed()Z
    .locals 0

    .line 1798
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->hasCompressedThumbnail()Z

    move-result p0

    return p0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 743
    :try_start_0
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifReader;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifReader;-><init>(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;)V

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    move-result-object p1
    :try_end_0
    .catch Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    return-void

    :catch_0
    move-exception p0

    .line 745
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid exif format : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 739
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readExif(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 764
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 765
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 770
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 767
    :goto_0
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 768
    throw p0

    .line 760
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readExif([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    return-void
.end method

.method public removeCompressedThumbnail()V
    .locals 1

    .line 1845
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->setCompressedThumbnail([B)V

    return-void
.end method

.method public removeTagDefinition(I)V
    .locals 0

    .line 1742
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method public resetTagDefinitions()V
    .locals 1

    const/4 v0, 0x0

    .line 1749
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-void
.end method

.method public rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1019
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1020
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    :try_start_1
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;

    move-result-object v2
    :try_end_1
    .catch Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1029
    :try_start_2
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifParser;->getOffsetToExifEndFromSOF()I

    move-result v2

    int-to-long v7, v2

    .line 1032
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1036
    :try_start_3
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {p1, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1037
    :try_start_4
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-ltz v1, :cond_0

    .line 1043
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    .line 1047
    invoke-virtual {p0, v1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z

    move-result p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1052
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1054
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    return p0

    .line 1039
    :cond_0
    :try_start_5
    new-instance p0, Ljava/io/IOException;

    const-string p2, "Filesize changed during operation"

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_0
    move-exception p0

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 1027
    :try_start_6
    new-instance p2, Ljava/io/IOException;

    const-string v1, "Invalid exif format : "

    invoke-direct {p2, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    move-object p1, v0

    .line 1049
    :goto_0
    :try_start_7
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1050
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p0

    move-object v0, p1

    .line 1052
    :goto_1
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1053
    throw p0
.end method

.method public rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection<",
            "Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1074
    :try_start_0
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifModifier;

    invoke-direct {v0, p1, p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifModifier;-><init>(Ljava/nio/ByteBuffer;Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;)V

    .line 1075
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 1076
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifModifier;->modifyTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)V

    goto :goto_0

    .line 1078
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifModifier;->commit()Z

    move-result p0
    :try_end_0
    .catch Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1080
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid exif format : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompressedThumbnail(Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 1834
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1835
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1838
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setCompressedThumbnail([B)Z

    move-result p0

    return p0
.end method

.method public setCompressedThumbnail([B)Z
    .locals 1

    .line 1821
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->clearThumbnailAndStrips()V

    .line 1822
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->setCompressedThumbnail([B)V

    const/4 p0, 0x1

    return p0
.end method

.method public setExif(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .line 780
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->clearExif()V

    .line 781
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    return-void
.end method

.method public setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;
    .locals 0

    .line 1586
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->mData:Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p0

    return-object p0
.end method

.method public setTagDefinition(SISS[I)I
    .locals 8

    .line 1638
    sget-object v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 1641
    :cond_0
    invoke-static {p3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->isValidType(S)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1642
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    .line 1646
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object p1

    .line 1647
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v2

    .line 1650
    array-length v3, p5

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_4

    aget v7, p5, v5

    if-ne p2, v7, :cond_2

    const/4 v6, 0x1

    .line 1654
    :cond_2
    invoke-static {v7}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->isValidIfd(I)Z

    move-result v7

    if-nez v7, :cond_3

    return v1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    return v1

    .line 1662
    :cond_5
    invoke-static {p5}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result p2

    if-eqz p1, :cond_7

    .line 1665
    array-length p5, p1

    :goto_1
    if-ge v4, p5, :cond_7

    aget v3, p1, v4

    .line 1666
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 1667
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v3

    and-int/2addr v3, p2

    if-eqz v3, :cond_6

    return v1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1673
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    shl-int/lit8 p1, p2, 0x18

    shl-int/lit8 p2, p3, 0x10

    or-int/2addr p1, p2

    or-int/2addr p1, p4

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    return v0

    :cond_8
    return v1
.end method

.method public setTagValue(IILjava/lang/Object;)Z
    .locals 0

    .line 1555
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getTag(II)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1559
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setTagValue(ILjava/lang/Object;)Z
    .locals 1

    .line 1572
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1573
    invoke-virtual {p0, p1, v0, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTagValue(IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .line 1597
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    .line 1598
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->setTag(Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;)Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeExif([BLjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 862
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 863
    :try_start_1
    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->write([BII)V

    .line 864
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 869
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->close()V

    .line 870
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifOutputStream;->size()I

    move-result p0

    return p0

    :catch_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 866
    :goto_0
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 867
    throw p1

    .line 858
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 822
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    .line 823
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x5a

    invoke-virtual {p1, p2, v0, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 824
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 820
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 890
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 891
    :try_start_1
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x5a

    invoke-virtual {p1, p2, v0, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 892
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 897
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 p0, 0x0

    .line 894
    :goto_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 895
    throw p1

    .line 886
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 840
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p2

    .line 841
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 842
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 838
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 917
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 918
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 919
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 924
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    const/4 p2, 0x0

    .line 921
    :goto_0
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 922
    throw p0

    .line 913
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeExif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 944
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 945
    :try_start_1
    invoke-virtual {p0, v1, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 950
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 947
    :goto_0
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 948
    throw p0

    .line 940
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeExif([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 804
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    const/4 p2, 0x0

    .line 805
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 806
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 802
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
