.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
.super Ljava/lang/Enum;
.source "Resolution.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum NINETEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SQUARE_FOURTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SQUARE_FOUR_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SQUARE_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SQUARE_NINE_POINT_SEVEN:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SQUARE_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final TAG:Ljava/lang/String; = "Resolution"

.field public static final enum THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum VGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_FIVE_POINT_EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_FOUR_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_TEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum WIDE_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field private static final sParameterTextId:I = 0x7f0f01b6


# instance fields
.field private final mIconId:I

.field private final mPictureRect:Landroid/graphics/Rect;

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 30
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v1, "WIDE_SEVENTEEN_MP"

    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/16 v0, 0x1580

    const/16 v2, 0xc18

    invoke-direct {v5, v7, v7, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f0200

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 34
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v9, "WIDE_THIRTEEN_MP"

    new-instance v13, Landroid/graphics/Rect;

    const/16 v1, 0x1300

    const/16 v2, 0xab0

    invoke-direct {v13, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v10, 0x1

    const/4 v11, -0x1

    const v12, 0x7f0f01ff

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v2, "WIDE_TWELVE_MP"

    new-instance v6, Landroid/graphics/Rect;

    const/16 v8, 0xa20

    const/16 v1, 0x1200

    invoke-direct {v6, v7, v7, v1, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x2

    const/4 v4, -0x1

    const v5, 0x7f0f01fe

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v10, "WIDE_TEN_MP"

    new-instance v14, Landroid/graphics/Rect;

    const/16 v1, 0x1060

    const/16 v2, 0x936

    invoke-direct {v14, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v11, 0x3

    const/4 v12, -0x1

    const v13, 0x7f0f01fd

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_TEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v2, "WIDE_FIVE_POINT_EIGHT_MP"

    new-instance v6, Landroid/graphics/Rect;

    const/16 v1, 0xc80

    const/16 v3, 0x708

    invoke-direct {v6, v7, v7, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x4

    const v5, 0x7f0f0202

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_FIVE_POINT_EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 50
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v10, "WIDE_FOUR_MP"

    new-instance v14, Landroid/graphics/Rect;

    const/16 v1, 0x5b2

    invoke-direct {v14, v7, v7, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v11, 0x5

    const v13, 0x7f0f0201

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_FOUR_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 54
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v2, "NINETEEN_MP"

    new-instance v6, Landroid/graphics/Rect;

    const/16 v9, 0xed0

    const/16 v1, 0x13c0

    invoke-direct {v6, v7, v7, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x6

    const v5, 0x7f0f020a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->NINETEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 58
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v11, "SEVENTEEN_MP"

    new-instance v15, Landroid/graphics/Rect;

    const/16 v1, 0x1280

    const/16 v2, 0xde0

    invoke-direct {v15, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v12, 0x7

    const/4 v13, -0x1

    const v14, 0x7f0f0209

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 62
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v2, "THIRTEEN_MP"

    new-instance v6, Landroid/graphics/Rect;

    const/16 v10, 0xc30

    const/16 v1, 0x1040

    invoke-direct {v6, v7, v7, v1, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v3, 0x8

    const v5, 0x7f0f0208

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 66
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v12, "TWELVE_MP"

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0xbb8

    const/16 v3, 0xfa0

    invoke-direct {v1, v7, v7, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v13, 0x9

    const/4 v14, -0x1

    const v15, 0x7f0f0207

    move-object v11, v0

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 70
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v17, "EIGHT_MP"

    new-instance v1, Landroid/graphics/Rect;

    const/16 v3, 0xcc0

    const/16 v4, 0x990

    invoke-direct {v1, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v18, 0xa

    const/16 v19, -0x1

    const v20, 0x7f0f020c

    move-object/from16 v16, v0

    move-object/from16 v21, v1

    invoke-direct/range {v16 .. v21}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 74
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v12, "FIVE_MP"

    new-instance v1, Landroid/graphics/Rect;

    const/16 v3, 0x798

    invoke-direct {v1, v7, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v13, 0xb

    const v15, 0x7f0f020b

    move-object v11, v0

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 78
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v17, "SQUARE_FOURTEEN_MP"

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7, v7, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v18, 0xc

    const v20, 0x7f0f0204

    move-object/from16 v16, v0

    move-object/from16 v21, v1

    invoke-direct/range {v16 .. v21}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_FOURTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 82
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v12, "SQUARE_TWELVE_MP"

    new-instance v1, Landroid/graphics/Rect;

    const/16 v4, 0xdc8

    invoke-direct {v1, v7, v7, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v13, 0xd

    const v15, 0x7f0f0203

    move-object v11, v0

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v16}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 86
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v17, "SQUARE_NINE_POINT_SEVEN"

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7, v7, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v18, 0xe

    const v20, 0x7f0f0206

    move-object/from16 v16, v0

    move-object/from16 v21, v1

    invoke-direct/range {v16 .. v21}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_NINE_POINT_SEVEN:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 91
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v9, "SQUARE_NINE_MP"

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v7, v7, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v10, 0xf

    const/4 v11, -0x1

    const v12, 0x7f0f0206

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 95
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v15, "SQUARE_FOUR_MP"

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7, v7, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v16, 0x10

    const/16 v17, -0x1

    const v18, 0x7f0f0205

    move-object v14, v0

    move-object/from16 v19, v1

    invoke-direct/range {v14 .. v19}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_FOUR_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 99
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v9, "VGA"

    new-instance v13, Landroid/graphics/Rect;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v13, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v10, 0x11

    const/4 v12, -0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v0, 0x12

    .line 29
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_TEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_FIVE_POINT_EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_FOUR_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->NINETEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SEVENTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_FOURTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_NINE_POINT_SEVEN:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SQUARE_FOUR_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mIconId:I

    .line 128
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mTextId:I

    .line 129
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 5

    .line 259
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    .line 258
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 259
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    .line 260
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultResolution()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v1

    .line 263
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    .line 264
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 265
    invoke-virtual {v4, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultResolution()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object p0
.end method

.method private static getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 6

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 248
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 249
    const-class v5, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-static {v5, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    :cond_0
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object p0

    .line 252
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 10

    .line 189
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_0

    goto :goto_1

    .line 193
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 195
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 197
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 199
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getResolutionOptions()[Ljava/lang/String;

    move-result-object p0

    .line 202
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    .line 205
    array-length v3, p0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p0, v4

    .line 206
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 207
    iget-object v8, v5, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ne v8, v9, :cond_1

    iget-object v8, v5, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    .line 208
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v8, v7, :cond_1

    .line 209
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 217
    :cond_3
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object p0

    .line 190
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getSuperiorAutoOptions(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    return-object p0
.end method

.method private static getSuperiorAutoOptions(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 10

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 225
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 228
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getSuperiorAutoResolutionOptions()[Ljava/lang/String;

    move-result-object p0

    .line 229
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    .line 232
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p0, v4

    .line 233
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 234
    iget-object v8, v5, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ne v8, v9, :cond_0

    iget-object v8, v5, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    .line 235
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v8, v7, :cond_0

    .line 236
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 242
    :cond_2
    new-array p0, v3, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 1

    .line 29
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 1

    .line 29
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 139
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 157
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 147
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f01b6

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPictureRect()Landroid/graphics/Rect;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 167
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 177
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
