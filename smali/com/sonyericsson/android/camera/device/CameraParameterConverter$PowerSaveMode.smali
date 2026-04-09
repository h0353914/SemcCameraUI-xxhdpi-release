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
.method static constructor <clinit>()V
    .locals 6

    .line 216
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    const-string v1, "OFF"

    const-string v2, "off"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->OFF:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    .line 218
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    const-string v1, "LOW"

    const-string v2, "low"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->LOW:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    .line 220
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    const-string v1, "ULTRA_LOW"

    const-string v2, "ultra-low"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->ULTRA_LOW:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    const/4 v0, 0x3

    .line 215
    new-array v0, v0, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->OFF:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->LOW:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->ULTRA_LOW:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    aput-object v1, v0, v5

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

    .line 226
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 227
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->mApi1Value:Ljava/lang/String;

    .line 228
    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->mApi2Value:I

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;)I
    .locals 6

    .line 232
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 233
    iget-object v5, v4, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->mApi1Value:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 234
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

    .line 215
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;
    .locals 1

    .line 215
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$PowerSaveMode;

    return-object v0
.end method
