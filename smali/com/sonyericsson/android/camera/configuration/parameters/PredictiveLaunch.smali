.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;
.super Ljava/lang/Enum;
.source "PredictiveLaunch.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

.field private static final TAG:Ljava/lang/String; = "PredictiveLaunch"

.field public static final enum TOUCH_TO_LAUNCH:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

.field public static final enum TOUCH_TO_LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;


# instance fields
.field private final mDoCapture:Z

.field private final mIconId:I

.field private final mSecureValue:Ljava/lang/String;

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 15
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    const-string v1, "TOUCH_TO_LAUNCH"

    const-string v5, "1"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f021c

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->TOUCH_TO_LAUNCH:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    .line 20
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    const-string v9, "TOUCH_TO_LAUNCH_AND_CAPTURE"

    const-string v13, "1"

    const/4 v10, 0x1

    const/4 v11, -0x1

    const v12, 0x7f0f021b

    const/4 v14, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->TOUCH_TO_LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    const-string v2, "OFF"

    const-string v6, "0"

    const/4 v3, 0x2

    const/4 v4, -0x1

    const v5, 0x7f0f0283

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    const/4 v0, 0x3

    .line 14
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->TOUCH_TO_LAUNCH:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->TOUCH_TO_LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->mIconId:I

    .line 57
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->mTextId:I

    .line 58
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->mSecureValue:Ljava/lang/String;

    .line 59
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->mDoCapture:Z

    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;
    .locals 1

    .line 145
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;
    .locals 1

    .line 131
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;
    .locals 1

    .line 14
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;
    .locals 1

    .line 14
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 69
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;)V

    return-void
.end method

.method public doCapture()Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->mDoCapture:Z

    return p0
.end method

.method public getIconId()I
    .locals 0

    .line 87
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 77
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    .line 141
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSecureValue()Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->mSecureValue:Ljava/lang/String;

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 97
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 107
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveLaunch;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
