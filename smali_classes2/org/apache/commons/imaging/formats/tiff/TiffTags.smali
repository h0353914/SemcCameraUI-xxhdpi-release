.class final Lorg/apache/commons/imaging/formats/tiff/TiffTags;
.super Ljava/lang/Object;
.source "TiffTags.java"


# static fields
.field private static final ALL_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALL_TAG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TAG_COUNTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    invoke-static {}, Lorg/apache/commons/imaging/formats/tiff/TiffTags;->makeMergedTagList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/TiffTags;->ALL_TAGS:Ljava/util/List;

    .line 53
    invoke-static {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffTags;->makeTagMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/imaging/formats/tiff/TiffTags;->ALL_TAG_MAP:Ljava/util/Map;

    .line 54
    invoke-static {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffTags;->countTags(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/TiffTags;->TAG_COUNTS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static countTags(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    .line 102
    iget v2, v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 104
    iget v1, v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
    :cond_0
    iget v1, v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static getTag(II)Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
    .locals 1

    .line 118
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/TiffTags;->ALL_TAG_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 121
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    return-object p0

    .line 124
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffTags;->getTag(ILjava/util/List;)Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getTag(ILjava/util/List;)Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;)",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;"
        }
    .end annotation

    .line 130
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 135
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    .line 136
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->directoryType:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 139
    :cond_2
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->directoryType:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    iget v2, v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->directoryType:I

    if-ne p0, v2, :cond_1

    return-object v1

    .line 145
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    .line 146
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->directoryType:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    if-ne v2, v3, :cond_5

    goto :goto_1

    :cond_5
    if-ltz p0, :cond_6

    .line 149
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->directoryType:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->isImageDirectory()Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_6
    if-gez p0, :cond_4

    .line 152
    iget-object v2, v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->directoryType:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->isImageDirectory()Z

    move-result v2

    if-nez v2, :cond_4

    return-object v1

    .line 159
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    .line 160
    iget-object v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->directoryType:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    if-ne v0, v1, :cond_8

    return-object p1

    .line 165
    :cond_9
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    return-object p0
.end method

.method static getTagCount(I)Ljava/lang/Integer;
    .locals 1

    .line 114
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/TiffTags;->TAG_COUNTS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private static makeMergedTagList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePageMaker6TagConstants;->ALL_ADOBE_PAGEMAKER_6_TAGS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/AdobePhotoshopTagConstants;->ALL_ADOBE_PHOTOSHOP_TAGS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/AliasSketchbookProTagConstants;->ALL_ALIAS_SKETCHBOOK_PRO_TAGS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 61
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/DcfTagConstants;->ALL_DCF_TAGS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/DngTagConstants;->ALL_DNG_TAGS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 63
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->ALL_EXIF_TAGS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GeoTiffTagConstants;->ALL_GEO_TIFF_TAGS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 65
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GdalLibraryTagConstants;->ALL_GDAL_LIBRARY_TAGS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->ALL_GPS_TAGS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 67
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/HylaFaxTagConstants;->ALL_HYLAFAX_TAGS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->ALL_MICROSOFT_TAGS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftHdPhotoTagConstants;->ALL_MICROSOFT_HD_PHOTO_TAGS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 70
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/MolecularDynamicsGelTagConstants;->ALL_MOLECULAR_DYNAMICS_GEL_TAGS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/OceScanjobTagConstants;->ALL_OCE_SCANJOB_TAGS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 72
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/Rfc2301TagConstants;->ALL_RFC_2301_TAGS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/Tiff4TagConstants;->ALL_TIFF_4_TAGS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->ALL_TIFF_EP_TAGS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->ALL_TIFF_TAGS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/WangTagConstants;->ALL_WANG_TAGS:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 78
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static makeTagMap(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;>;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    .line 87
    iget v2, v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget v3, v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
