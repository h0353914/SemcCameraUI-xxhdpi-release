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

.field public static final enum LOWLIGHT_BACKLIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum NIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum PARTY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

.field public static final enum PEG:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

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
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;
    .locals 25

    .line 64
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->LANDSCAPE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->NIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SNOW:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SPORTS:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v7, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->PARTY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v8, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BEACH:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v9, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->FIREWORKS:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v10, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->ACTION:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v11, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->THEATRE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v12, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SUNSET:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v13, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->STEADYPHOTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v14, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->CANDLELIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v15, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->DOCUMENT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v16, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BACKLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v17, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BACKLIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v18, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->DARK:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v19, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BABY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v20, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SPOTLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v21, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->DISH:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v22, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->PEG:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v23, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BARCODE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    sget-object v24, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->LOWLIGHT_BACKLIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    filled-new-array/range {v0 .. v24}, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 65
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "auto"

    const/16 v2, 0x64

    const-string v3, "AUTO"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 67
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x1

    const-string v3, "portrait"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 69
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "NIGHT_PORTRAIT"

    const/4 v2, 0x2

    const-string v3, "night-portrait"

    const/4 v5, 0x6

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 71
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "LANDSCAPE"

    const-string v3, "landscape"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v4, v3, v6}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->LANDSCAPE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 73
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "NIGHT"

    const-string v3, "night"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v6, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->NIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 75
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "SNOW"

    const-string/jumbo v3, "snow"

    const/16 v6, 0x9

    invoke-direct {v0, v1, v4, v3, v6}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SNOW:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 77
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "SPORTS"

    const-string/jumbo v3, "sports"

    const/16 v4, 0xd

    invoke-direct {v0, v1, v5, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SPORTS:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 79
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "PARTY"

    const/4 v3, 0x7

    const-string v5, "party"

    const/16 v7, 0xe

    invoke-direct {v0, v1, v3, v5, v7}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->PARTY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 81
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const/16 v1, 0x8

    const-string v5, "beach"

    const-string v8, "BEACH"

    invoke-direct {v0, v8, v1, v5, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BEACH:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 83
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "FIREWORKS"

    const-string v5, "fireworks"

    const/16 v8, 0xc

    invoke-direct {v0, v1, v6, v5, v8}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->FIREWORKS:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 85
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "action"

    const-string v5, "ACTION"

    const/16 v6, 0xa

    invoke-direct {v0, v5, v6, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->ACTION:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 87
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string/jumbo v1, "theatre"

    const-string v2, "THEATRE"

    const/16 v5, 0xb

    invoke-direct {v0, v2, v5, v1, v3}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->THEATRE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 89
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "SUNSET"

    const-string/jumbo v2, "sunset"

    invoke-direct {v0, v1, v8, v2, v6}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SUNSET:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 91
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "STEADYPHOTO"

    const-string/jumbo v2, "steadyphoto"

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->STEADYPHOTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 93
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "CANDLELIGHT"

    const-string v2, "candlelight"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->CANDLELIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 95
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "document"

    const/16 v2, 0x65

    const-string v4, "DOCUMENT"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->DOCUMENT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 97
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "backlight"

    const/16 v2, 0x66

    const-string v3, "BACKLIGHT"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BACKLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 99
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "backlight-portrait"

    const/16 v2, 0x67

    const-string v3, "BACKLIGHT_PORTRAIT"

    const/16 v5, 0x11

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BACKLIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 101
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "dark"

    const/16 v2, 0x68

    const-string v3, "DARK"

    const/16 v5, 0x12

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->DARK:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 103
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "baby"

    const/16 v2, 0x69

    const-string v3, "BABY"

    const/16 v5, 0x13

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BABY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 105
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string/jumbo v1, "spot-light"

    const/16 v2, 0x6a

    const-string v3, "SPOTLIGHT"

    const/16 v5, 0x14

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->SPOTLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 107
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "dish"

    const/16 v2, 0x6b

    const-string v3, "DISH"

    const/16 v5, 0x15

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->DISH:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 109
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "pet"

    const/16 v2, 0x6d

    const-string v3, "PEG"

    const/16 v5, 0x16

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->PEG:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 111
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const/16 v1, 0x17

    const-string v2, "barcode"

    const-string v3, "BARCODE"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->BARCODE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 113
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    const-string v1, "lowlight_backlit"

    const/16 v2, 0x71

    const-string v3, "LOWLIGHT_BACKLIT"

    const/16 v4, 0x18

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->LOWLIGHT_BACKLIT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    .line 64
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->$values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    move-result-object v0

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

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi1:Ljava/lang/String;

    .line 122
    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi2:I

    return-void
.end method

.method public static getApi1Value(I)Ljava/lang/String;
    .locals 5

    .line 126
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 127
    iget v4, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi2:I

    if-ne v4, p0, :cond_0

    .line 128
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

    .line 135
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 136
    iget-object v4, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi1:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
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

    .line 153
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    move-result-object v0

    const/4 v1, 0x0

    .line 154
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 155
    aget-object v2, v0, v1

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->getSceneValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 156
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

    .line 149
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi2:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;
    .locals 1

    .line 64
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;
    .locals 1

    .line 64
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->mSceneModeApi1:Ljava/lang/String;

    return-object p0
.end method
