.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;
.super Ljava/lang/Enum;
.source "DistortionCorrection.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

.field private static final sParameterTextId:I


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;
    .locals 2

    .line 19
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 20
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    const v4, 0x7f0f02bc

    const-string v5, "off"

    const-string v1, "OFF"

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    .line 24
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    const v11, 0x7f0f02bd

    const-string v12, "on"

    const-string v8, "ON"

    const/4 v9, 0x1

    const/4 v10, -0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    .line 19
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    .line 31
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 32
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->sParameterTextId:I

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

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->mIconId:I

    .line 52
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->mTextId:I

    .line 53
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;
    .locals 1

    .line 122
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 127
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    return-object p0

    .line 125
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    return-object p0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;
    .locals 1

    .line 112
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;
    .locals 1

    .line 19
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;
    .locals 1

    .line 19
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 58
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;)V

    return-void
.end method

.method public getBooleanValue()Z
    .locals 1

    .line 108
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;

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

    .line 83
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 63
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->LENS_CORRECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    .line 73
    sget p0, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->sParameterTextId:I

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

    .line 93
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DistortionCorrection;->mValue:Ljava/lang/String;

    return-object p0
.end method
