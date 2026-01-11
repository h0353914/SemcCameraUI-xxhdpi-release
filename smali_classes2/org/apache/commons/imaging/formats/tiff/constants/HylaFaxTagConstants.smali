.class public final Lorg/apache/commons/imaging/formats/tiff/constants/HylaFaxTagConstants;
.super Ljava/lang/Object;
.source "HylaFaxTagConstants.java"


# static fields
.field public static final ALL_HYLAFAX_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TAG_FAX_DCS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_FAX_RECV_PARAMS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

.field public static final EXIF_TAG_FAX_RECV_TIME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

.field public static final EXIF_TAG_FAX_SUB_ADDRESS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 29
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v2, "FaxRecvParams"

    const v3, 0x885c

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/HylaFaxTagConstants;->EXIF_TAG_FAX_RECV_PARAMS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 33
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v3, "FaxSubAddress"

    const v5, 0x885d

    const/4 v6, -0x1

    invoke-direct {v1, v3, v5, v6, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/HylaFaxTagConstants;->EXIF_TAG_FAX_SUB_ADDRESS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 37
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const v3, 0x885e

    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v7, "FaxRecvTime"

    invoke-direct {v2, v7, v3, v4, v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/HylaFaxTagConstants;->EXIF_TAG_FAX_RECV_TIME:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    .line 41
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const v5, 0x885f

    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v8, "FaxDCS"

    invoke-direct {v3, v8, v5, v6, v7}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/HylaFaxTagConstants;->EXIF_TAG_FAX_DCS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v5, 0x4

    .line 45
    new-array v5, v5, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v1, v5, v4

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/HylaFaxTagConstants;->ALL_HYLAFAX_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
