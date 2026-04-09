.class public final enum Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;
.super Ljava/lang/Enum;
.source "LaunchCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/LaunchCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LaunchTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum ADDONS:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum APP_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum DUAL_CAMERA_EFFECT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum GOOGLE_ASSISTANT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum HISTORY:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum HOME:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum MODE_SELECTOR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum MRU_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum ONE_SHOT_APP:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum OTHER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum POWER_KEY_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum SAME_ACTIVITY:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum SETTINGS_SECURE_LOCK:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum VIDEO_EDITOR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

.field public static final enum VIEWER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 83
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "LOCK_SCREEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 84
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "HW_CAMERA_KEY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 85
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "HW_CAMERA_KEY_LOCK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 86
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "HOME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->HOME:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 87
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "ONE_SHOT_APP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->ONE_SHOT_APP:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 88
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "SETTINGS_SECURE_LOCK"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->SETTINGS_SECURE_LOCK:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 89
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "POWER_KEY_DOUBLE_TAP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->POWER_KEY_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 90
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "ADDONS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->ADDONS:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 91
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "LIFT_TRIGGER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 92
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "GOOGLE_ASSISTANT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->GOOGLE_ASSISTANT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 93
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "APP_SHORTCUT"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->APP_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 95
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "VIEWER"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 96
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "VIDEO_EDITOR"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->VIDEO_EDITOR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 97
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "DUAL_CAMERA_EFFECT"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->DUAL_CAMERA_EFFECT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 98
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "PORTRAIT_SELFIE"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 99
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "OTHER"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 100
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "HISTORY"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->HISTORY:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 102
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "SAME_ACTIVITY"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->SAME_ACTIVITY:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 103
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "MODE_SELECTOR"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    .line 104
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const-string v1, "MRU_SHORTCUT"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const/16 v0, 0x14

    .line 81
    new-array v0, v0, [Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->HOME:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->ONE_SHOT_APP:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->SETTINGS_SECURE_LOCK:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->POWER_KEY_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->ADDONS:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->GOOGLE_ASSISTANT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->APP_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->VIDEO_EDITOR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->DUAL_CAMERA_EFFECT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->HISTORY:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->SAME_ACTIVITY:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->$VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;
    .locals 1

    .line 81
    const-class v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;
    .locals 1

    .line 81
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->$VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;

    return-object v0
.end method
