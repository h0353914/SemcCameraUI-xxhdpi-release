.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;
.super Ljava/lang/Enum;
.source "NightMode.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

.field private static final sParameterTextId:I = 0x7f0f01fb


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;
    .locals 3

    .line 18
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 19
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    const v4, 0x7f0f03bd

    const-string v5, "auto"

    const-string v1, "AUTO"

    const/4 v2, 0x0

    const v3, 0x7f080260

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    const v11, 0x7f0f03bf

    const-string v12, "on"

    const-string v8, "ON"

    const/4 v9, 0x1

    const v10, 0x7f080263

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    const v5, 0x7f0f03be

    const-string v6, "off"

    const-string v2, "OFF"

    const/4 v3, 0x2

    const v4, 0x7f080261

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    .line 18
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->mIconId:I

    .line 47
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->mTextId:I

    .line 48
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;
    .locals 1

    .line 87
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    return-object v0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)[Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;
    .locals 0

    .line 91
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isNightModeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 92
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 94
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;
    .locals 1

    .line 18
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;
    .locals 1

    .line 18
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 53
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 58
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->NIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f01fb

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
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/NightMode;->mValue:Ljava/lang/String;

    return-object p0
.end method
