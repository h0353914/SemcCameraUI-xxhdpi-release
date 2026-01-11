.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;
.super Ljava/lang/Enum;
.source "BacklightCorrection.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

.field private static final sParameterTextId:I = 0x7f0f046f


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;
    .locals 2

    .line 19
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 20
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    const v4, 0x7f0f03bf

    const-string v5, "auto"

    const-string v1, "AUTO"

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    .line 24
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    const v11, 0x7f0f03be

    const-string v12, "off"

    const-string v8, "OFF"

    const/4 v9, 0x1

    const/4 v10, -0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    .line 19
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

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

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->mIconId:I

    .line 50
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->mTextId:I

    .line 51
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static getDefault(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_0

    .line 115
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    return-object p0

    .line 117
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;
    .locals 0

    .line 110
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;
    .locals 1

    .line 19
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;
    .locals 1

    .line 19
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 56
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;)V

    return-void
.end method

.method public getBooleanValue()Z
    .locals 1

    .line 106
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;

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

    .line 81
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 61
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_BRIGHTNESS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f046f

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 91
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/BacklightCorrection;->mValue:Ljava/lang/String;

    return-object p0
.end method
