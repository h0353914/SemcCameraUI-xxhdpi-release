.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
.super Ljava/lang/Enum;
.source "Iso.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Iso;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_100:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_12800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_1600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_25600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_3200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_50:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_51200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_6400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final TAG:Ljava/lang/String; = "Iso"

.field private static mIndexOfDefault:I = 0x1

.field private static final sParameterTextId:I = 0x7f0f01c8


# instance fields
.field private final mAeMode:Ljava/lang/String;

.field private final mIconId:I

.field private final mIsoValue:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 30
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v1, "ISO_AUTO"

    const-string v5, "auto"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f01a6

    const/4 v6, -0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v9, "ISO_50"

    const-string v13, "iso-prio"

    const/4 v10, 0x1

    const/4 v11, -0x1

    const v12, 0x7f0f01c2

    const/16 v14, 0x32

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_50:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 43
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v2, "ISO_100"

    const-string v6, "iso-prio"

    const/4 v3, 0x2

    const/4 v4, -0x1

    const v5, 0x7f0f01bb

    const/16 v7, 0x64

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_100:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 48
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v9, "ISO_200"

    const-string v13, "iso-prio"

    const/4 v10, 0x3

    const v12, 0x7f0f01be

    const/16 v14, 0xc8

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 53
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v2, "ISO_400"

    const-string v6, "iso-prio"

    const/4 v3, 0x4

    const v5, 0x7f0f01c1

    const/16 v7, 0x190

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 58
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v9, "ISO_800"

    const-string v13, "iso-prio"

    const/4 v10, 0x5

    const v12, 0x7f0f01c5

    const/16 v14, 0x320

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 63
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v2, "ISO_1600"

    const-string v6, "iso-prio"

    const/4 v3, 0x6

    const v5, 0x7f0f01bd

    const/16 v7, 0x640

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_1600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 68
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v9, "ISO_3200"

    const-string v13, "iso-prio"

    const/4 v10, 0x7

    const v12, 0x7f0f01c0

    const/16 v14, 0xc80

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_3200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 73
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v2, "ISO_6400"

    const-string v6, "iso-prio"

    const/16 v3, 0x8

    const v5, 0x7f0f01c4

    const/16 v7, 0x1900

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_6400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 78
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v9, "ISO_12800"

    const-string v13, "iso-prio"

    const/16 v10, 0x9

    const v12, 0x7f0f01bc

    const/16 v14, 0x3200

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_12800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 83
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v2, "ISO_25600"

    const-string v6, "iso-prio"

    const/16 v3, 0xa

    const v5, 0x7f0f01bf

    const/16 v7, 0x6400

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_25600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 88
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v9, "ISO_51200"

    const-string v13, "iso-prio"

    const/16 v10, 0xb

    const v12, 0x7f0f01c3

    const v14, 0xc800

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_51200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/16 v0, 0xc

    .line 29
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_50:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_100:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_1600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_3200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_6400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_12800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_25600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_51200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIconId:I

    .line 118
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mTextId:I

    .line 119
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mAeMode:Ljava/lang/String;

    .line 120
    iput p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIsoValue:I

    return-void
.end method

.method public static adjustToSupportedValue(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
    .locals 4

    .line 294
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_0

    array-length v0, p1

    if-ne v0, v2, :cond_1

    :cond_0
    aget-object v0, p1, v1

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    if-ne v0, v3, :cond_1

    .line 295
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object p0

    .line 300
    :cond_1
    aget-object v0, p1, v1

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 302
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v0

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 303
    aget-object p0, p1, v1

    goto :goto_1

    .line 304
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v1, v2

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 305
    array-length p0, p1

    sub-int/2addr p0, v2

    aget-object p0, p1, p0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public static canBeManuallySetWith(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z
    .locals 3

    .line 272
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 274
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MANUAL_ISO_SUPPORTED_PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 275
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 276
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getIndexOfDefault()I
    .locals 1

    .line 192
    sget v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIndexOfDefault:I

    return v0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
    .locals 9

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v1

    .line 203
    iget-object v2, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->AE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 204
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 205
    new-array p0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object p0

    .line 206
    :cond_0
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_1
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v3, :cond_6

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v3, :cond_6

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v3, :cond_6

    .line 213
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v3, "iso-prio"

    .line 218
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 219
    new-array p0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object p0

    .line 226
    :cond_3
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Iso$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FusionMode:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/FusionMode;->ordinal()I

    move-result p2

    aget p2, v2, p2

    packed-switch p2, :pswitch_data_0

    .line 242
    iget-object p2, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Range;

    .line 243
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_100:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v1

    goto :goto_0

    .line 236
    :pswitch_0
    iget-object p2, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FUSION_ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Range;

    .line 237
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_1600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v1

    goto :goto_0

    .line 228
    :pswitch_1
    new-instance p2, Landroid/util/Range;

    iget-object v2, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 229
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FUSION_ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 230
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 229
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 231
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FUSION_ISO_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 232
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 231
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v2, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 233
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_1600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v1

    .line 247
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    move-result-object v2

    array-length v3, v2

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    .line 248
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v7

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lt v7, v8, :cond_4

    .line 249
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v7

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v7, v8, :cond_4

    .line 250
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->canBeManuallySetWith(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 251
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v6

    if-gt v6, v1, :cond_4

    .line 255
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    sput v6, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIndexOfDefault:I

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 261
    :cond_5
    new-array p0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object p0

    .line 214
    :cond_6
    :goto_2
    new-array p0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
    .locals 1

    .line 29
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
    .locals 1

    .line 29
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 130
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 148
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIconId:I

    return p0
.end method

.method public getIsoValue()I
    .locals 0

    .line 172
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIsoValue:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 138
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f01c8

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 158
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mAeMode:Ljava/lang/String;

    return-object p0
.end method
