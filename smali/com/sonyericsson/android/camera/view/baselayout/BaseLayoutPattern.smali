.class public final enum Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;
.super Ljava/lang/Enum;
.source "BaseLayoutPattern.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;",
        ">;",
        "Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum BURST_SHOOTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum CLEAR:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum FOCUS_SEARCHING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum HIGH_FRAME_RATE_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum MODE_CHANGING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum PREVIEW:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum PREVIEW_NO_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum SELFTIMER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum SETTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum ZOOMING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum ZOOMING_IN_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

.field public static final enum ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v1, "PREVIEW_NO_RECORDING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW_NO_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v1, "MODE_CHANGING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->MODE_CHANGING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v1, "CLEAR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v1, "ZOOMING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 43
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v1, "ZOOMING_IN_RECORDING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 44
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v1, "ZOOMING_IN_PAUSE_RECORDING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 49
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v1, "FOCUS_SEARCHING"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 53
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v1, "FOCUS_DONE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 57
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v1, "CAPTURE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 63
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v1, "BURST_SHOOTING"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 67
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v1, "RECORDING"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 71
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v1, "SETTING"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SETTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 75
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v1, "SELFTIMER"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SELFTIMER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 79
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v1, "PAUSE_RECORDING"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 83
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v1, "OVERLAY_CONTROL_SEEKING"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    .line 87
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const-string v1, "HIGH_FRAME_RATE_RECORDING_IN_SUPER_SLOW_MOTION"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->HIGH_FRAME_RATE_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const/16 v0, 0x11

    .line 18
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PREVIEW_NO_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->MODE_CHANGING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->ZOOMING_IN_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SETTING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->SELFTIMER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->HIGH_FRAME_RATE_RECORDING_IN_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;
    .locals 1

    .line 18
    const-class v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;
    .locals 1

    .line 18
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    return-object v0
.end method
