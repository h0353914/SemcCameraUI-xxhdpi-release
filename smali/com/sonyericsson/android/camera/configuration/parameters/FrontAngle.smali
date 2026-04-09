.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;
.super Ljava/lang/Enum;
.source "FrontAngle.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

.field public static final enum CROPPED:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

.field public static final enum DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

.field public static final TAG:Ljava/lang/String; = "FrontAngle"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    .line 18
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    const-string v1, "CROPPED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->CROPPED:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    const/4 v0, 0x2

    .line 15
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->CROPPED:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;
    .locals 1

    .line 44
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperWideSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 47
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;
    .locals 1

    .line 15
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;
    .locals 1

    .line 15
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 25
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 30
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
