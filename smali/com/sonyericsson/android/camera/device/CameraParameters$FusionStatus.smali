.class public final enum Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;
.super Ljava/lang/Enum;
.source "CameraParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FusionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

.field public static final enum FUSION_MAIN:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

.field public static final enum FUSION_SUB_1:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

.field public static final enum MAIN:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

.field public static final enum SUB_1:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

.field public static final enum UNKNOWN:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;
    .locals 5

    .line 999
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->UNKNOWN:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->MAIN:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->SUB_1:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->FUSION_MAIN:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->FUSION_SUB_1:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1000
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->UNKNOWN:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    .line 1001
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    const-string v1, "MAIN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->MAIN:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    .line 1002
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    const-string v1, "SUB_1"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->SUB_1:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    .line 1003
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    const-string v1, "FUSION_MAIN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->FUSION_MAIN:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    .line 1004
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    const-string v1, "FUSION_SUB_1"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->FUSION_SUB_1:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    .line 999
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->$values()[Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 999
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;
    .locals 1

    .line 999
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;
    .locals 1

    .line 999
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    return-object v0
.end method
