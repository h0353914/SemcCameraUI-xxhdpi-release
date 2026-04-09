.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
.super Ljava/lang/Enum;
.source "VideoSize.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final TAG:Ljava/lang/String; = "VideoSize"

.field public static final enum VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field private static final sParameterTextId:I = 0x7f0f0308


# instance fields
.field private final mIconId:I

.field private final mIsConstraint:Z

.field private mTextId:I

.field private mVideoRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 34
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v1, "FOUR_K_UHD_H264"

    new-instance v5, Landroid/graphics/Rect;

    const/16 v8, 0x870

    const/16 v9, 0xf00

    const/4 v10, 0x0

    invoke-direct {v5, v10, v10, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f02f5

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v12, "FOUR_K_UHD_H265"

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v10, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v13, 0x1

    const/4 v14, -0x1

    const v15, 0x7f0f02f5

    const/16 v17, 0x0

    move-object v11, v0

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v17}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v3, "FULL_HD_60FPS"

    new-instance v7, Landroid/graphics/Rect;

    const/16 v1, 0x438

    const/16 v9, 0x780

    invoke-direct {v7, v10, v10, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x2

    const/4 v5, -0x1

    const v6, 0x7f0f02f7

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v12, "FULL_HD"

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v10, v10, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v13, 0x3

    const v15, 0x7f0f02fa

    move-object v11, v0

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v17}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 58
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v4, "HD_120FPS"

    new-instance v8, Landroid/graphics/Rect;

    const/16 v1, 0x2d0

    const/16 v2, 0x500

    invoke-direct {v8, v10, v10, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x4

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 63
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v12, "HD"

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v10, v10, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v13, 0x5

    const v15, 0x7f0f02fe

    move-object v11, v0

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v17}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 68
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v19, "VGA"

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x280

    const/16 v3, 0x1e0

    invoke-direct {v1, v10, v10, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v20, 0x6

    const/16 v21, -0x1

    const v22, 0x7f0f0303

    const/16 v24, 0x0

    move-object/from16 v18, v0

    move-object/from16 v23, v1

    invoke-direct/range {v18 .. v24}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 77
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const-string v3, "MMS"

    new-instance v7, Landroid/graphics/Rect;

    const/16 v1, 0xb0

    const/16 v2, 0x90

    invoke-direct {v7, v10, v10, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x7

    const/4 v5, -0x1

    const v6, 0x7f0f02ff

    const/4 v8, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/16 v0, 0x8

    .line 33
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Rect;",
            "Z)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIconId:I

    .line 106
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mTextId:I

    .line 107
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    .line 108
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIsConstraint:Z

    return-void
.end method

.method private static equals(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 220
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static findVideoSizeWithConfiguration(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;
    .locals 4

    .line 253
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoQuality()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 256
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 257
    invoke-static {p2, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x5

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 259
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 260
    invoke-static {p2, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 262
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 263
    invoke-static {p2, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 266
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 272
    iget-object p0, p1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    .line 275
    invoke-static {p0, v0, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_6

    .line 280
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 282
    :cond_6
    iget-object p0, p1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    .line 239
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/ActionMode;->mIsOneShot:Z

    if-eqz v1, :cond_0

    .line 240
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    .line 241
    invoke-static {p1, v0, p0, p2, p3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->findVideoSizeWithConfiguration(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 243
    :cond_0
    iget-object p0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    .line 244
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object p0

    .line 246
    :goto_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0
.end method

.method private static getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 6

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 226
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 227
    const-class v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {v5, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    :cond_0
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0

    .line 230
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 12

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    .line 167
    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->VIDEO_CONFIGURATION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 169
    iget-object v2, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 171
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v3

    .line 170
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFullHdVideoFpsSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;I)Z

    move-result v2

    .line 169
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 174
    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getVideoSizeOptions()[Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 178
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v0, v6

    .line 180
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    .line 181
    new-instance v10, Landroid/graphics/Rect;

    iget v11, v9, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    iget v9, v9, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    invoke-direct {v10, v5, v5, v11, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 182
    iget-object v9, v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->equals(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 183
    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 203
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    :pswitch_1
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 196
    :pswitch_2
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :pswitch_3
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 188
    :pswitch_4
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 189
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 211
    :cond_2
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/ActionMode;->mIsOneShot:Z

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoQuality()J

    move-result-wide p0

    long-to-int p0, p0

    if-nez p0, :cond_3

    .line 212
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 213
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_3
    new-array p0, v5, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 6

    .line 305
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->videoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 306
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->setOneShot(Z)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->build()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v0

    .line 307
    invoke-static {p0, v0, p3, p4}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->create(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxDuration()I

    move-result v0

    int-to-long v2, v0

    .line 309
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoMaxDurationInMillisecs()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return-object p1

    .line 319
    :cond_0
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 321
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 335
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p1

    .line 327
    :pswitch_1
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 328
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    .line 331
    :cond_3
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    .line 323
    :cond_4
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    .line 342
    :cond_5
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z
    .locals 4

    .line 289
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 290
    invoke-virtual {v3, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static final preload()V
    .locals 0

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 1

    .line 33
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 1

    .line 33
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 122
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 140
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 130
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f0308

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 354
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 150
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 160
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoRect()Landroid/graphics/Rect;
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public is4KVideo()Z
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/16 v1, 0xf00

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    .line 368
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    const/16 v0, 0x870

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isConstraint()Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIsConstraint:Z

    return p0
.end method
