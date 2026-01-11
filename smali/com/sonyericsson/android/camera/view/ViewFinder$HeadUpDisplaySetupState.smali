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
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;
    .locals 11

    .line 32
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_BURST_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_PAUSING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    sget-object v6, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_MOTION_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_MOTION_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    sget-object v8, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->STANDARD_SLOW_MOTION_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->STANDARD_SLOW_MOTION_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    sget-object v10, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_SHOT_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    filled-new-array/range {v0 .. v10}, [Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "PHOTO_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 34
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "PHOTO_CAPTURE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 35
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "PHOTO_BURST_CAPTURE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->PHOTO_BURST_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 36
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "VIDEO_READY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_READY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "VIDEO_RECORDING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "VIDEO_PAUSING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->VIDEO_PAUSING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "SUPER_SLOW_MOTION_STANDBY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_MOTION_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "SUPER_SLOW_MOTION_RECORDING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_MOTION_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 44
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "STANDARD_SLOW_MOTION_STANDBY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->STANDARD_SLOW_MOTION_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "STANDARD_SLOW_MOTION_RECORDING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->STANDARD_SLOW_MOTION_RECORDING:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 48
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    const-string v1, "SUPER_SLOW_SHOT_STANDBY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->SUPER_SLOW_SHOT_STANDBY:Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    .line 32
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;->$values()[Lcom/sonyericsson/android/camera/view/ViewFinder$HeadUpDisplaySetupState;

    move-result-object v0

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
