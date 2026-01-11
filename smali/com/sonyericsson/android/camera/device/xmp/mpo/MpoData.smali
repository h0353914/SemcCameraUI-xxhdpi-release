.class public Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;
.super Ljava/lang/Object;
.source "MpoData.java"


# instance fields
.field private mAuxiliaryImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    return-void
.end method

.method private updateAttribIfdTags()V
    .locals 9

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    int-to-short v2, v1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;-><init>(SSIIZ)V

    const-wide v1, 0xffffffffL

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue(J)Z

    .line 173
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    .line 175
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryMpoImages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    .line 176
    new-instance v8, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    sget v2, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    int-to-short v3, v2

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;-><init>(SSIIZ)V

    add-int/lit8 v2, v0, 0x1

    .line 178
    invoke-virtual {v8, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue(I)Z

    .line 179
    invoke-virtual {v1, v8}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move v0, v2

    goto :goto_0

    :cond_0
    return-void

    .line 165
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No auxiliary images have been added"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 163
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Primary Mpo Image has not been set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updateIndexIfdTags()V
    .locals 9

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    if-eqz v0, :cond_3

    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getTag(SI)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v4, v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;-><init>(SSIIZ)V

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue(I)Z

    .line 138
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    .line 141
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v4, v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;-><init>(SSIIZ)V

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    new-instance v2, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->calculateImageSize()I

    move-result v3

    const/high16 v4, 0x20000000

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;-><init>(III)V

    .line 148
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->calculateImageSize()I

    move-result v2

    .line 151
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryMpoImages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    .line 152
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->calculateImageSize()I

    move-result v4

    .line 153
    new-instance v5, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;

    const v6, 0x20002

    invoke-direct {v5, v6, v4, v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;-><init>(III)V

    .line 154
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v4

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue(Ljava/util/List;)Z

    .line 158
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    return-void

    .line 129
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No auxiliary images have been added"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Primary Mpo Image has not been set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addAuxiliaryMpoImage(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->addDefaultAttribIfdTags(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;I)V

    return-void
.end method

.method public addDefaultAttribIfdTags(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;I)V
    .locals 7

    .line 73
    new-instance p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    sget v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    int-to-short v1, v0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x7

    const/4 v3, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;-><init>(SSIIZ)V

    .line 75
    sget-object v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->MP_FORMAT_VER_VALUE:[B

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue([B)Z

    .line 76
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    .line 78
    new-instance p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    sget v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    int-to-short v2, v0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;-><init>(SSIIZ)V

    .line 80
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue(I)Z

    .line 81
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    return-void
.end method

.method public addDefaultIndexIfdTags()V
    .locals 9

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    if-eqz v0, :cond_4

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    int-to-short v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getTag(SI)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    int-to-short v4, v1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v5, 0x7

    const/4 v6, 0x4

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;-><init>(SSIIZ)V

    .line 95
    sget-object v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->MP_FORMAT_VER_VALUE:[B

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue([B)Z

    .line 96
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getTag(SI)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move-result-object v0

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v4, v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;-><init>(SSIIZ)V

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue(I)Z

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    .line 109
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v4, v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;-><init>(SSIIZ)V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    new-instance v2, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 114
    new-instance v3, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue(Ljava/util/List;)Z

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    return-void

    .line 88
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No auxiliary images have been added"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Primary Mpo Image has not been set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAuxiliaryImageCount()I
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getAuxiliaryMpoImages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getPrimaryMpoImage()Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    return-object p0
.end method

.method public removeAuxiliaryMpoImage(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;)Z
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setPrimaryMpoImage(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;)V
    .locals 1

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->addDefaultAttribIfdTags(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;I)V

    .line 46
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->addDefaultIndexIfdTags()V

    return-void
.end method

.method public updateAllTags()V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->updateAttribIfdTags()V

    .line 122
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->updateIndexIfdTags()V

    return-void
.end method
