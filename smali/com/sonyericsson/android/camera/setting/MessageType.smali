.class public final enum Lcom/sonyericsson/android/camera/setting/MessageType;
.super Ljava/lang/Enum;
.source "MessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/setting/MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum BATTERY_WARNING:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum EXTRA_HINT_STARTUP_COUNT_KEY:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FOURK_STORAGE_EXPLANATORY_FOR_DESTINATION:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum FOURK_STORAGE_EXPLANATORY_FOR_VIDEOSIZE:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum NO_MESSAGE:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum PREDICTIVE_LAUNCH_DESCRIPTION:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum SECURITY_CONTEXTUAL_SETTING:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum SETUP_WIZARD:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum STORAGE_EXPLANATORY:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum STORAGE_EXPLANATORY_FOR_SETTING:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum THERMAL_FORCE_FINISH:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum THERMAL_NOTE:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum THERMAL_WARNING:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum TUTORIAL_EYE_GUIDE:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum TUTORIAL_HAND_SHUTTER:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum TUTORIAL_MANUAL_FUSION:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum TUTORIAL_STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum TUTORIAL_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum TUTORIAL_SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum TUTORIAL_VIDEO_FUSION:Lcom/sonyericsson/android/camera/setting/MessageType;

.field public static final enum VIDEO_HDR_CAUTION:Lcom/sonyericsson/android/camera/setting/MessageType;


# instance fields
.field private final mIsPrefix:Z

.field private final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 11
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "NO_MESSAGE"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->NO_MESSAGE:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 17
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "THERMAL_NOTE"

    const-string v2, "THERMAL_NOTE_DISABLED"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->THERMAL_NOTE:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "FOURK_STORAGE_EXPLANATORY_FOR_VIDEOSIZE"

    const-string v2, "FOURK_STORAGE_EXPLANATORY_FOR_VIDEOSIZE_DISABLED"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->FOURK_STORAGE_EXPLANATORY_FOR_VIDEOSIZE:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "FOURK_STORAGE_EXPLANATORY_FOR_DESTINATION"

    const-string v2, "FOURK_STORAGE_EXPLANATORY_FOR_DESTINATION_DISABLED"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->FOURK_STORAGE_EXPLANATORY_FOR_DESTINATION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "STORAGE_EXPLANATORY"

    const-string v2, "STORAGE_EXPLANATORY_DISABLED"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->STORAGE_EXPLANATORY:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 43
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "STORAGE_EXPLANATORY_FOR_SETTING"

    const-string v2, "STORAGE_EXPLANATORY_FOR_SETTINGS_DISABLED"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->STORAGE_EXPLANATORY_FOR_SETTING:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 49
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "BATTERY_WARNING"

    const-string v2, "BATTERY_WARNING_DISABLED_"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2, v4}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->BATTERY_WARNING:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 56
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "SECURITY_CONTEXTUAL_SETTING"

    const-string v2, "security-dialog-contextual_setting-checked"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->SECURITY_CONTEXTUAL_SETTING:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 62
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "THERMAL_WARNING"

    const-string v2, "THERMAL_WARNING_DISABLED_"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2, v4}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->THERMAL_WARNING:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 68
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "THERMAL_FORCE_FINISH"

    const-string v2, "THERMAL_DISABLED"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->THERMAL_FORCE_FINISH:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 70
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "EXTRA_HINT_STARTUP_COUNT_KEY"

    const-string v2, "EXTRA_HINT_STARTUP_COUNT_KEY"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->EXTRA_HINT_STARTUP_COUNT_KEY:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 75
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "SETUP_WIZARD"

    const-string v2, "do-not-show-again-tutorial-setup-wizard"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->SETUP_WIZARD:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 80
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "TUTORIAL_EYE_GUIDE"

    const-string v2, "do-not-show-again-tutorial-switch-to-eye-guide"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_EYE_GUIDE:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 85
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "TUTORIAL_HAND_SHUTTER"

    const-string v2, "do-not-show-again-tutorial-switch-to-hand-shutter"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_HAND_SHUTTER:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 90
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "TUTORIAL_SUPER_SLOW_MOTION"

    const-string v2, "do-not-show-again-super-slow-motion"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 95
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "TUTORIAL_SUPER_SLOW_MOTION_SHOT"

    const-string v2, "do-not-show-again-super-slow-motion-shot"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 100
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "TUTORIAL_STANDARD_SLOW_MOTION"

    const-string v2, "do-not-show-again-standard-slow-motion"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 105
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "TUTORIAL_MANUAL_FUSION"

    const-string v2, "do-not-show-again-manual-fusion"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_MANUAL_FUSION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 110
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "TUTORIAL_VIDEO_FUSION"

    const-string v2, "do-not-show-again-video-fusion"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_VIDEO_FUSION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 115
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "VIDEO_HDR_CAUTION"

    const-string v2, "do-not-show-again-video-hdr"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->VIDEO_HDR_CAUTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 120
    new-instance v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    const-string v1, "PREDICTIVE_LAUNCH_DESCRIPTION"

    const-string v2, "do-not-show-again-predictive-launch-description"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/sonyericsson/android/camera/setting/MessageType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->PREDICTIVE_LAUNCH_DESCRIPTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    const/16 v0, 0x15

    .line 10
    new-array v0, v0, [Lcom/sonyericsson/android/camera/setting/MessageType;

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->NO_MESSAGE:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->THERMAL_NOTE:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->FOURK_STORAGE_EXPLANATORY_FOR_VIDEOSIZE:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->FOURK_STORAGE_EXPLANATORY_FOR_DESTINATION:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->STORAGE_EXPLANATORY:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->STORAGE_EXPLANATORY_FOR_SETTING:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->BATTERY_WARNING:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->SECURITY_CONTEXTUAL_SETTING:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->THERMAL_WARNING:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->THERMAL_FORCE_FINISH:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->EXTRA_HINT_STARTUP_COUNT_KEY:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->SETUP_WIZARD:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_EYE_GUIDE:Lcom/sonyericsson/android/camera/setting/MessageType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_HAND_SHUTTER:Lcom/sonyericsson/android/camera/setting/MessageType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/setting/MessageType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_MANUAL_FUSION:Lcom/sonyericsson/android/camera/setting/MessageType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_VIDEO_FUSION:Lcom/sonyericsson/android/camera/setting/MessageType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->VIDEO_HDR_CAUTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->PREDICTIVE_LAUNCH_DESCRIPTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->$VALUES:[Lcom/sonyericsson/android/camera/setting/MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 123
    iput-object p3, p0, Lcom/sonyericsson/android/camera/setting/MessageType;->mKey:Ljava/lang/String;

    .line 124
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/setting/MessageType;->mIsPrefix:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/setting/MessageType;
    .locals 1

    .line 10
    const-class v0, Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/setting/MessageType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/setting/MessageType;
    .locals 1

    .line 10
    sget-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->$VALUES:[Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/setting/MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/setting/MessageType;

    return-object v0
.end method


# virtual methods
.method getKey()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MessageType;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method isPrefix()Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/setting/MessageType;->mIsPrefix:Z

    return p0
.end method
