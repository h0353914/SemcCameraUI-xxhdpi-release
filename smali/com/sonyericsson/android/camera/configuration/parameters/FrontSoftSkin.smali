.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;
.super Ljava/lang/Enum;
.source "FrontSoftSkin.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

.field public static final TAG:Ljava/lang/String; = "FrontSoftSkin"

.field private static final sParameterTextId:I = 0x7f0f0440


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:F


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;
    .locals 2

    .line 28
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 29
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    const v4, 0x7f0f03bf

    const/high16 v5, 0x3f000000    # 0.5f

    const-string v1, "ON"

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;-><init>(Ljava/lang/String;IIIF)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    const v11, 0x7f0f03be

    const/4 v12, 0x0

    const-string v8, "OFF"

    const/4 v9, 0x1

    const/4 v10, -0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    .line 28
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIF)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->mIconId:I

    .line 61
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->mTextId:I

    .line 62
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->mValue:F

    return-void
.end method

.method public static getDefaultValue(Landroid/content/Context;)Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;
    .locals 1

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0f04de

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    move-result-object p0

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;
    .locals 3

    .line 125
    iget v0, p0, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->isFront()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object p0, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSoftSkinSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 127
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    filled-new-array {p0, v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    move-result-object p0

    return-object p0

    .line 129
    :cond_0
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    return-object p0

    .line 132
    :cond_1
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;
    .locals 1

    .line 28
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;
    .locals 1

    .line 28
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 67
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;)V

    return-void
.end method

.method public getBooleanValue()Z
    .locals 1

    .line 121
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

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

    .line 96
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 72
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f0440

    return p0
.end method

.method public getLevel(I)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->mValue:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 86
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

    .line 106
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
