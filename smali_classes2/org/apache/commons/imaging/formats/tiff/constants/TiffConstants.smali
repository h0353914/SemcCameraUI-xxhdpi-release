.class public final Lorg/apache/commons/imaging/formats/tiff/constants/TiffConstants;
.super Ljava/lang/Object;
.source "TiffConstants.java"


# static fields
.field public static final DEFAULT_TIFF_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final PARAM_KEY_LZW_COMPRESSION_BLOCK_SIZE:Ljava/lang/String; = "PARAM_KEY_LZW_COMPRESSION_BLOCK_SIZE"

.field public static final PARAM_KEY_SUBIMAGE_HEIGHT:Ljava/lang/String; = "SUBIMAGE_HEIGHT"

.field public static final PARAM_KEY_SUBIMAGE_WIDTH:Ljava/lang/String; = "SUBIMAGE_WIDTH"

.field public static final PARAM_KEY_SUBIMAGE_X:Ljava/lang/String; = "SUBIMAGE_X"

.field public static final PARAM_KEY_SUBIMAGE_Y:Ljava/lang/String; = "SUBIMAGE_Y"

.field public static final PARAM_KEY_T4_OPTIONS:Ljava/lang/String; = "T4_OPTIONS"

.field public static final PARAM_KEY_T6_OPTIONS:Ljava/lang/String; = "T6_OPTIONS"

.field public static final TIFF_COMPRESSION_CCITT_1D:I = 0x2

.field public static final TIFF_COMPRESSION_CCITT_GROUP_3:I = 0x3

.field public static final TIFF_COMPRESSION_CCITT_GROUP_4:I = 0x4

.field public static final TIFF_COMPRESSION_JPEG:I = 0x6

.field public static final TIFF_COMPRESSION_LZW:I = 0x5

.field public static final TIFF_COMPRESSION_PACKBITS:I = 0x8005

.field public static final TIFF_COMPRESSION_UNCOMPRESSED:I = 0x1

.field public static final TIFF_COMPRESSION_UNCOMPRESSED_1:I = 0x1

.field public static final TIFF_COMPRESSION_UNCOMPRESSED_2:I = 0x8003

.field public static final TIFF_DIRECTORY_FOOTER_LENGTH:I = 0x4

.field public static final TIFF_DIRECTORY_HEADER_LENGTH:I = 0x2

.field public static final TIFF_ENTRY_LENGTH:I = 0xc

.field public static final TIFF_ENTRY_MAX_VALUE_LENGTH:I = 0x4

.field public static final TIFF_FLAG_T4_OPTIONS_2D:I = 0x1

.field public static final TIFF_FLAG_T4_OPTIONS_FILL:I = 0x4

.field public static final TIFF_FLAG_T4_OPTIONS_UNCOMPRESSED_MODE:I = 0x2

.field public static final TIFF_FLAG_T6_OPTIONS_UNCOMPRESSED_MODE:I = 0x2

.field public static final TIFF_HEADER_SIZE:I = 0x8

.field public static final TIFF_LZW_COMPRESSION_BLOCK_SIZE_LARGE:I = 0x10000

.field public static final TIFF_LZW_COMPRESSION_BLOCK_SIZE_MEDIUM:I = 0x8000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffConstants;->DEFAULT_TIFF_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
