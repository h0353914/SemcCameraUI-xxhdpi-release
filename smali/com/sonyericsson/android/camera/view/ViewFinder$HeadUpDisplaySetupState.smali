.class public final enum Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;
.super Ljava/lang/Enum;
.source "ViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeadUpDisplaySetupState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

.field public static final enum PHOTO_BURST_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

.field public static final enum PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

.field public static final enum PHOTO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

.field public static final enum STANDARD_SLOW_MOTION_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

.field public static final enum STANDARD_SLOW_MOTION_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

.field public static final enum SUPER_SLOW_MOTION_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

.field public static final enum SUPER_SLOW_MOTION_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

.field public static final enum SUPER_SLOW_SHOT_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

.field public static final enum VIDEO_PAUSING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

.field public static final enum VIDEO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

.field public static final enum VIDEO_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "PHOTO_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 34
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "PHOTO_CAPTURE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 35
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "PHOTO_BURST_CAPTURE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_BURST_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 36
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "VIDEO_READY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "VIDEO_RECORDING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "VIDEO_PAUSING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_PAUSING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "SUPER_SLOW_MOTION_STANDBY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_MOTION_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "SUPER_SLOW_MOTION_RECORDING"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_MOTION_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 44
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "STANDARD_SLOW_MOTION_STANDBY"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->STANDARD_SLOW_MOTION_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "STANDARD_SLOW_MOTION_RECORDING"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->STANDARD_SLOW_MOTION_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 48
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "SUPER_SLOW_SHOT_STANDBY"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_SHOT_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const/16 v0, 0xb

    .line 32
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_BURST_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_PAUSING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_MOTION_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_MOTION_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->STANDARD_SLOW_MOTION_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->STANDARD_SLOW_MOTION_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_SHOT_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    aput-object v1, v0, v12

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->$VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;
    .locals 1

    .line 32
    const-class v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;
    .locals 1

    .line 32
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->$VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    return-object v0
.end method
