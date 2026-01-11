.class public Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;
.super Ljava/lang/Object;
.source "MpoIfdData.java"


# static fields
.field public static final MP_FORMAT_VER_VALUE:[B

.field public static final TYPE_MP_ATTRIB_IFD:I = 0x2

.field public static final TYPE_MP_INDEX_IFD:I = 0x1


# instance fields
.field private final mIfdId:I

.field private mOffsetToNextIfd:I

.field private final mTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 31
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->MP_FORMAT_VER_VALUE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x30t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->mOffsetToNextIfd:I

    .line 41
    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->mIfdId:I

    return-void
.end method


# virtual methods
.method protected checkCollision(S)Z
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 111
    :cond_1
    instance-of v2, p1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    if-eqz v2, :cond_4

    .line 112
    check-cast p1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    .line 113
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->getTagCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->getTagCount()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 114
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->getAllTags()[Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move-result-object p1

    .line 115
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    .line 116
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getTagId()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    .line 117
    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    return v1
.end method

.method protected getAllTags()[Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    return-object p0
.end method

.method protected getOffsetToNextIfd()I
    .locals 0

    .line 96
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->mOffsetToNextIfd:I

    return p0
.end method

.method protected getTag(S)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    return-object p0
.end method

.method protected getTagCount()I
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method protected removeTag(S)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setOffsetToNextIfd(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->mOffsetToNextIfd:I

    return-void
.end method

.method protected setTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;
    .locals 1

    .line 63
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->mIfdId:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setIfd(I)V

    .line 64
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getTagId()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    return-object p0
.end method
