.class public final Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;
.super Ljava/lang/Object;
.source "AdobePageMaker6TagConstants.java"


# static fields
.field public static final ALL_ADOBE_PAGEMAKER_6_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEXED_VALUE_INDEXED:I = 0x1

.field public static final INDEXED_VALUE_NOT_INDEXED:I = 0x0

.field public static final OPIPROXY_VALUE_HIGHER_RESOLUTION_IMAGE_DOES_NOT_EXIST:I = 0x0

.field public static final OPIPROXY_VALUE_HIGHER_RESOLUTION_IMAGE_EXISTS:I = 0x1

.field public static final TIFF_TAG_CLIP_PATH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

.field public static final TIFF_TAG_IMAGE_ID:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final TIFF_TAG_INDEXED:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final TIFF_TAG_OPIPROXY:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final TIFF_TAG_SUB_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongOrIFD;

.field public static final TIFF_TAG_XCLIP_PATH_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

.field public static final TIFF_TAG_YCLIP_PATH_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 39
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongOrIFD;

    const-string v1, "SubIFDs"

    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v2, 0x14a

    const/4 v3, -0x1

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongOrIFD;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;Z)V

    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_SUB_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongOrIFD;

    .line 43
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    const-string v1, "ClipPath"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v4, 0x157

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_CLIP_PATH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    .line 47
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const-string v1, "XClipPathUnits"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v4, 0x1

    const/16 v5, 0x158

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_XCLIP_PATH_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 51
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const-string v1, "YClipPathUnits"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v5, 0x159

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_YCLIP_PATH_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 55
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "Indexed"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v5, 0x15a

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_INDEXED:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 62
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "OPIProxy"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v5, 0x15f

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_OPIPROXY:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 68
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const-string v1, "ImageID"

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const v5, 0x800d

    invoke-direct {v0, v1, v5, v3, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_IMAGE_ID:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v0, 0x7

    .line 72
    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_SUB_IFD:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongOrIFD;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_CLIP_PATH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_XCLIP_PATH_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_YCLIP_PATH_UNITS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_INDEXED:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_OPIPROXY:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->TIFF_TAG_IMAGE_ID:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->ALL_ADOBE_PAGEMAKER_6_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
