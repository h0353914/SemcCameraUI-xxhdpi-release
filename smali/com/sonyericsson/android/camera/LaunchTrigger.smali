.class public final enum Lcom/sonyericsson/android/camera/LaunchTrigger;
.super Ljava/lang/Enum;
.source "LaunchTrigger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/LaunchTrigger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum ADDONS:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum APP_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum DUAL_CAMERA_EFFECT:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum GOOGLE_ASSISTANT:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum HISTORY:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum HOME:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum MODE_SELECTOR:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum MRU_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum ONE_SHOT_APP:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum OTHER:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum POWER_KEY_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum SAME_ACTIVITY:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum SETTINGS_SECURE_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum VIDEO_EDITOR:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field public static final enum VIEWER:Lcom/sonyericsson/android/camera/LaunchTrigger;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/LaunchTrigger;
    .locals 20

    .line 11
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v2, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v3, Lcom/sonyericsson/android/camera/LaunchTrigger;->HOME:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v4, Lcom/sonyericsson/android/camera/LaunchTrigger;->ONE_SHOT_APP:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v5, Lcom/sonyericsson/android/camera/LaunchTrigger;->SETTINGS_SECURE_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v6, Lcom/sonyericsson/android/camera/LaunchTrigger;->POWER_KEY_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v7, Lcom/sonyericsson/android/camera/LaunchTrigger;->ADDONS:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v8, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v9, Lcom/sonyericsson/android/camera/LaunchTrigger;->GOOGLE_ASSISTANT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v10, Lcom/sonyericsson/android/camera/LaunchTrigger;->APP_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v11, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v12, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIDEO_EDITOR:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v13, Lcom/sonyericsson/android/camera/LaunchTrigger;->DUAL_CAMERA_EFFECT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v14, Lcom/sonyericsson/android/camera/LaunchTrigger;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v15, Lcom/sonyericsson/android/camera/LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v16, Lcom/sonyericsson/android/camera/LaunchTrigger;->HISTORY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v17, Lcom/sonyericsson/android/camera/LaunchTrigger;->SAME_ACTIVITY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v18, Lcom/sonyericsson/android/camera/LaunchTrigger;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v19, Lcom/sonyericsson/android/camera/LaunchTrigger;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    filled-new-array/range {v0 .. v19}, [Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "LOCK_SCREEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 14
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "HW_CAMERA_KEY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 15
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "HW_CAMERA_KEY_LOCK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 16
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "HOME"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->HOME:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 17
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "ONE_SHOT_APP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->ONE_SHOT_APP:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 18
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "SETTINGS_SECURE_LOCK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->SETTINGS_SECURE_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 19
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "POWER_KEY_DOUBLE_TAP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->POWER_KEY_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 20
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "ADDONS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->ADDONS:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "LIFT_TRIGGER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 22
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "GOOGLE_ASSISTANT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->GOOGLE_ASSISTANT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "APP_SHORTCUT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->APP_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "VIEWER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIEWER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "VIDEO_EDITOR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIDEO_EDITOR:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "DUAL_CAMERA_EFFECT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->DUAL_CAMERA_EFFECT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "PORTRAIT_SELFIE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "OTHER"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "HISTORY"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->HISTORY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 32
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "SAME_ACTIVITY"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->SAME_ACTIVITY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "MODE_SELECTOR"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 34
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    const-string v1, "MRU_SHORTCUT"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 11
    invoke-static {}, Lcom/sonyericsson/android/camera/LaunchTrigger;->$values()[Lcom/sonyericsson/android/camera/LaunchTrigger;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->$VALUES:[Lcom/sonyericsson/android/camera/LaunchTrigger;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/LaunchTrigger;
    .locals 1

    .line 11
    const-class v0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/LaunchTrigger;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/LaunchTrigger;
    .locals 1

    .line 11
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->$VALUES:[Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/LaunchTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/LaunchTrigger;

    return-object v0
.end method
