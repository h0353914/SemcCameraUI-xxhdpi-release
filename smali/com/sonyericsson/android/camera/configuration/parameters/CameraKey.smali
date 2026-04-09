.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;
.super Ljava/lang/Enum;
.source "CameraKey.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

.field public static final enum BURST_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

.field public static final TAG:Ljava/lang/String; = "CameraKey"

.field public static final enum TAKE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

.field private static final sParameterTextId:I = 0x7f0f00bf


# instance fields
.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    const-string v1, "BURST_SHOT"

    const/4 v2, 0x0

    const v3, 0x7f0f0284

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->BURST_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    .line 17
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    const-string v1, "TAKE_PHOTO"

    const/4 v3, 0x1

    const v4, 0x7f0f0283

    invoke-direct {v0, v1, v3, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->TAKE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    const/4 v0, 0x2

    .line 15
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->BURST_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->TAKE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->mTextId:I

    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;
    .locals 1

    .line 100
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->TAKE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    return-object v0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;
    .locals 2

    .line 92
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/ActionMode;->mIsOneShot:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 93
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    const/4 v0, 0x0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->TAKE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    aput-object v1, p0, v0

    return-object p0

    .line 95
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;
    .locals 1

    .line 15
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;
    .locals 1

    .line 15
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 46
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 54
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f00bf

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 74
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CameraKey;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
