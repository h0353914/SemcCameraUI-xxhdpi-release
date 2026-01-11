.class public final enum Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;
.super Ljava/lang/Enum;
.source "CameraParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FusionCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

.field public static final enum CLOSE_TO_SUBJECT:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

.field public static final enum LENS_COVERED:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

.field public static final enum LOW_CONTRAST:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

.field public static final enum NORMAL:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;
    .locals 4

    .line 1013
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;->NORMAL:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;->CLOSE_TO_SUBJECT:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;->LENS_COVERED:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;->LOW_CONTRAST:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1014
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;->NORMAL:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    .line 1015
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    const-string v1, "CLOSE_TO_SUBJECT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;->CLOSE_TO_SUBJECT:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    .line 1016
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    const-string v1, "LENS_COVERED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;->LENS_COVERED:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    .line 1017
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    const-string v1, "LOW_CONTRAST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;->LOW_CONTRAST:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    .line 1013
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;->$values()[Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1013
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;
    .locals 1

    .line 1013
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;
    .locals 1

    .line 1013
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    return-object v0
.end method
