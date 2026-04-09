.class public final enum Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;
.super Ljava/lang/Enum;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AwbMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

.field public static final enum CLOUDY_DAYLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

.field public static final enum DAYLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

.field public static final enum FLUORESCENT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

.field public static final enum INCANDESCENT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;


# instance fields
.field private mAwbModeApi1:Ljava/lang/String;

.field private mAwbModeApi2:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    const-string v1, "OFF"

    const-string v2, "off"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->OFF:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    .line 22
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    const-string v1, "AUTO"

    const-string v2, "auto"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    const-string v1, "INCANDESCENT"

    const-string v2, "incandescent"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->INCANDESCENT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    const-string v1, "FLUORESCENT"

    const-string v2, "fluorescent"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->FLUORESCENT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    const-string v1, "DAYLIGHT"

    const-string v2, "daylight"

    const/4 v7, 0x4

    const/4 v8, 0x5

    invoke-direct {v0, v1, v7, v2, v8}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->DAYLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    const-string v1, "CLOUDY_DAYLIGHT"

    const-string v2, "cloudy-daylight"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v8, v2, v9}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->CLOUDY_DAYLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    .line 20
    new-array v0, v9, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->OFF:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->INCANDESCENT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->FLUORESCENT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->DAYLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->CLOUDY_DAYLIGHT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    aput-object v1, v0, v8

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->mAwbModeApi1:Ljava/lang/String;

    .line 37
    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->mAwbModeApi2:I

    return-void
.end method

.method public static getApi1Value(I)Ljava/lang/String;
    .locals 5

    .line 41
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 42
    iget v4, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->mAwbModeApi2:I

    if-ne v4, p0, :cond_0

    .line 43
    iget-object p0, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->mAwbModeApi1:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getApi2Value(Ljava/lang/String;)I
    .locals 6

    .line 50
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 51
    iget-object v5, v4, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->mAwbModeApi1:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    iget p0, v4, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->mAwbModeApi2:I

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;
    .locals 1

    .line 20
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;
    .locals 1

    .line 20
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AwbMode;

    return-object v0
.end method
