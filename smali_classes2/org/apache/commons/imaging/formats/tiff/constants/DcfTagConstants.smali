.class public final Lorg/apache/commons/imaging/formats/tiff/constants/DcfTagConstants;
.super Ljava/lang/Object;
.source "DcfTagConstants.java"


# static fields
.field public static final ALL_DCF_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_SPACE_VALUE_ADOBE_RGB:I = 0x2

.field public static final COLOR_SPACE_VALUE_SRGB:I = 0x1

.field public static final COLOR_SPACE_VALUE_UNCALIBRATED:I = 0xffff

.field public static final EXIF_TAG_COLOR_SPACE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final EXIF_TAG_RELATED_IMAGE_FILE_FORMAT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_RELATED_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

.field public static final EXIF_TAG_RELATED_IMAGE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 35
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v1, -0x1

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_INTEROP_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v3, "RelatedImageFileFormat"

    const/16 v4, 0x1000

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/DcfTagConstants;->EXIF_TAG_RELATED_IMAGE_FILE_FORMAT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 39
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_INTEROP_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v3, "RelatedImageWidth"

    const/16 v4, 0x1001

    const/4 v5, 0x1

    invoke-direct {v1, v3, v4, v5, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/DcfTagConstants;->EXIF_TAG_RELATED_IMAGE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    .line 43
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const/16 v3, 0x1002

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_INTEROP_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v6, "RelatedImageLength"

    invoke-direct {v2, v6, v3, v5, v4}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/DcfTagConstants;->EXIF_TAG_RELATED_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    .line 47
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const v4, 0xa001

    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v7, "ColorSpace"

    invoke-direct {v3, v7, v4, v5, v6}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/DcfTagConstants;->EXIF_TAG_COLOR_SPACE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/4 v4, 0x4

    .line 53
    new-array v4, v4, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/DcfTagConstants;->ALL_DCF_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
