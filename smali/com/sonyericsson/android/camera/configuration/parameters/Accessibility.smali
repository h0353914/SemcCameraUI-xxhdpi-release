.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;
.super Ljava/lang/Enum;
.source "Accessibility.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;

.field public static final enum DUMMY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;

.field public static final enum DUMMY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;

.field private static final sParameterTextId:I = 0x7f0f0145


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;
    .locals 2

    .line 17
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;->DUMMY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;->DUMMY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 18
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;

    const-string v1, "DUMMY_ON"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;->DUMMY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;

    const-string v1, "DUMMY_OFF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;->DUMMY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;

    .line 17
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;

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
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;->mIconId:I

    .line 40
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;->mTextId:I

    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;
    .locals 1

    .line 95
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;->DUMMY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;
    .locals 1

    .line 81
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isCtaPackageInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 82
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;

    return-object v0

    .line 84
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;
    .locals 1

    .line 17
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;
    .locals 1

    .line 17
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 100
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 105
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ACCESSIBILITY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f0145

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 62
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Accessibility;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
