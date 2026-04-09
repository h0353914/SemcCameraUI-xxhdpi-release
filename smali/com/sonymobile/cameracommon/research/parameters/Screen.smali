.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Screen;
.super Ljava/lang/Enum;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/Screen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum APPS_UI:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum CREATIVE_EFFECT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum FACE_IN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum FOUR_K_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum MANUAL_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum MANUAL_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum MULTI_CAMERA:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum PANORAMA:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum SOUND_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum SUPERIOR_AUTO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum SUPERIOR_AUTO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum TIMESHIFT_BURST:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum TIMESHIFT_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum VIDEO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field public static final enum VIDEO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 12
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "SUPERIOR_AUTO_MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SUPERIOR_AUTO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 13
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "SUPERIOR_AUTO_FRONT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SUPERIOR_AUTO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 14
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "MANUAL_MAIN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MANUAL_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 15
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "MANUAL_FRONT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MANUAL_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 16
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "VIDEO_MAIN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->VIDEO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 17
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "VIDEO_FRONT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->VIDEO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 18
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "SLOW_MOTION"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 19
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "PANORAMA"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->PANORAMA:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 20
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "TIMESHIFT_BURST"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->TIMESHIFT_BURST:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 21
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "FOUR_K_VIDEO"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->FOUR_K_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 22
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "TIMESHIFT_VIDEO"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->TIMESHIFT_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 23
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "CREATIVE_EFFECT"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->CREATIVE_EFFECT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 24
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "SOUND_PHOTO"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SOUND_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 25
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "MULTI_CAMERA"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MULTI_CAMERA:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 26
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "FACE_IN"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->FACE_IN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .line 27
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const-string v1, "APPS_UI"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/cameracommon/research/parameters/Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->APPS_UI:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const/16 v0, 0x10

    .line 11
    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/Screen;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SUPERIOR_AUTO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SUPERIOR_AUTO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MANUAL_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MANUAL_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->VIDEO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->VIDEO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->PANORAMA:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->TIMESHIFT_BURST:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->FOUR_K_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->TIMESHIFT_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->CREATIVE_EFFECT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SOUND_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MULTI_CAMERA:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->FACE_IN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Screen;->APPS_UI:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Screen;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Screen;
    .locals 1

    .line 11
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Screen;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Screen;
    .locals 1

    .line 11
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Screen;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Screen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Screen;

    return-object v0
.end method
