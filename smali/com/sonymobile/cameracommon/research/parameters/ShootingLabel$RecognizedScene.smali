.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;
.super Ljava/lang/Enum;
.source "ShootingLabel.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RecognizedScene"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum ACTION:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum BABY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum BACKLIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum BACKLIGHT_PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum BEACH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum CANDLELIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum DARK:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum DISH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum DOCUMENT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum FIREWORKS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum LANDSCAPE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum MACRO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum NIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum NIGHT_PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum PARTY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum SNOW:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum SPORTS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum SPOTLIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum STEADYPHOTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum SUNSET:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

.field public static final enum THEATRE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 239
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "AUTO"

    const-string v2, "auto"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 240
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "ACTION"

    const-string v2, "action"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->ACTION:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 241
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "PORTRAIT"

    const-string v2, "portrait"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 242
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "LANDSCAPE"

    const-string v2, "landscape"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->LANDSCAPE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 243
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "NIGHT"

    const-string v2, "night"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->NIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 244
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "NIGHT_PORTRAIT"

    const-string v2, "night-portrait"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->NIGHT_PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 245
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "THEATRE"

    const-string v2, "theatre"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->THEATRE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 246
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "BEACH"

    const-string v2, "beach"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BEACH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 247
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "SNOW"

    const-string v2, "snow"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SNOW:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 248
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "SUNSET"

    const-string v2, "sunset"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SUNSET:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 249
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "STEADYPHOTO"

    const-string v2, "steadyphoto"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->STEADYPHOTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 250
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "FIREWORKS"

    const-string v2, "fireworks"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->FIREWORKS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 251
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "SPORTS"

    const-string v2, "sports"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SPORTS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 252
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "PARTY"

    const-string v2, "party"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->PARTY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 253
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "CANDLELIGHT"

    const-string v2, "candlelight"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->CANDLELIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 254
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "DOCUMENT"

    const-string v2, "document"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->DOCUMENT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 255
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "BACKLIGHT"

    const-string v2, "backlight"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BACKLIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 256
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "BACKLIGHT_PORTRAIT"

    const-string v2, "backlight-portrait"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BACKLIGHT_PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 257
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "DARK"

    const-string v2, "dark"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->DARK:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 258
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "BABY"

    const-string v2, "baby"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BABY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 259
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "SPOTLIGHT"

    const-string v2, "spot-light"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SPOTLIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 260
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "DISH"

    const-string v2, "dish"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->DISH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    .line 261
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const-string v1, "MACRO"

    const-string v2, "macro"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->MACRO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const/16 v0, 0x17

    .line 238
    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->ACTION:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->LANDSCAPE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->NIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->NIGHT_PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->THEATRE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BEACH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SNOW:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SUNSET:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->STEADYPHOTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->FIREWORKS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SPORTS:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->PARTY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->CANDLELIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->DOCUMENT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BACKLIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BACKLIGHT_PORTRAIT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->DARK:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->BABY:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->SPOTLIGHT:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->DISH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->MACRO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 266
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 267
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;
    .locals 1

    .line 238
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;
    .locals 1

    .line 238
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDefaultValue()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .locals 0

    .line 277
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    return-object p0
.end method
