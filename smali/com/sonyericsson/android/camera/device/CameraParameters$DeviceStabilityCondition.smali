.class public final enum Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;
.super Ljava/lang/Enum;
.source "CameraParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceStabilityCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

.field public static final enum MOTION:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

.field public static final enum STABLE:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

.field public static final enum WALK:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;


# instance fields
.field private final mConditionValue:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;
    .locals 4

    .line 845
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->MOTION:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->STABLE:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->WALK:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 846
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    .line 847
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    const-string v1, "MOTION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->MOTION:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    .line 848
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    const-string v1, "STABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->STABLE:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    .line 849
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    const-string v1, "WALK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->WALK:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    .line 845
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->$values()[Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 854
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 855
    iput p3, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->mConditionValue:I

    return-void
.end method

.method public static getCondition(I)Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;
    .locals 3

    .line 863
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->values()[Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    move-result-object v0

    const/4 v1, 0x0

    .line 864
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 865
    aget-object v2, v0, v1

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->getConditionValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 866
    aget-object p0, v0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getConditionValue()I
    .locals 0

    .line 859
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->mConditionValue:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;
    .locals 1

    .line 845
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;
    .locals 1

    .line 845
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    return-object v0
.end method
