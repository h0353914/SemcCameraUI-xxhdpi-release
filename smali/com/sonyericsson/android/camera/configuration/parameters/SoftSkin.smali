.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;
.super Ljava/lang/Enum;
.source "SoftSkin.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

.field public static final TAG:Ljava/lang/String; = "SoftSkin"

.field private static final sParameterTextId:I = 0x7f0f0440


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:F


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;
    .locals 2

    .line 26
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 27
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    const v4, 0x7f0f03bf

    const/high16 v5, 0x3f000000    # 0.5f

    const-string v1, "ON"

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;-><init>(Ljava/lang/String;IIIF)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    .line 31
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    const v11, 0x7f0f03be

    const/4 v12, 0x0

    const-string v8, "OFF"

    const/4 v9, 0x1

    const/4 v10, -0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    .line 26
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIF)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->mIconId:I

    .line 59
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->mTextId:I

    .line 60
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->mValue:F

    return-void
.end method

.method public static getDefaultValue(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;
    .locals 0

    .line 139
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0f04de

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    move-result-object p0

    return-object p0

    .line 143
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;
    .locals 2

    .line 123
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    new-array p0, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    return-object p0

    .line 124
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSoftSkinSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 125
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    filled-new-array {p0, v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    move-result-object p0

    return-object p0

    .line 127
    :cond_2
    new-array p0, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;
    .locals 1

    .line 26
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;
    .locals 1

    .line 26
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    return-void
.end method

.method public getBooleanValue()Z
    .locals 1

    .line 119
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getIconId()I
    .locals 0

    .line 94
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 70
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f0440

    return p0
.end method

.method public getLevel(I)I
    .locals 0

    .line 135
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->mValue:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParameterkeyTitleTextId()I
    .locals 0

    const p0, 0x7f0f0441

    return p0
.end method

.method public getTextId()I
    .locals 0

    .line 104
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 114
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
