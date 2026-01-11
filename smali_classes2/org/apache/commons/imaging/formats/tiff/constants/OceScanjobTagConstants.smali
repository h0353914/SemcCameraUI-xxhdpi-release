.class public final Lorg/apache/commons/imaging/formats/tiff/constants/OceScanjobTagConstants;
.super Ljava/lang/Object;
.source "OceScanjobTagConstants.java"


# static fields
.field public static final ALL_OCE_SCANJOB_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TAG_OCE_APPLICATION_SELECTOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_OCE_IDENTIFICATION_NUMBER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_OCE_IMAGE_LOGIC_CHARACTERISTICS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

.field public static final EXIF_TAG_OCE_SCANJOB_DESCRIPTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 33
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v2, "Oce Scanjob Description"

    const v3, 0xc427

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/OceScanjobTagConstants;->EXIF_TAG_OCE_SCANJOB_DESCRIPTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 37
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const v2, 0xc428

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v5, "Oce Application Selector"

    invoke-direct {v1, v5, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/OceScanjobTagConstants;->EXIF_TAG_OCE_APPLICATION_SELECTOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 41
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const v3, 0xc429

    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v6, "Oce Identification Number"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/OceScanjobTagConstants;->EXIF_TAG_OCE_IDENTIFICATION_NUMBER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    .line 45
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const v5, 0xc42a

    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v7, "Oce ImageLogic Characteristics"

    invoke-direct {v3, v7, v5, v4, v6}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/OceScanjobTagConstants;->EXIF_TAG_OCE_IMAGE_LOGIC_CHARACTERISTICS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v4, 0x4

    .line 49
    new-array v4, v4, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/OceScanjobTagConstants;->ALL_OCE_SCANJOB_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
