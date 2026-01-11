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

.field public static final enum FOUR_K_UHD_PLUS_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FOUR_K_UHD_PLUS_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FULL_HD_PLUS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum FULL_HD_ULTRA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final enum SQUARE_FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field public static final TAG:Ljava/lang/String; = "VideoSize"

.field public static final enum VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field private static final sParameterTextId:I = 0x7f0f04a6


# instance fields
.field private final mIconId:I

.field private final mIsConstraint:Z

.field private mTextId:I

.field private mVideoRect:Landroid/graphics/Rect;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 15

    .line 33
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_PLUS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_ULTRA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->SQUARE_FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    filled-new-array/range {v0 .. v14}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 25

    .line 34
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/16 v9, 0xf00

    const/16 v10, 0x870

    invoke-direct {v5, v8, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    const-string v1, "FOUR_K_UHD_H264"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f0487

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v8, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v17, 0x0

    const-string v12, "FOUR_K_UHD_H265"

    const/4 v13, 0x1

    const/4 v14, -0x1

    const v15, 0x7f0f0487

    move-object v11, v0

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v17}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x780

    invoke-direct {v1, v8, v8, v9, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v24, 0x0

    const-string v19, "FOUR_K_UHD_PLUS_H264"

    const/16 v20, 0x2

    const/16 v21, -0x1

    const v22, 0x7f0f0489

    move-object/from16 v18, v0

    move-object/from16 v23, v1

    invoke-direct/range {v18 .. v24}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v8, v8, v9, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v16, 0x0

    const-string v11, "FOUR_K_UHD_PLUS_H265"

    const/4 v12, 0x3

    const/4 v13, -0x1

    const v14, 0x7f0f0489

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 58
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v3, 0x66c

    invoke-direct {v1, v8, v8, v9, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v23, 0x0

    const-string v18, "FOUR_K_UHD_ULTRA_H264"

    const/16 v19, 0x4

    const/16 v20, -0x1

    const v21, 0x7f0f048b

    move-object/from16 v17, v0

    move-object/from16 v22, v1

    invoke-direct/range {v17 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 64
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v8, v8, v9, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v11, "FOUR_K_UHD_ULTRA_H265"

    const/4 v12, 0x5

    const v14, 0x7f0f048b

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 71
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v3, 0x438

    invoke-direct {v1, v8, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v18, "FULL_HD_60FPS"

    const/16 v19, 0x6

    const v21, 0x7f0f048c

    move-object/from16 v17, v0

    move-object/from16 v22, v1

    invoke-direct/range {v17 .. v23}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 77
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v8, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v15, 0x0

    const-string v10, "FULL_HD"

    const/4 v11, 0x7

    const/4 v12, -0x1

    const v13, 0x7f0f04a1

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 83
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v4, 0x3c0

    invoke-direct {v1, v8, v8, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v22, 0x0

    const-string v17, "FULL_HD_PLUS"

    const/16 v18, 0x8

    const/16 v19, -0x1

    const v20, 0x7f0f0491

    move-object/from16 v16, v0

    move-object/from16 v21, v1

    invoke-direct/range {v16 .. v22}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_PLUS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 89
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v14, Landroid/graphics/Rect;

    const/16 v1, 0x338

    invoke-direct {v14, v8, v8, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v10, "FULL_HD_ULTRA"

    const/16 v11, 0x9

    const v13, 0x7f0f0484

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_ULTRA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 95
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v8, v8, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v17, "SQUARE_FULL_HD"

    const/16 v18, 0xa

    const v20, 0x7f0f049f

    move-object/from16 v16, v0

    move-object/from16 v21, v1

    invoke-direct/range {v16 .. v22}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->SQUARE_FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 100
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v14, Landroid/graphics/Rect;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v14, v8, v8, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v10, "HD_120FPS"

    const/16 v11, 0xb

    const/4 v13, -0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 105
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v8, v8, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v17, "HD"

    const/16 v18, 0xc

    const v20, 0x7f0f04a4

    move-object/from16 v16, v0

    move-object/from16 v21, v3

    invoke-direct/range {v16 .. v22}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 110
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v14, Landroid/graphics/Rect;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v14, v8, v8, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v10, "VGA"

    const/16 v11, 0xd

    const v13, 0x7f0f049d

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 119
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    new-instance v6, Landroid/graphics/Rect;

    const/16 v1, 0xb0

    const/16 v2, 0x90

    invoke-direct {v6, v8, v8, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x1

    const-string v2, "MMS"

    const/16 v3, 0xe

    const/4 v4, -0x1

    const v5, 0x7f0f0499

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 33
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

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

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIconId:I

    .line 148
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mTextId:I

    .line 149
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    .line 150
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIsConstraint:Z

    return-void
.end method

.method private static equals(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 251
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
    .locals 5

    .line 284
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoQuality()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 287
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 288
    invoke-static {p2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    .line 290
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->SQUARE_FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 291
    invoke-static {p2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x5

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 293
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 294
    invoke-static {p2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 296
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 297
    invoke-static {p2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 300
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_5

    .line 306
    iget-object p0, p1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    .line 309
    invoke-static {p0, v3, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v3

    :cond_6
    if-eqz v3, :cond_7

    .line 314
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 316
    :cond_7
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

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    .line 270
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/ActionMode;->mIsOneShot:Z

    if-eqz v1, :cond_0

    .line 271
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    .line 272
    invoke-static {p1, v0, p0, p2, p3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->findVideoSizeWithConfiguration(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 274
    :cond_0
    iget-object p0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    .line 275
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultVideoSize()Ljava/lang/String;

    move-result-object p0

    .line 277
    :goto_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0
.end method

.method private static getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 6

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 257
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 258
    const-class v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {v5, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    :cond_0
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0

    .line 261
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 12

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    .line 209
    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->VIDEO_CONFIGURATION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 210
    iget-object v2, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 212
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v3

    .line 211
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFullHdVideoFpsSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;I)Z

    move-result v2

    .line 210
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 215
    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getVideoSizeOptions()[Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 217
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 219
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_4

    aget-object v7, v0, v6

    .line 221
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    .line 222
    new-instance v10, Landroid/graphics/Rect;

    iget v11, v9, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    iget v9, v9, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    invoke-direct {v10, v5, v5, v11, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 223
    iget-object v9, v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->equals(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 224
    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    .line 234
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 230
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 226
    :cond_2
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 242
    :cond_4
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/ActionMode;->mIsOneShot:Z

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoQuality()J

    move-result-wide p0

    long-to-int p0, p0

    if-nez p0, :cond_5

    .line 243
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 244
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_5
    new-array p0, v5, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0
.end method

.method private static getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 4

    .line 339
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->videoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->build()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    move-result-object v0

    .line 340
    invoke-static {p0, v0, p3, p4}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->create(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxDuration()I

    move-result v0

    int-to-long v0, v0

    .line 342
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoMaxDurationInMillisecs()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-object p1

    .line 352
    :cond_0
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 354
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 376
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    invoke-static {p0, v0, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object p1

    .line 368
    :cond_4
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 369
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    .line 372
    :cond_5
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    .line 364
    :cond_6
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    .line 356
    :cond_7
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->SQUARE_FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 357
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    .line 360
    :cond_8
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    .line 383
    :cond_9
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0
.end method

.method public static is4KVideo16To9(Landroid/graphics/Rect;)Z
    .locals 1

    .line 428
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 429
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static is4KVideo21To9(Landroid/graphics/Rect;)Z
    .locals 1

    .line 436
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 437
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isContents([Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z
    .locals 4

    .line 323
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 324
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

    .line 164
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    return-void
.end method

.method public getAspect()F
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getIconId()I
    .locals 0

    .line 182
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 172
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f04a6

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 395
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 192
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 202
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoRect()Landroid/graphics/Rect;
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public is4KVideo()Z
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/16 v1, 0xf00

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    .line 416
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/16 v2, 0x870

    if-eq v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    .line 417
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    .line 418
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/16 v2, 0x780

    if-eq v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    .line 419
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mVideoRect:Landroid/graphics/Rect;

    .line 420
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    const/16 v0, 0x66c

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public isConstraint()Z
    .locals 0

    .line 154
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->mIsConstraint:Z

    return p0
.end method

.method public isFhd60Fps()Z
    .locals 1

    .line 444
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
