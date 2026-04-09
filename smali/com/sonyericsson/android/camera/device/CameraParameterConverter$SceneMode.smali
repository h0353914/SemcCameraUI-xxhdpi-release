.class public final enum Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;
.super Ljava/lang/Enum;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SceneMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum ACTION:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum BABY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum BACKLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum BACKLIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum BARCODE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum BEACH:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum CANDLELIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum DARK:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum DISH:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum DOCUMENT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum FIREWORKS:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum LANDSCAPE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum NIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum PARTY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum SNOW:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum SPORTS:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum SPOTLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum STEADYPHOTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum SUNSET:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum THEATRE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;


# instance fields
.field private mSceneModeApi1:Ljava/lang/String;

.field private mSceneModeApi2:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 63
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "AUTO"

    const-string v2, "auto"

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 65
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "PORTRAIT"

    const-string v2, "portrait"

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 67
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "NIGHT_PORTRAIT"

    const-string v2, "night-portrait"

    const/4 v4, 0x6

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 69
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "LANDSCAPE"

    const-string v2, "landscape"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v3, v2, v6}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->LANDSCAPE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 71
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "NIGHT"

    const-string v2, "night"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->NIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 73
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "SNOW"

    const-string v2, "snow"

    const/16 v8, 0x9

    invoke-direct {v0, v1, v7, v2, v8}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SNOW:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 75
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "SPORTS"

    const-string v2, "sports"

    const/16 v9, 0xd

    invoke-direct {v0, v1, v4, v2, v9}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SPORTS:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 77
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "PARTY"

    const-string v2, "party"

    const/16 v10, 0xe

    const/4 v11, 0x7

    invoke-direct {v0, v1, v11, v2, v10}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->PARTY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 79
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "BEACH"

    const-string v2, "beach"

    const/16 v12, 0x8

    invoke-direct {v0, v1, v12, v2, v12}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BEACH:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 81
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "FIREWORKS"

    const-string v2, "fireworks"

    const/16 v13, 0xc

    invoke-direct {v0, v1, v8, v2, v13}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->FIREWORKS:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 83
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "ACTION"

    const-string v2, "action"

    const/16 v14, 0xa

    invoke-direct {v0, v1, v14, v2, v5}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->ACTION:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 85
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "THEATRE"

    const-string v2, "theatre"

    const/16 v15, 0xb

    invoke-direct {v0, v1, v15, v2, v11}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->THEATRE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 87
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "SUNSET"

    const-string v2, "sunset"

    invoke-direct {v0, v1, v13, v2, v14}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SUNSET:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 89
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "STEADYPHOTO"

    const-string v2, "steadyphoto"

    invoke-direct {v0, v1, v9, v2, v15}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->STEADYPHOTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 91
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "CANDLELIGHT"

    const-string v2, "candlelight"

    const/16 v9, 0xf

    invoke-direct {v0, v1, v10, v2, v9}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->CANDLELIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 93
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "DOCUMENT"

    const-string v2, "document"

    const/16 v10, 0x65

    invoke-direct {v0, v1, v9, v2, v10}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->DOCUMENT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 95
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "BACKLIGHT"

    const-string v2, "backlight"

    const/16 v10, 0x10

    const/16 v9, 0x66

    invoke-direct {v0, v1, v10, v2, v9}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BACKLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 97
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "BACKLIGHT_PORTRAIT"

    const-string v2, "backlight-portrait"

    const/16 v9, 0x11

    const/16 v13, 0x67

    invoke-direct {v0, v1, v9, v2, v13}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BACKLIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 99
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "DARK"

    const-string v2, "dark"

    const/16 v9, 0x12

    const/16 v13, 0x68

    invoke-direct {v0, v1, v9, v2, v13}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->DARK:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 101
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "BABY"

    const-string v2, "baby"

    const/16 v9, 0x13

    const/16 v13, 0x69

    invoke-direct {v0, v1, v9, v2, v13}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BABY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 103
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "SPOTLIGHT"

    const-string v2, "spot-light"

    const/16 v9, 0x14

    const/16 v13, 0x6a

    invoke-direct {v0, v1, v9, v2, v13}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SPOTLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 105
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "DISH"

    const-string v2, "dish"

    const/16 v9, 0x15

    const/16 v13, 0x6b

    invoke-direct {v0, v1, v9, v2, v13}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->DISH:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 107
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "BARCODE"

    const-string v2, "barcode"

    const/16 v9, 0x16

    invoke-direct {v0, v1, v9, v2, v10}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BARCODE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const/16 v0, 0x17

    .line 62
    new-array v0, v0, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->LANDSCAPE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->NIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SNOW:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SPORTS:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->PARTY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BEACH:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->FIREWORKS:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->ACTION:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->THEATRE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    aput-object v1, v0, v15

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SUNSET:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->STEADYPHOTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->CANDLELIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->DOCUMENT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BACKLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BACKLIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->DARK:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BABY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SPOTLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->DISH:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BARCODE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 115
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi1:Ljava/lang/String;

    .line 116
    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi2:I

    return-void
.end method

.method public static getApi1Value(I)Ljava/lang/String;
    .locals 5

    .line 120
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 121
    iget v4, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi2:I

    if-ne v4, p0, :cond_0

    .line 122
    iget-object p0, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi1:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getApi2Value(Ljava/lang/String;)I
    .locals 5

    .line 129
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 130
    iget-object v4, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi1:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    iget p0, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi2:I

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x64

    return p0
.end method

.method public static getSceneMode(I)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;
    .locals 3

    .line 147
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    move-result-object v0

    const/4 v1, 0x0

    .line 148
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 149
    aget-object v2, v0, v1

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->getSceneValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 150
    aget-object p0, v0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSceneValue()I
    .locals 0

    .line 143
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi2:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;
    .locals 1

    .line 62
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;
    .locals 1

    .line 62
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi1:Ljava/lang/String;

    return-object p0
.end method
