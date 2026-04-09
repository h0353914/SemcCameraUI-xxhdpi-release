.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum ADDON_FW:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum AUTO_POWEROFF:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum CAMERA_NOT_AVAILABLE:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum CAPTURE_OPERATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum CHANGED_SETTING:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum LOWBATTERY_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum PANORAMA:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum PREDICTIVE_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum SELFTIMER_CANCELLED:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum SETTINGS_COMMON:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field public static final enum THERMAL_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 22
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "ADDON_FW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ADDON_FW:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 23
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "THERMAL_MITIGATION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->THERMAL_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 24
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "CAMERA_NOT_AVAILABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->CAMERA_NOT_AVAILABLE:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 25
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "CAPTURE_OPERATION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->CAPTURE_OPERATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 26
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "PANORAMA"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->PANORAMA:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 27
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "RECORDING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 28
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "SETTINGS_PHOTO"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 29
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "SETTINGS_VIDEO"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 30
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "SETTINGS_COMMON"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_COMMON:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 31
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "ALL_SETTINGS_PHOTO"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 32
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "ALL_SETTINGS_VIDEO"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 33
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "CHANGED_SETTING"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->CHANGED_SETTING:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 34
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "SELFTIMER_CANCELLED"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SELFTIMER_CANCELLED:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 35
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "LOWBATTERY_MITIGATION"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->LOWBATTERY_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 36
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "SLOW_MOTION"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 37
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "PREDICTIVE_LAUNCH"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->PREDICTIVE_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 38
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const-string v1, "AUTO_POWEROFF"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->AUTO_POWEROFF:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const/16 v0, 0x11

    .line 21
    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ADDON_FW:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->THERMAL_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->CAMERA_NOT_AVAILABLE:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->CAPTURE_OPERATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->PANORAMA:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_COMMON:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->CHANGED_SETTING:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SELFTIMER_CANCELLED:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->LOWBATTERY_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->PREDICTIVE_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->AUTO_POWEROFF:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    .locals 1

    .line 21
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    .locals 1

    .line 21
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    return-object v0
.end method
