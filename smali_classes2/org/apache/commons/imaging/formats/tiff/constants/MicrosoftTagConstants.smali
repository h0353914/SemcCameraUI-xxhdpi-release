.class public final Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;
.super Ljava/lang/Object;
.source "MicrosoftTagConstants.java"


# static fields
.field public static final ALL_MICROSOFT_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TAG_RATING:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final EXIF_TAG_RATING_PERCENT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final EXIF_TAG_XPAUTHOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

.field public static final EXIF_TAG_XPCOMMENT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

.field public static final EXIF_TAG_XPKEYWORDS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

.field public static final EXIF_TAG_XPSUBJECT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

.field public static final EXIF_TAG_XPTITLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 32
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v2, "Rating"

    const/16 v3, 0x4746

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_RATING:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 36
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/16 v2, 0x4749

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v5, "RatingPercent"

    invoke-direct {v1, v5, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_RATING_PERCENT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    .line 40
    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v5, "XPTitle"

    const v6, 0x9c9b

    const/4 v7, -0x1

    invoke-direct {v2, v5, v6, v7, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPTITLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    .line 44
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    const v5, 0x9c9c

    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v8, "XPComment"

    invoke-direct {v3, v8, v5, v7, v6}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPCOMMENT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    .line 48
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    const v6, 0x9c9d

    sget-object v8, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v9, "XPAuthor"

    invoke-direct {v5, v9, v6, v7, v8}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPAUTHOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    .line 52
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    const v8, 0x9c9e

    sget-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v10, "XPKeywords"

    invoke-direct {v6, v10, v8, v7, v9}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPKEYWORDS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    .line 56
    new-instance v8, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    const v9, 0x9c9f

    sget-object v10, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const-string v11, "XPSubject"

    invoke-direct {v8, v11, v9, v7, v10}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v8, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPSUBJECT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    const/4 v7, 0x7

    .line 60
    new-array v7, v7, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v9, 0x0

    aput-object v0, v7, v9

    aput-object v1, v7, v4

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v5, v7, v0

    const/4 v0, 0x5

    aput-object v6, v7, v0

    const/4 v0, 0x6

    aput-object v8, v7, v0

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->ALL_MICROSOFT_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
