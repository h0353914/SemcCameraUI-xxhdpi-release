.class final enum Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;
.super Ljava/lang/Enum;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PowerSaveMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

.field public static final enum LOW:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

.field public static final enum ULTRA_LOW:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;


# instance fields
.field private mApi1Value:Ljava/lang/String;

.field private mApi2Value:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;
    .locals 3

    .line 221
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->OFF:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->LOW:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->ULTRA_LOW:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 222
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    const/4 v1, 0x0

    const-string v2, "off"

    const-string v3, "OFF"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->OFF:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    .line 224
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    const/4 v1, 0x1

    const-string v2, "low"

    const-string v3, "LOW"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->LOW:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    .line 226
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    const/4 v1, 0x2

    const-string/jumbo v2, "ultra-low"

    const-string v3, "ULTRA_LOW"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->ULTRA_LOW:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    .line 221
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->$values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 233
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->mApi1Value:Ljava/lang/String;

    .line 234
    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->mApi2Value:I

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;)I
    .locals 6

    .line 238
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 239
    iget-object v5, v4, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->mApi1Value:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 240
    iget p0, v4, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->mApi2Value:I

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;
    .locals 1

    .line 221
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;
    .locals 1

    .line 221
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    return-object v0
.end method
