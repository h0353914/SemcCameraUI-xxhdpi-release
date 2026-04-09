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
    .locals 5

    .line 35
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "RelatedImageFileFormat"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_INTEROP_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v3, 0x1000

    const/4 v4, -0x1

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/DcfTagConstants;->EXIF_TAG_RELATED_IMAGE_FILE_FORMAT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 39
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const-string v1, "RelatedImageWidth"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_INTEROP_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v3, 0x1

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/DcfTagConstants;->EXIF_TAG_RELATED_IMAGE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    .line 43
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const-string v1, "RelatedImageLength"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_INTEROP_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v4, 0x1002

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/DcfTagConstants;->EXIF_TAG_RELATED_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    .line 47
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "ColorSpace"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v4, 0xa001

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/DcfTagConstants;->EXIF_TAG_COLOR_SPACE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/4 v0, 0x4

    .line 53
    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/DcfTagConstants;->EXIF_TAG_RELATED_IMAGE_FILE_FORMAT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/DcfTagConstants;->EXIF_TAG_RELATED_IMAGE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/DcfTagConstants;->EXIF_TAG_RELATED_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/DcfTagConstants;->EXIF_TAG_COLOR_SPACE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

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
