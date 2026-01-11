.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;
.super Ljava/lang/Enum;
.source "QrCodeDetection.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

.field private static final sParameterTextId:I = 0x7f0f0209


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;
    .locals 2

    .line 14
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    const v1, 0x7f0f03bf

    const-string v2, "ON"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    .line 18
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    const/4 v1, 0x1

    const v2, 0x7f0f03be

    const-string v3, "OFF"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    .line 14
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->mIconId:I

    .line 40
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->mTextId:I

    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;
    .locals 1

    .line 116
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;
    .locals 1

    .line 102
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;
    .locals 1

    .line 14
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;
    .locals 1

    .line 14
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 50
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;)V

    return-void
.end method

.method public getBooleanValue()Z
    .locals 1

    .line 93
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;

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

    .line 68
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 58
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->QR_CODE_DETECTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f0209

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/QrCodeDetection;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
