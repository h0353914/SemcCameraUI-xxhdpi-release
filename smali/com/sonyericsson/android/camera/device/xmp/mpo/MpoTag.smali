.class public Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;
.super Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;
.source "MpoTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MpoTag"

.field static final TAG_SIZE:I = 0xc


# direct methods
.method constructor <init>(SSIIZ)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/sonyericsson/android/camera/device/xmp/exif/ExifTag;-><init>(SSIIZ)V

    return-void
.end method


# virtual methods
.method public getMpEntryValue()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getTagId()S

    move-result v0

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v1, v1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getValueAsBytes()[B

    move-result-object p0

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    const/16 v2, 0x10

    div-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 69
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 70
    new-instance v3, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;

    invoke-static {p0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x10

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public setValue(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;",
            ">;)Z"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getTagId()S

    move-result v0

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 54
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x10

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    .line 55
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 56
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;

    mul-int/lit8 v4, v2, 0x10

    .line 57
    invoke-static {v0, v4, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->getBytes(Ljava/nio/ByteBuffer;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue([B)Z

    move-result p0

    return p0
.end method
