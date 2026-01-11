.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Facing;
.super Ljava/lang/Enum;
.source "Facing.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Facing;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

.field public static final enum BACK:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

.field public static final enum FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

.field public static final TAG:Ljava/lang/String; = "Facing"

.field private static sOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing; = null

.field private static final sParameterTextId:I = 0x7f0f00e5


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;
    .locals 2

    .line 15
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->BACK:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 16
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    const v4, 0x7f0f0095

    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v1, "BACK"

    const/4 v2, 0x0

    const v3, 0x7f0801ae

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;-><init>(Ljava/lang/String;IIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->BACK:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    .line 20
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    const v11, 0x7f0f0097

    sget-object v12, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v8, "FRONT"

    const/4 v9, 0x1

    const v10, 0x7f0801ae

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;-><init>(Ljava/lang/String;IIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    .line 15
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    const/4 v0, 0x0

    .line 90
    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->sOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->mIconId:I

    .line 38
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->mTextId:I

    .line 39
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->mValue:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-void
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;
    .locals 2

    .line 93
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->sOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    if-nez v0, :cond_1

    .line 94
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->BACK:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->sOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    goto :goto_0

    .line 97
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->BACK:Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    filled-new-array {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->sOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    .line 100
    :cond_1
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->sOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    return-object v0
.end method

.method public static final preload()V
    .locals 0

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Facing;
    .locals 1

    .line 15
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;
    .locals 1

    .line 15
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 53
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Facing;)V

    return-void
.end method

.method public getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->mValue:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0
.end method

.method public getIconId()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 58
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FACING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f00e5

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
