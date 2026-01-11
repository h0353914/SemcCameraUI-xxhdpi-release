.class public final enum Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;
.super Ljava/lang/Enum;
.source "LocalResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/research/LocalResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MeasurementKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

.field public static final enum CLOSE_INITIAL_RESPONSE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

.field public static final enum LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

.field public static final enum LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

.field public static final enum LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

.field public static final enum LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

.field public static final enum LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

.field public static final enum LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

.field public static final enum LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

.field public static final enum LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

.field public static final enum SHOT_TO_SHOT_DELAY:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

.field public static final enum VIDEO_RECORDING_STOP_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;
    .locals 11

    .line 894
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    sget-object v5, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    sget-object v6, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    sget-object v7, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    sget-object v8, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->VIDEO_RECORDING_STOP_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    sget-object v9, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->CLOSE_INITIAL_RESPONSE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    sget-object v10, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->SHOT_TO_SHOT_DELAY:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    filled-new-array/range {v0 .. v10}, [Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 895
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    const-string v1, "LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    .line 896
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    const-string v1, "LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    .line 897
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    const-string v1, "LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    .line 898
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    const-string v1, "LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_COLD_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    .line 899
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    const-string v1, "LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_HOME_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    .line 900
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    const-string v1, "LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LOCKSCREEN_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    .line 901
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    const-string v1, "LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_CAMERAKEY_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    .line 902
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    const-string v1, "LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->LAUNCH_WARM_BOOT_FROM_LIFTTRIGGER_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    .line 903
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    const-string v1, "VIDEO_RECORDING_STOP_READY_FOR_USE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->VIDEO_RECORDING_STOP_READY_FOR_USE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    .line 904
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    const-string v1, "CLOSE_INITIAL_RESPONSE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->CLOSE_INITIAL_RESPONSE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    .line 905
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    const-string v1, "SHOT_TO_SHOT_DELAY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->SHOT_TO_SHOT_DELAY:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    .line 894
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->$values()[Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->$VALUES:[Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 894
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;
    .locals 1

    .line 894
    const-class v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;
    .locals 1

    .line 894
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->$VALUES:[Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    return-object v0
.end method
